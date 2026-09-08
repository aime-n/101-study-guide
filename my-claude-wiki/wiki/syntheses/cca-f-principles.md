# CCA-F Principles

> The exam is less about adding intelligence and more about choosing the narrowest reliable control point.

## Essay
Across the official guide, the Claude Certification Guide practice exam, CyberSkill’s mock, and the Claude Code cheatsheet, the same pattern keeps repeating: the correct answer is usually the one that fixes the problem closest to its source. If a system is inconsistent, the exam does not want a larger model or a longer prompt by default. It wants a better example set, a tighter schema, a clearer scope boundary, or a structured artifact that preserves state.

That shows up first in prompt design. The practice exam echoes this with few-shot questions: when detailed instructions still produce inconsistent outputs, the next step is not more prose but 2–4 concrete examples that teach the boundary. The point is not merely “be more specific”; it is “move from vague description to operational pattern.”

The same logic applies to configuration. One mock exam scenario separates user-level preferences from project-level conventions and directory-level exceptions. Another distinguishes eager imports from path-scoped rules. The exam is probing whether you understand that instruction placement is itself an architectural decision. Put personal preferences in personal scope, shared rules in shared scope, and local exceptions where they are actually needed. If you get the scope wrong, you create either token waste or broken sharing.

Context management follows the same rule. The official guide and CyberSkill mock warn against treating long sessions like a bigger-memory problem. The failure is not just “too many tokens”; it is losing the specific findings that matter after verbose exploration. That is why scratchpad files and structured summaries keep coming up. A scratchpad is not a convenience note. It is a durable state artifact that prevents the model from drifting back to generic patterns after a long, noisy search session.

The same shift appears in the way the materials frame reliable workflows: keep state structured, hand off only the useful subset, and preserve the decision-critical detail rather than re-sending the full conversation or raw tool output.

The practical takeaway is simple. When you see a Claude workflow fail, ask three questions in order: what is the failure layer, what artifact should hold the state, and what control point can enforce the rule? The right answer is usually smaller, earlier, and more specific than your first instinct.

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor
- [[sources/2026-07-16-mock-exam-1.pdf]] — few-shot, hierarchy, and enforcement scenarios
- [[sources/2026-07-16-mock-exam-2.pdf]] — scratchpads, summaries, and structured handoffs
- [[sources/2026-07-16-claude-cheatsheet.md]] — Claude Code commands and context-management references

## Continue reading
- **Prompts vs. guarantees** → [[concepts/prompts-guide-systems-enforce]]
- **Context degradation** → [[concepts/context-degradation]]
- **Instruction hierarchy** → [[concepts/instruction-hierarchy]]
