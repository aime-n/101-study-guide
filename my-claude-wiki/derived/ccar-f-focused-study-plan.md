# CCAR-F Focused Study Plan

## Notes from the annotations
- Q2 and Q9 from mock exam 1 are marked as understood in the notes, so treat them as light reinforcement rather than core gaps.
- Q16 from mock exam 2 is explicitly marked as an attention slip, so do not over-weight it as a theory miss.
- Q23 from mock exam 1 is mainly about `context: fork` and output isolation; the scope part is lower-confidence.
- Q24 from mock exam 1 looks partly like a wording/read issue; keep the concept, but do not over-interpret the miss.

## Certification guide mapping

| Weak area                                                    | Certification guide topic                                                                                                                                                    | Questions                         |
| ------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| Context durability, progressive summarization, and branching | Lesson 1.7: Session State and Resumption; Lesson 1.4: Workflow-Enforcement-Handoff / Graceful-Degradation; Lesson 1.2: Multi-Agent Orchestration                             | Q18, Q23, Q31, Q45, Q49, Q57, Q60 |
| Scope and enforcement boundaries                             | Lesson 3.1: CLAUDE.md Hierarchy and Scoping; Lesson 3.3: Path-Specific Rules; Lesson 3.4: Permissions-Security / Allowed-Tools; Lesson 3.2: Custom Slash Commands and Skills | Q2, Q9, Q12, Q23                  |
| Human handoff and reviewer independence                      | Lesson 5.2: Escalation and Ambiguity Resolution; Lesson 4.6: Multi-Pass-Review / Self-Review-Bias                                                                            | Q20, Q24                          |
| Tool contracts and structured outputs                        | Tool design and output contracts; structured error handling and recovery                                                                                                     | Q42, Q53                          |
| Exploration strategy in large codebases                      | Codebase exploration / entry-point tracing                                                                                                                                   | Q50                               |

## Study plan by guide lesson

### Lesson 1.7: Session State and Resumption
Focus: preserve useful context without carrying stale or overgrown state forward.
- Prioritize Q31, Q45, Q49, Q57, and Q60.
- Core contrast: resume with a compact summary or fork when the work branches; start fresh when file state changed underneath you.
- Self-check: when do you keep the transcript, when do you inject a summary, and when do you fork?

### Lesson 1.4: Workflow-Enforcement-Handoff / Graceful-Degradation
Focus: keep the task moving when a budget or backend limit cuts the flow short.
- Prioritize Q18.
- Core contrast: degrade gracefully and preserve the work product, rather than lowering model quality or dropping the investigation.
- Self-check: if the task cannot finish in the current budget, what artifact should survive the handoff?

### Lesson 1.2: Multi-Agent Orchestration
Focus: coordinator routing should minimize avoidable delegation.
- Prioritize Q57 and Q60.
- Core contrast: forward findings explicitly when another agent needs them; let the coordinator answer simple summaries itself.
- Self-check: what should the coordinator do before spawning a synthesis agent, and what should it do for a trivial follow-up summary?

### Lesson 3.1: CLAUDE.md Hierarchy and Scoping
Focus: place instructions at the narrowest layer that still shares or enforces them correctly.
- Prioritize Q2.
- Core contrast: user scope for personal preferences, project scope for shared repo conventions, managed policy for non-overridable rules.
- Self-check: which layer handles cross-project personal defaults, and which layer handles team-shared repo conventions?

### Lesson 3.3: Path-Specific Rules
Focus: make rules conditional with frontmatter, not with session tricks.
- Prioritize Q9.
- Core contrast: a rule file in `.claude/rules/` loads broadly unless its paths frontmatter narrows it.
- Self-check: what makes a rule load only for matching files, and why is session restarting irrelevant?

### Lesson 3.4: Permissions-Security / Allowed-Tools
Focus: enforce file-level safety with mechanism-level constraints.
- Prioritize Q12.
- Core contrast: scoped tool permissions block destructive access; plan mode and better prose do not.
- Self-check: what actually prevents a refactor from touching a directory, and what only asks nicely?

### Lesson 3.2: Custom Slash Commands and Skills
Focus: project-scoped skills belong in the repo, with tool restrictions in frontmatter.
- Prioritize Q23.
- Core contrast: share the skill through version control, then limit it with `allowed-tools` and `context: fork`.
- Self-check: where should a shared read-only audit skill live, and what keeps its analysis output isolated?

