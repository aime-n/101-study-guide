# Auth Exploration for a New Joiner

**Status:** resolved

> Start from entry points, then trace real code edges outward.

## Why I'm asking
Mock exam 2 tested how to help a new engineer understand a large auth system without wasting context on the whole repo.

## Current best answer
Grep for authentication entry points, read those files, and follow imports and function calls incrementally until the architecture becomes clear.

## Evidence for
- Entry points give the narrowest grounded starting point.
- Incremental tracing fits context limits better than broad reading.

## Evidence against
- Asking the engineer to name the important files offloads the work incorrectly.
- Reading every auth-related file immediately is too broad.

## Related
- [[concepts/context-degradation]]
- [[concepts/instruction-hierarchy]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for codebase exploration
- [[sources/2026-07-16-mock-exam-2.pdf]] — question 50 on auth exploration

## Continue reading
- **Context degradation** → [[concepts/context-degradation]]
- **Instruction hierarchy** → [[concepts/instruction-hierarchy]]
