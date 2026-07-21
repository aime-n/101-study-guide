# CCAR-F Focused Study Plan — Domain 3 Weak Areas

Based on 4 missed questions (Q2, Q9, Q10, Q14), all in Domain 3 (Claude Code Configuration & Workflows). Two distinct conceptual gaps, one recurring.

---

## Study order

1. Configuration hierarchy foundations (scope + precedence model) — root cause of Q10 and Q14
2. Rules directory mechanics (symlinks, discovery) — Q2
3. Iterative refinement communication pattern — Q9 (unrelated domain, study last/separately)

---

## 1. Configuration hierarchy: scope and precedence (Q10, Q14)

**Observed mistake:** In both questions you defaulted to *project-level* CLAUDE.md as the answer — once for a cross-project personal preference (Q10), once for an organization-wide non-overridable rule (Q14). This is the same underlying gap appearing twice: you're not yet distinguishing the four scopes by *who controls them* and *how far they reach*.

**Core theory — four scopes, ordered broadest to narrowest by load order:**

| Layer | Location | Editable by | Reach | Overridable? |
|---|---|---|---|---|
| Managed policy | OS-level path (e.g. `/etc/claude-code/`) or `managed-settings.json` | IT/org admin | Every session, every repo, on that machine | No — enforced regardless of user/project settings |
| User | `~/.claude/CLAUDE.md`, `~/.claude/rules/` | Individual developer | All projects on that developer's machine | Yes, by project-level content |
| Project | `./CLAUDE.md`, `./.claude/CLAUDE.md`, `.claude/rules/` | Anyone with repo write access, committed to git | That one repo, shared with the team | Yes, by local-level content |
| Local | `./CLAUDE.local.md` | Individual developer | That one repo, gitignored, personal | N/A — most specific |

**Loading order = precedence order.** Managed loads first, user next, project next, local last. Everything is *concatenated* into context, not replaced — but when instructions conflict, the later-loaded (more specific) layer wins in practice, and for managed policy the enforcement is structural, not just "last word wins."

**Key conceptual contrast to internalize:**
- *Scope breadth* (how many repos/sessions it touches) and *enforceability* (whether it can be overridden) are two separate axes. User-level is broad (all projects) but fully editable/overridable. Managed policy is also broad (all projects) but non-overridable. Project-level is narrow (one repo) but team-shared. Don't conflate "applies broadly" with "can't be changed" — that's likely what drove the Q10 vs Q14 confusion in opposite directions.
- Exam pattern to watch for: a scenario describing a *personal* cross-project preference → user-level. A scenario describing an *organization-mandated, non-negotiable* rule → managed policy. A scenario describing *team-shared, repo-specific* convention → project-level. The word "everyone must," "non-overridable," or "IT deploys" signals managed policy, not project-level, even though both are "broad."

**Self-check:**
1. An architect wants a security rule that no individual developer, regardless of their local settings, can disable. Which layer, and why is project-level insufficient even if committed to every repo?
2. A developer wants their own commit-message style applied whether they're working in the marketing repo or the backend repo, but doesn't want to impose it on teammates. Which layer?

---

## 2. Symlink support in `.claude/rules/` (Q2)

**Observed mistake:** You chose an answer implying submodules are the mechanism for sharing rules across repos, or that rules directory access is somehow restricted for non-native paths — missing that symlinks are a first-class supported mechanism.

**Core theory:**
- `.claude/rules/` discovers `.md` files recursively, **regular files and symlinks alike** — there's no special restriction on symlinked content.
- Symlinks are **resolved normally**: a `.claude/rules/shared` symlink pointing at a shared external rules directory works exactly as if the files lived there natively.
- **Circular symlinks are detected and handled gracefully** — this is the specific fact-pattern the exam likes to test, because it rules out "symlinks are risky/unsupported" as a distractor.
- Practical pattern this enables: one canonical rules repo, symlinked into every project that needs it (`ln -s ~/shared-claude-rules .claude/rules/shared`), rather than duplicating files or relying on git submodules.

**Conceptual contrast:** Submodules are a *version-control* mechanism (pinning another repo at a commit); symlinks are a *filesystem* mechanism (pointing at a path). The rules directory cares about resolvable filesystem paths, not git structure. If a question's scenario is about sharing rule files across several repos without duplication, and an option mentions submodules, that's testing whether you know the actual supported mechanism is a symlink, not source control.

**Self-check:**
1. True or false: if `.claude/rules/security.md` is a symlink to a file outside the project, Claude Code will skip it for security reasons. Why or why not?
2. What happens if a symlink chain in `.claude/rules/` forms a loop (A → B → A)?

---

## 3. Batching independent fixes during iterative refinement (Q9)

**Observed mistake:** You applied a sequential "fix one, verify, fix next" pattern to a set of test failures that were actually independent of each other.

**Core theory:**
- The relevant distinction is **whether fixes interact**, not "how many fixes there are."
  - **Independent failures** (e.g., unrelated functions each failing for their own unrelated reason): report and fix in the same message/pass. Sequential correction here just adds latency without reducing risk, because fixing one doesn't change the correctness of the others.
  - **Interacting fixes** (e.g., changing a shared function's signature affects multiple call sites, or fix A's correctness depends on the outcome of fix B): sequence them, verify after each, because a batched fix risks compounding an incorrect assumption across multiple changes.
- The general principle: batch when correctness of each fix can be evaluated independently; sequence when evaluating one fix requires knowing the result of another.

**Conceptual contrast:** This is fundamentally a *dependency analysis* question dressed up as a "how do I report test failures" question. The exam is testing whether you default to sequential-always (over-cautious, inefficient) or batch-always (risky when fixes interact) versus correctly branching on dependency.

**Self-check:**
1. A test suite reports three failures: a typo in an error message, a broken null-check in an unrelated module, and a miscalculated tax rate in a third function. Batch or sequence, and why?
2. A test suite reports failures in `calculateTotal()` and in three other functions that all call `calculateTotal()`. Batch or sequence?

---

## Notes on scope of this plan

- All four misses trace to Domain 3, Subdomain 3.1 (three of four) and 3.5 (one). If your broader exam prep is otherwise on track, this suggests Subdomain 3.1 (CLAUDE.md hierarchy/scoping) deserves disproportionate review time relative to its share of the exam — it's your single highest-leverage subdomain right now.
- No evidence in this quiz of gaps outside Domain 3 — don't over-generalize from these 4 misses into other domains without further data (e.g., a full-length practice exam).
