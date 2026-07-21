# Purpose-Specific Extraction Tools

**Status:** resolved

> A generic tool with free-text instructions is too loose for reliable extraction.

## Why I'm asking
Mock exam 2 tested whether I’d keep one catch-all analyzer or split it into tools with clearer contracts.

## Current best answer
Split the generic extraction tool into purpose-specific tools such as `extract_data_points`, `summarize_content`, and `verify_claim_against_source`, each with a defined input/output contract.

## Evidence for
- Free-text instructions put too much semantics in prose.
- Purpose-specific tools reduce re-requests and ambiguity.

## Evidence against
- More prompting doesn’t repair an underspecified tool shape.
- One broad tool invites inconsistent behavior across tasks.

## Related
- [[concepts/prompts-guide-systems-enforce]]
- [[concepts/instruction-hierarchy]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for tool design and output contracts
- [[sources/2026-07-16-mock-exam-2.pdf]] — question 42 on generic vs purpose-specific tools

## Continue reading
- **Prompts vs guarantees** → [[concepts/prompts-guide-systems-enforce]]
- **Instruction hierarchy** → [[concepts/instruction-hierarchy]]
