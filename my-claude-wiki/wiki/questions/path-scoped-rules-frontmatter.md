# Path-Scoped Rules — Frontmatter

**Status:** resolved

> If a rule should only load for matching files, put the scope in frontmatter.

## Why I'm asking
Mock exam 1 checked whether I understood that path-scoped convention files should not load everywhere just because they live in `.claude/rules/`.

## Current best answer
Add YAML frontmatter with a `paths` field to the rule file so it only loads for matching files; do not rely on session restarts or `fork_session` for conditional loading.

## Evidence for
- Path frontmatter is the mechanism that makes rule loading conditional.
- Eager imports and a fresh session do not solve scope leakage.

## Evidence against
- Restarting the session does not change file-loading semantics.
- `fork_session` preserves the same loading rules.

## Related
- [[concepts/instruction-hierarchy]]
- [[entities/claude-certified-architect-foundations]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for path-specific rules
- [[sources/2026-07-16-mock-exam-1.pdf]] — question 9 on `.claude/rules/` loading

## Continue reading
- **Configuration hierarchy** → [[configuration-hierarchy-project-scope]]
- **Instruction hierarchy** → [[concepts/instruction-hierarchy]]
