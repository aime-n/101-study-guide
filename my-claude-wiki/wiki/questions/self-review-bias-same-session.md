# Self-Review Bias — Same Session

**Status:** resolved

> A model reviewing its own output in the same context is biased toward approving it.

## Why I'm asking
Mock exam 1 tested why same-session self-review misses bugs that an independent reviewer would catch.

## Current best answer
Use a separate reviewer context or a forked skill/agent so the critique is independent of the original generation context; changing temperature or using more thinking does not remove the bias.

## Evidence for
- The model still carries its own reasoning into the review.
- Independence matters more than extra deliberation.

## Evidence against
- Higher effort does not make the reviewer separate.
- Lower temperature does not change the shared context.

## Related
- [[concepts/prompts-guide-systems-enforce]]
- [[concepts/context-degradation]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for multi-pass review patterns
- [[sources/2026-07-16-mock-exam-1.pdf]] — question 24 on self-review bias

## Continue reading
- **Prompts vs guarantees** → [[concepts/prompts-guide-systems-enforce]]
- **Skills scoping** → [[skills-frontmatter-project-scope]]
