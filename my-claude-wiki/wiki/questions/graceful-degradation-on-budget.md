# Graceful Degradation on Budget

**Status:** resolved

> When the budget is exhausted mid-task, preserve state and hand off cleanly.

## Why I'm asking
Mock exam 1 tested what to do when a support loop runs out of tokens after the investigation is already underway.

## Current best answer
Checkpoint the investigation, preserve the useful findings, and resume or hand off in a new bounded session rather than shrinking the model quality or hoping cheaper inference fixes the architecture.

## Evidence for
- The failure is architectural state loss, not model quality.
- A graceful checkpoint keeps the work product intact.

## Evidence against
- Lowering model quality does not solve the loop design.
- Prompt trimming trades away signal instead of preserving it.

## Related
- [[concepts/context-degradation]]
- [[concepts/prompts-guide-systems-enforce]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for workflow enforcement and handoff
- [[sources/2026-07-16-mock-exam-1.pdf]] — question 18 on budget exhaustion

## Continue reading
- **Context degradation** → [[concepts/context-degradation]]
- **Prompt vs system fixes** → [[concepts/prompts-guide-systems-enforce]]
