#!/usr/bin/env bash
set -euo pipefail

# Keep this file between CI runs (for example, as a CI artifact) to make the
# next review incremental. Findings are isolated per PR by default. Override
# it with CLAUDE_FINDINGS_FILE when needed.
pr_number="${PR_NUMBER:-${GITHUB_EVENT_NUMBER:-local}}"
findings_file="${CLAUDE_FINDINGS_FILE:-.claude/cicd-findings-pr-${pr_number}.json}"

# For local use, pipe a diff into the script. In CI, when stdin is empty, use
# the pull request base/head refs instead.
code=''
if [[ ! -t 0 ]]; then
  code=$(cat)
fi

if [[ -z "$code" ]]; then
  base_ref="${PR_BASE_REF:-${GITHUB_BASE_REF:-origin/main}}"
  head_ref="${PR_HEAD_REF:-${GITHUB_SHA:-HEAD}}"

  if ! code=$(git diff --no-ext-diff "${base_ref}...${head_ref}"); then
    echo "error: could not calculate PR diff (${base_ref}...${head_ref})" >&2
    echo "set PR_BASE_REF/PR_HEAD_REF or pipe the diff through stdin" >&2
    exit 2
  fi
fi

if [[ -z "$code" ]]; then
  echo "error: the PR diff is empty" >&2
  exit 2
fi

previous='{"findings":[]}'
if [[ -f "$findings_file" ]]; then
  if jq -e 'type == "object" and (.findings | type == "array")' \
      "$findings_file" >/dev/null 2>&1; then
    previous=$(jq -c . "$findings_file")
  else
    echo "warning: ignoring invalid findings file: $findings_file" >&2
  fi
fi

prompt=$(cat <<EOF
Review the following pull request diff for security issues.

This is an incremental review. The previous run's findings are included below.
Report only:
1. genuinely new issues not present in the previous findings; or
2. previous issues that are still unaddressed in the current code.

Do not report issues that are fully addressed. Keep a stable, deterministic
id for issues that remain unaddressed so they can be matched in later runs.
Return an empty findings array when there are no new or still-unaddressed issues.
Focus on issues introduced by this PR or issues from previous runs that this PR
has not addressed. Do not report unrelated pre-existing issues.

Previous findings:
$previous

Pull request diff:
$code
EOF
)

response_file=$(mktemp)
state_file=$(mktemp)
trap 'rm -f "$response_file" "$state_file"' EXIT

claude --model opus -p "$prompt" \
  --output-format json \
  --json-schema '{
    "type":"object",
    "properties":{
      "findings":{
        "type":"array",
        "items":{
          "type":"object",
          "properties":{
            "id":{"type":"string"},
            "severity":{"type":"string"},
            "title":{"type":"string"},
            "description":{"type":"string"},
            "status":{"type":"string","enum":["new","still_unaddressed"]}
          },
          "required":["id","severity","title","description","status"],
          "additionalProperties":false
        }
      }
    },
    "required":["findings"],
    "additionalProperties":false
  }' >"$response_file"

# Claude Code may wrap structured output in .structured_output when JSON
# output is requested; accept the direct form as well for CLI compatibility.
jq -e '
  if (.structured_output? | type) == "object" then .structured_output
  elif (.findings? | type) == "array" then .
  elif (.result? | type) == "string" then (.result | fromjson)
  else error("Claude response does not contain structured findings")
  end
  | select(.findings | type == "array")
' "$response_file" >"$state_file"

mkdir -p "$(dirname "$findings_file")"
mv "$state_file" "$findings_file"

# Emit only the current incremental findings to the CI log/output.
cat "$findings_file"
