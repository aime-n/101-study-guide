# Structured Refund Errors

**Status:** resolved

> Retryability needs to be explicit, and customer-facing messaging should be pre-shaped.

## Why I'm asking
Mock exam 2 tested how to stop pointless retries when business rules make a refund impossible.

## Current best answer
Return structured errors with a `retryable: false` flag for business-rule failures and include a customer-friendly explanation that Claude can reuse in its reply.

## Evidence for
- The retry flag prevents wasted attempts.
- The reusable explanation improves the customer-facing response.

## Evidence against
- Parsing plain-text error strings is brittle.
- Blanket pre-checks add unnecessary round trips.

## Related
- [[concepts/prompts-guide-systems-enforce]]
- [[concepts/context-degradation]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for structured errors and recovery
- [[sources/2026-07-16-mock-exam-2.pdf]] — question 53 on refund errors

## Continue reading
- **Graceful degradation** → [[graceful-degradation-on-budget]]
- **Prompts vs guarantees** → [[concepts/prompts-guide-systems-enforce]]
