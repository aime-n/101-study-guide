# Edit Fallback on Repetitive Files

**Status:** resolved

> When `Edit` cannot find a unique match, fall back to Read → modify → Write.

## Why I'm asking
Mock exam 2 checked what to do when a repetitive file defeats the `Edit` tool’s unique-match contract.

## Current best answer
Read the file, make the insertion in memory at the right location, and write the full file back.

## Evidence for
- Repetitive patterns make unique-match editing brittle.
- Read/modify/Write gives you control over exact placement.

## Evidence against
- Appending to the end changes the file structure.
- `replace_all` can mutate unintended matches.

## Related
- [[concepts/prompts-guide-systems-enforce]]
- [[concepts/context-degradation]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for edit and file-modification workflows
- [[sources/2026-07-16-mock-exam-2.pdf]] — question 18 on repetitive-file editing

## Continue reading
- **Context management** → [[concepts/context-degradation]]
- **Prompt vs system fixes** → [[concepts/prompts-guide-systems-enforce]]
