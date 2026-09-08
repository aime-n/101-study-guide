# Prompts Guide, Systems Enforce

> Use prompts for interpretation and phrasing; use code or hooks for guarantees.

## What it is
This principle separates soft guidance from hard enforcement. Prompts work well when you want the model to interpret, explain, or choose a style. They fail when a rule must hold every time, such as compliance checks, access control, or output shape. In those cases, the system needs a deterministic control point: validation code or a schema.

## Why it matters
The exam repeatedly rewards moving enforcement upstream. That means less “tell the model harder” and more “make the system impossible to violate.” It is the difference between persuasive instructions and operational guarantees.

## Key ideas
- Prompting is good for tone, framing, and judgment.
- Deterministic requirements belong in code or schemas.
- If a fix feels like “more prompting,” it is often too late in the stack.

## Related
- [[concepts/instruction-hierarchy]]
- [[concepts/context-degradation]]
- [[entities/claude-certified-architect-foundations]]

## Sources
- [[sources/2026-07-16-mock-exam-1.pdf]] — compliance and hook questions that reward deterministic enforcement

## Continue reading
- **Instruction placement** → [[concepts/instruction-hierarchy]]
- **Context degradation** → [[concepts/context-degradation]]
- **CCA-F exam** → [[entities/claude-certified-architect-foundations]]