### Lesson 4.6: Multi-Pass-Review / Self-Review-Bias
Focus: self-review in the same context is not independent review.
- Prioritize Q24.
- Core contrast: use a separate reviewer context; temperature or extra thinking does not remove bias.
- Self-check: what makes a reviewer independent, and why does same-session critique miss bugs?

### Tool-contract lessons
Focus: explicit contracts beat free-text instructions when the system must be deterministic.
- Prioritize Q42 and Q53.
- Core contrast: split generic tools into purpose-specific ones; return structured errors with retryability and customer-facing text.
- Self-check: when does a free-text tool become too loose, and what field tells Claude not to retry?

### Large-codebase exploration
Focus: start from entry points and trace outward.
- Prioritize Q50.
- Core contrast: grounded traversal beats broad file hunting when the codebase is large.
- Self-check: what is the first thing to search for in auth, and why should you not scan by keyword alone?

## Study order
1. Context durability, progressive summarization, and branching
2. Scope and enforcement boundaries
3. Human handoff and reviewer independence
4. Tool contracts and structured outputs
5. Exploration strategy in large codebases

## 1) Highest-impact weak areas

**Context durability, progressive summarization, and branching**  
Priority label: repeated in this quiz (Q18, Q23, Q31, Q45, Q49, Q57, Q60)  
Rationale: the exam keeps testing whether you preserve useful context without carrying stale or overgrown state forward.  
Evidence:
- Q18: chose cheaper-model or prompt-trimming style fixes for a budget-exhausted investigation instead of preserving the work and handing off cleanly.
- Q23: missed that the output-heavy analysis case calls for `context: fork` to isolate the work.
- Q31: chose silent resume after files changed overnight instead of a fresh session plus summary injection.
- Q45: chose a restart-heavy path instead of resuming the subagent with the prior transcript plus the rename delta.
- Q49: chose sequential or fresh-session exploration instead of `fork_session` for two independent strategies.
- Q57: chose same-thread continuation or manual synthesis instead of summarizing the learned context and spawning a fresh subagent for physics.
- Q60: chose re-spawning the synthesis subagent or caching summaries instead of letting the coordinator answer simple follow-ups directly.
Underlying confusion: conflates “keep the work” with “keep the exact same context”; the exam wants the smallest context reset that preserves the useful signal.

**Scope and enforcement boundaries**  
Priority label: repeated in this quiz (Q2, Q9, Q12, Q23)  
Rationale: where a rule lives determines whether it is shared, conditional, or actually enforced.  
Evidence:
- Q2: chose the project/user configuration mix-up for firm-wide standards vs personal preferences.
- Q9: chose a session reset / fork-style answer instead of the path-scoped rule loading fix.
- Q12: chose plan mode or wording changes for file-level safety instead of scoped tool permissions.
- Q23: the notes say the scope part was already understood, but the answer still missed the project-scoped skill plus `context: fork` pairing.
Underlying confusion: conflates prompt guidance with mechanism-level enforcement, and conflates personal scope, project scope, and conditional loading.

**Human handoff and reviewer independence**  
Priority label: repeated in this quiz (Q20, Q24)  
Rationale: when the model hits friction with a user or with its own output, the fix is to change the context arrangement, not to talk more confidently.  
Evidence:
- Q20: chose immediate escalation or capability-listing instead of acknowledging the frustration and asking one targeted question first.
- Q24: chose same-model review tweaks instead of independent reviewer context.
Underlying confusion: conflates urgency with certainty, and conflates more deliberation with independent review.

**Tool contracts and structured outputs**  
Priority label: repeated in this quiz (Q42, Q53)  
Rationale: the exam prefers explicit structure when downstream behavior must be deterministic.  
Evidence:
- Q42: chose one generic analyzer with free-text instructions instead of purpose-specific tools with defined I/O contracts.
- Q53: chose plain-text errors or retry parsing instead of structured errors with `retryable: false` and a ready-made customer explanation.
Underlying confusion: conflates “stronger prompting” with “reliable contracts.”

