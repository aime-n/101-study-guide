# Coordinator Handles Simple Summaries

**Status:** resolved

> If the coordinator already has the findings, don’t pay for a second agent to read them again.

## Why I'm asking
Mock exam 2 tested what to do when simple follow-up summaries were being routed through an unnecessary synthesis subagent.

## Current best answer
Let the coordinator answer straightforward summary requests directly from its existing context, and reserve subagent spawning for genuinely complex analysis.

## Evidence for
- The coordinator already has the relevant findings.
- Re-spawning a synthesis agent just re-ingests the same 80K tokens.

## Evidence against
- Prompt caching reduces cost but not the extra orchestration step.
- On-demand fetching adds avoidable round trips.

## Related
- [[concepts/context-degradation]]
- [[concepts/instruction-hierarchy]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for orchestration and summary routing
- [[sources/2026-07-16-mock-exam-2.pdf]] — question 60 on summary latency

## Continue reading
- **Date-aware synthesis** → [[date-aware-synthesis]]
- **Coordinator handoff** → [[coordinator-forwards-subagent-findings]]
