# Built-In Tools — Read, Write, Bash, Grep, Glob

**Status:** resolved

> Pick the smallest built-in tool that matches the job: read, write, search, match paths, or shell out.

## Why I'm asking
Mock exams kept testing whether I could choose the right built-in tool instead of overusing prompts or forcing everything through one path.

## Current best answer
Use `Read` to inspect file contents, `Write` to replace or create whole files, `Bash` to run shell commands, `Grep` to search text, and `Glob` to find files by pattern.

## Evidence for
- `Read` is the right way to pull exact file contents into context.
- `Write` is the simplest path when you already know the full replacement.
- `Bash` is for shell-native actions, not text search or file reads.
- `Grep` finds matching text quickly across files.
- `Glob` finds file paths, which is useful before reading or editing.

## Evidence against
- Using `Bash` for simple text search wastes context and adds noise.
- Using `Write` for partial edits is brittle when a tool can target the change more directly.
- Skipping `Glob` or `Grep` forces broader file reads than necessary.

## Related
- [[concepts/context-degradation]]
- [[concepts/instruction-hierarchy]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official guide anchor for Claude Code tool usage
- [[sources/2026-07-16-mock-exam-1.pdf]] — tool-choice and file-modification questions
- [[sources/2026-07-16-mock-exam-2.pdf]] — exploration, edit fallback, and search questions

## Continue reading
- **Edit fallback** → [[edit-fallback-on-repetitive-files]]
- **Auth exploration** → [[auth-exploration-for-new-joiner]]