**Exploration strategy in large codebases**  
Priority label: high-leverage single miss (Q50)  
Rationale: the exam wants grounded traversal from entry points, not broad file hunting or asking the user to guess the right files.  
Evidence:
- Q50: chose broad file hunting or offloaded file selection to the newcomer instead of starting at auth entry points and tracing outward.
Underlying confusion: conflates “more search” with “more understanding”; the right move is grounded, incremental tracing.

## 2) Recurring patterns

- Context continuity vs reset: Q18, Q23, Q31, Q45, Q49, Q57, and Q60 test when to preserve context, when to re-summarize it, and when to fork it.
- Scope vs enforcement: Q2, Q9, Q12, and Q23 test whether a rule is personal, project-shared, conditional, or mechanically enforced.
- Structure vs prose: Q42 and Q53 test whether explicit contracts beat free-text instructions; Q16 is a lower-confidence SLA/math slip, not a core theory miss.
- Absorb vs delegate: Q20, Q57, and Q60 test whether the coordinator should answer directly before spawning another agent.
- Grounded search vs broad search: Q50 rewards starting from entry points and following real code edges.

## 3) Missed questions (conceptual summary)

### Mock Exam 1

#### Question 2 (Domain: 3 / Subdomain: configuration hierarchy)
Context: A consultancy needs personal preferences, firm-wide standards, client conventions, and subsystem rules placed at the right config layers.
- Topic: scope placement. Underlying confusion: chose the project/user mix-up; missed that personal settings belong in user scope while shared team standards belong in project scope.
- Topic: hierarchy thinking. Underlying confusion: conflates “shared across many projects” with “stored in one personal file”; the exam wants breadth and enforceability separated.

#### Question 9 (Domain: 3 / Subdomain: path-scoped rules)
Context: `.claude/rules/testing.md` is loading for API handlers even though it should only apply to test files.
- Topic: conditional loading. Underlying confusion: chose a session reset / fork-style answer; missed that the fix is path-scoped frontmatter, not a different session shape.
- Topic: rule placement. Underlying confusion: conflates “file lives in `.claude/rules/`” with “file loads everywhere”; the path filter is what makes loading conditional.

#### Question 12 (Domain: 3 / Subdomain: allowed tools)
Context: A refactor must not be allowed to touch production config files or the migration directory.
- Topic: file-level safety. Underlying confusion: chose plan mode or wording changes; missed that safety needs scoped tool permissions, not better prose.
- Topic: guarantees vs advice. Underlying confusion: conflates “the agent is asked nicely” with “the agent is mechanically blocked.”

#### Question 18 (Domain: 1 / Subdomain: graceful degradation)
Context: A billing investigation hits a token budget mid-task after data gathering is already underway.
- Topic: recovery under constraint. Underlying confusion: chose cheaper-model or prompt-trimming style fixes; missed that the right move is to preserve the investigation and hand off cleanly.
- Topic: architectural vs local fixes. Underlying confusion: conflates “use fewer tokens next time” with “preserve the work already done.”

#### Question 23 (Domain: 3 / Subdomain: skills frontmatter)
Context: A read-only security-audit skill must be available to every developer on the project.
- Topic: context isolation. Underlying confusion: the notes say the scope part was already understood; the real miss was not pairing the project-scoped skill with `context: fork` for large analysis output.
- Topic: tool restriction. Underlying confusion: conflates skill location with capability control; `allowed-tools` belongs in the skill frontmatter.

#### Question 24 (Domain: 4 / Subdomain: self-review bias)
Context: The same model instance critiques its own output immediately after generation in the same conversation.
- Topic: reviewer independence. Underlying confusion: chose same-model review tweaks or temperature changes; missed that the reviewer must not share the same reasoning context.
- Topic: bias source. Underlying confusion: conflates “think harder” with “be independent”; the failure is shared context, not low effort.

### Mock Exam 2

#### Question 16 (Domain: 5 / Subdomain: batch vs real-time SLA)
Context: Documents arrive continuously and structured extraction is needed under a 30-hour SLA with 99.9% reliability.
- Topic: latency budgeting. Underlying confusion: chose a batch cadence that was too loose for the SLA; missed that worst-case queueing time must leave safety margin under the limit.
- Topic: cost vs SLA. Underlying confusion: conflates “batch is cheaper” with “batch is always acceptable”; the processing window must fit the service target first.
- Note: the annotation marks this as an attention slip, so it should stay low priority.

