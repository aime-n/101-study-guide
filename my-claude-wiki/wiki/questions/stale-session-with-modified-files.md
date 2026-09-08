# Stale Session With Modified Files

**Status:** resolved

> If files changed overnight, resume with a fresh session and a compact summary.

## Why I'm asking
Mock exam 2 tested whether I could continue an old investigation without blindly trusting stale file reads.

## Current best answer
Start a fresh session, inject a structured summary of the prior work, and read the changed files again so the agent works from current state.

## Evidence for
- Fresh context removes stale tool results.
- The summary preserves the useful architecture understanding.

## Evidence against
- Silent resume keeps outdated file contents alive.
- Re-reading files inside the same stale context is not enough.

## Related
- [[concepts/context-degradation]]
- [[concepts/instruction-hierarchy]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for session state and resumption
- [[sources/2026-07-16-mock-exam-2.pdf]] — question 31 on stale sessions

## Continue reading
- **Context degradation** → [[concepts/context-degradation]]
- **Instruction hierarchy** → [[concepts/instruction-hierarchy]]
