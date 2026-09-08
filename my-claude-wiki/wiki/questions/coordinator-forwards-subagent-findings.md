# Coordinator Forwards Subagent Findings

**Status:** resolved

> Subagents do not share context automatically; the coordinator has to forward the useful output.

## Why I'm asking
Mock exam 2 tested why a synthesis agent can fail with “no findings provided” even after earlier agents ran successfully.

## Current best answer
The coordinator must explicitly include the previous agents’ outputs in the synthesis agent’s prompt.

## Evidence for
- Subagent invocations are isolated by design.
- No findings means nothing was forwarded, not that the context window overflowed.

## Evidence against
- A bigger context window does not create cross-agent flow.
- Shared connections do not imply shared agent memory.

## Related
- [[concepts/context-degradation]]
- [[concepts/instruction-hierarchy]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for subagent coordination and handoff
- [[sources/2026-07-16-mock-exam-2.pdf]] — question 57 on coordinator handoff

## Continue reading
- **Date-aware synthesis** → [[date-aware-synthesis]]
- **Context degradation** → [[concepts/context-degradation]]
