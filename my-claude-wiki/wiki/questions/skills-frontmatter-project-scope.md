# Skills Frontmatter — Project Scope

**Status:** resolved

> Shared skills live in project scope, and read-only audit skills should fork context.

## Why I'm asking
Mock exam 1 used a security-audit skill to check whether I understood where project-wide skills belong and how to constrain their tool access.

## Current best answer
Put the skill in `.claude/skills/` with a `SKILL.md` file, keep it project-scoped, and use `allowed-tools` plus `context: fork` to prevent file writes and isolate the analysis output.

## Evidence for
- The team needs the skill on every developer’s machine through version control.
- Read-only tools and forked context match the audit use case.

## Evidence against
- User-scoped skills do not share with the project.
- `.claude/commands/` does not expose the same frontmatter controls.

## Related
- [[concepts/instruction-hierarchy]]
- [[concepts/prompts-guide-systems-enforce]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for skills and frontmatter scoping
- [[sources/2026-07-16-mock-exam-1.pdf]] — question 23 on skills frontmatter

## Continue reading
- **Instruction hierarchy** → [[concepts/instruction-hierarchy]]
- **Self-review bias** → [[self-review-bias-same-session]]
