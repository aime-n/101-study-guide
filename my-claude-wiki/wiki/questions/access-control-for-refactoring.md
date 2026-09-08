# Access Control for Refactoring

**Status:** resolved

> File-level safety needs a mechanism, not a nicer prompt.

## Why I'm asking
Mock exam 1 asked how to keep Claude Code away from destructive paths while still letting it refactor productively.

## Current best answer
Use scoped tool permissions and restricted access at the mechanism level; plan mode and better prose do not provide file-level access control.

## Evidence for
- Plan mode is for strategy, not hard file gates.
- Prompt wording cannot guarantee that the model avoids a directory.

## Evidence against
- “Just be more precise” still leaves the same tools available.
- Plan mode still allows execution once the task starts.

## Related
- [[concepts/prompts-guide-systems-enforce]]
- [[concepts/instruction-hierarchy]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for permissions and access control
- [[sources/2026-07-16-mock-exam-1.pdf]] — question 12 on permissions and allowed tools

## Continue reading
- **Prompts vs guarantees** → [[concepts/prompts-guide-systems-enforce]]
- **Skills scoping** → [[skills-frontmatter-project-scope]]
