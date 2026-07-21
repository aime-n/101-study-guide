# Date-Aware Synthesis

**Status:** resolved

> Trend interpretation depends on dates, not just raw values.

## Why I'm asking
Mock exam 2 tested whether the synthesis layer could tell growth over time from a contradiction.

## Current best answer
Require subagents to include publication or data-collection dates in their structured outputs so synthesis can reason about temporal change.

## Evidence for
- Dates let the synthesizer compare values across time.
- Without dates, newer and older facts look contradictory.

## Evidence against
- Dropping older data destroys trend information.
- Prompting the synthesizer to “prefer newer data” is too vague.

## Related
- [[concepts/context-degradation]]
- [[concepts/prompts-guide-systems-enforce]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for temporal reasoning in synthesis
- [[sources/2026-07-16-mock-exam-2.pdf]] — question 59 on temporal differences

## Continue reading
- **Coordinator handoff** → [[coordinator-forwards-subagent-findings]]
- **Structured summaries** → [[structured-refund-errors]]
