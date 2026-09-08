# Fork Session for Testing Branches

**Status:** resolved

> Forking is the clean way to explore two independent strategies from one baseline.

## Why I'm asking
Mock exam 2 tested how to compare two implementation strategies without letting one bias the other.

## Current best answer
Use `fork_session` to create separate branches for each testing strategy so both inherit the same analysis baseline without contaminating one another.

## Evidence for
- Forking preserves the original context.
- Each strategy gets its own independent reasoning path.

## Evidence against
- Sequential work biases the second strategy.
- Two fresh sessions re-do the same upstream analysis.

## Related
- [[concepts/context-degradation]]
- [[concepts/instruction-hierarchy]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for branching and divergent exploration
- [[sources/2026-07-16-mock-exam-2.pdf]] — question 49 on testing-strategy branches

## Continue reading
- **Context degradation** → [[concepts/context-degradation]]
- **Stale sessions** → [[stale-session-with-modified-files]]
