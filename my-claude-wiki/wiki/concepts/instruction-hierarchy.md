# Instruction Hierarchy

> Put each instruction at the narrowest scope that still reaches every session that needs it.

## What it is
Claude Code uses layered configuration: personal settings live at user scope, shared project rules live in the repository, and path-specific rules live in directory-scoped files or rules with frontmatter. The core idea is simple: universal preferences should not leak into every project, and project rules should not be stranded in a personal file that teammates never see.

## Why it matters
The exam turns configuration into an architecture problem. The right answer is usually the one that preserves scope, shares the right rules with the right people, and avoids token waste from loading irrelevant instructions everywhere.

## Key ideas
- User scope is for personal preferences.
- Project scope is for shared team or client conventions.
- Path-scoped rules handle local exceptions and subsystem-specific behavior.
- Imported files are organization tools, not conditional loaders.

## Related
- [[concepts/prompts-guide-systems-enforce]]
- [[concepts/context-degradation]]
- [[entities/claude-certified-architect-foundations]]

## Sources
- [[sources/2026-07-16-mock-exam-1.pdf]] — hierarchy and path-scoping questions
- [[sources/2026-07-16-claude-cheatsheet.md]] — command and memory references across scopes

## Continue reading
- **Prompts vs. guarantees** → [[concepts/prompts-guide-systems-enforce]]
- **Context degradation** → [[concepts/context-degradation]]
- **CCA-F exam** → [[entities/claude-certified-architect-foundations]]
