# Configuration Hierarchy — Project Scope

**Status:** resolved

> Shared standards belong in project scope; personal preferences belong in user scope.

## Why I'm asking
Mock exam 1 used a team working across many client projects to test whether I could place configuration at the right level instead of mixing everything into one file.

## Current best answer
Keep personal editor preferences in `~/.claude/CLAUDE.md`, keep shared firm/client standards in the project repository, and use directory-level or path-scoped rules for subsystem exceptions.

## Evidence for
- Project-scoped config is shareable through version control.
- User-scoped config is private and should not carry team standards.
- Path-level rules are the right place for local exceptions.

## Evidence against
- Putting firm-wide rules in user scope breaks sharing.
- Collapsing all layers into one file makes the hierarchy useless.

## Related
- [[concepts/instruction-hierarchy]]
- [[entities/claude-certified-architect-foundations]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for configuration hierarchy
- [[sources/2026-07-16-mock-exam-1.pdf]] — question 2 on configuration hierarchy

## Continue reading
- **Path-scoped rules** → [[path-scoped-rules-frontmatter]]
- **Instruction hierarchy** → [[concepts/instruction-hierarchy]]
