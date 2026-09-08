# Context Degradation

> Long exploration sessions fail by losing specific findings, not just by filling the token window.

## What it is
Context degradation is the gradual loss of precision that happens when verbose exploration output crowds earlier discoveries out of attention. The model starts falling back to generic patterns instead of the concrete classes, paths, and dependency chains it found earlier. The problem is not purely token count; it is preserving the right state in a noisy session.

## Why it matters
For codebase exploration, the fix is to externalize state. Scratchpad files, structured summaries, and resume manifests preserve the facts that matter while keeping the live conversation lean. That makes later reasoning stable even after many searches, file reads, or subagent handoffs.

## Key ideas
- Verbose discovery output can bury earlier findings.
- A bigger context window delays the problem but does not remove it.
- Scratchpad files make key findings durable outside the conversation.
- Structured summaries and manifests help resume without re-deriving work.

## Related
- [[concepts/prompts-guide-systems-enforce]]
- [[concepts/instruction-hierarchy]]
- [[entities/claude-certified-architect-foundations]]

## Sources
- [[sources/2026-07-16-mock-exam-2.pdf]] — scratchpad, structured report, and resume-state questions

## Continue reading
- **Instruction placement** → [[concepts/instruction-hierarchy]]
- **CCA-F exam** → [[entities/claude-certified-architect-foundations]]
