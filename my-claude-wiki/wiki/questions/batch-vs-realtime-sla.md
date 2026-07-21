# Batch vs Real-Time SLA

**Status:** resolved

> Route bulk work to batch and urgent work to real-time.

## Why I'm asking
Mock exam 2 tested whether I’d match document urgency to the right API tier instead of forcing everything through one path.

## Current best answer
Send standard monthly reports through the `Batch API` and send urgent exception reports through the real-time Messages API.

## Evidence for
- Batch is cheaper for non-urgent bulk work.
- Real-time processing is the only way to meet a short alerting SLA.

## Evidence against
- One batch path cannot guarantee a 30-minute alert window.
- Real-time for everything discards the cost advantage.

## Related
- [[concepts/context-degradation]]
- [[entities/claude-certified-architect-foundations]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for batch vs real-time architecture
- [[sources/2026-07-16-mock-exam-2.pdf]] — question 16 on batch vs real-time

## Continue reading
- **Structured extraction** → [[purpose-specific-extraction-tools]]
- **Graceful degradation** → [[graceful-degradation-on-budget]]