#### Question 18 (Domain: 3 / Subdomain: progressive summarization)
Context: A long multi-issue customer conversation is nearing the context limit, but earlier issues still need to stay reachable.
- Topic: compression strategy. Underlying confusion: chose a flat sliding window or on-demand refetch; missed that stable earlier turns should be summarized while the active issue stays verbatim.
- Topic: context preservation. Underlying confusion: conflates “keep everything raw” with “keep everything available”; the correct move is to compress resolved threads, not drop them.

#### Question 20 (Domain: 5 / Subdomain: escalation and ambiguity)
Context: A frustrated customer asks for a human before the agent has any tool context.
- Topic: first-contact handling. Underlying confusion: chose immediate escalation or capability-listing; missed that one acknowledging question can still recover the issue.
- Topic: handoff timing. Underlying confusion: conflates urgency with certainty; the agent should not hand off blind if a minimal clarification can help.

#### Question 31 (Domain: 1 / Subdomain: session state and resumption)
Context: A session is still valid, but some files read yesterday were modified overnight.
- Topic: stale state. Underlying confusion: chose silent resume; missed that changed files require a fresh session plus a compact summary.
- Topic: continuity vs correctness. Underlying confusion: conflates “keep the thread alive” with “keep stale reads alive.”

#### Question 42 (Domain: 2 / Subdomain: tool design)
Context: One generic document-analysis tool takes free-text instructions, but the results often come back in the wrong shape.
- Topic: contract design. Underlying confusion: chose a single broad analyzer; missed that different tasks need purpose-specific tools with defined outputs.
- Topic: prose limits. Underlying confusion: conflates “one flexible tool” with “one reliable tool”; free-text instructions are too loose for consistent extraction.

#### Question 45 (Domain: 1 / Subdomain: session recovery after renames)
Context: A long exploration should continue after two utility functions were renamed while the engineer was away.
- Topic: delta update. Underlying confusion: chose a restart-heavy path; missed that the right move is to reuse the transcript and add the rename delta.
- Topic: preservation. Underlying confusion: conflates “rename invalidates everything” with “rename only changes the symbol names.”

#### Question 49 (Domain: 1 / Subdomain: branching exploration)
Context: Two testing strategies need independent development from the same analysis baseline.
- Topic: branching. Underlying confusion: chose sequential or fresh-session exploration; missed that `fork_session` gives each strategy a clean branch from the same baseline.
- Topic: contamination control. Underlying confusion: conflates “parallel thinking” with “duplicated work”; the fork preserves context without cross-contamination.

#### Question 50 (Domain: 2 / Subdomain: large-codebase exploration)
Context: A new joiner wants to understand auth/authorization architecture in an 800+ file codebase.
- Topic: entry-point tracing. Underlying confusion: chose broad file hunting or asked the joiner to guess the important files; missed that the agent should start from auth entry points and trace outward.
- Topic: bounded exploration. Underlying confusion: conflates “more files” with “more understanding”; grounded traversal is what fits context limits.

#### Question 53 (Domain: 5 / Subdomain: structured errors)
Context: Refund retries are wasted on permanent business-rule failures because the tool returns only plain text.
- Topic: error semantics. Underlying confusion: chose text parsing or blanket retries; missed that retryability must be explicit in structured output.
- Topic: customer response quality. Underlying confusion: conflates “the model can infer it” with “the system should encode it.”

#### Question 57 (Domain: 1 / Subdomain: coordinator handoff)
Context: A synthesis agent says no findings were provided even though earlier agents ran.
- Topic: handoff forwarding. Underlying confusion: chose same-thread continuation or manual synthesis; missed that the coordinator must explicitly pass prior findings into the synthesis prompt.
- Topic: agent isolation. Underlying confusion: conflates “agents ran earlier” with “their outputs are automatically shared.”

#### Question 60 (Domain: 1 / Subdomain: summary routing)
Context: Simple follow-up summaries keep spawning a synthesis subagent even though the coordinator already has the findings.
- Topic: orchestration overhead. Underlying confusion: chose re-spawning or caching; missed that the coordinator should answer straightforward summaries directly.
- Topic: delegation threshold. Underlying confusion: conflates “summary request” with “needs a specialist”; simple follow-ups do not justify another agent.
