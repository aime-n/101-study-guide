# Change Log

Append-only. One entry per ingest / lint / recompile / schema
change. Newest at the top.

Format:
```
## YYYY-MM-DD — <one-line summary>
- created/updated: <path>  ← <source or reason>
- notes: <optional>
```

---

## 2026-07-16 — added lesson-by-lesson study plan mapping
- updated: `derived/ccar-f-focused-study-plan.md`
- notes: converted weak areas into a study plan organized by certification-guide lesson names and added self-checks per lesson

## 2026-07-16 — ingested mock-exam annotations and refreshed derived plan
- created: `sources/2026-07-16-mock-exam-1-annotations.meta.md` ← `sources/2026-07-16-mock-exam-1-annotations.md`
- created: `sources/2026-07-16-mock-exam-2-annotations.meta.md` ← `sources/2026-07-16-mock-exam-2-annotations.md`
- updated: `derived/ccar-f-focused-study-plan.md`
- notes: folded the learner's post-review annotations into the study plan, downgraded attention-slip items, and elevated context-durability / progressive-summarization patterns

## 2026-07-16 — added built-in tools study page
- created: `wiki/questions/built-in-tools-read-write-bash-grep-glob.md`
- updated: `wiki/questions/README.md`
- notes: added a concise study page for Claude Code's built-in tools and their intended use

## 2026-07-16 — ingested mock-exam misses
- created: `wiki/questions/configuration-hierarchy-project-scope.md`
- created: `wiki/questions/path-scoped-rules-frontmatter.md`
- created: `wiki/questions/access-control-for-refactoring.md`
- created: `wiki/questions/graceful-degradation-on-budget.md`
- created: `wiki/questions/skills-frontmatter-project-scope.md`
- created: `wiki/questions/self-review-bias-same-session.md`
- created: `wiki/questions/batch-vs-realtime-sla.md`
- created: `wiki/questions/edit-fallback-on-repetitive-files.md`
- created: `wiki/questions/triage-frustrated-customer-before-escalation.md`
- created: `wiki/questions/stale-session-with-modified-files.md`
- created: `wiki/questions/purpose-specific-extraction-tools.md`
- created: `wiki/questions/resume-subagent-after-renamed-functions.md`
- created: `wiki/questions/fork-session-for-testing-branches.md`
- created: `wiki/questions/auth-exploration-for-new-joiner.md`
- created: `wiki/questions/structured-refund-errors.md`
- created: `wiki/questions/coordinator-forwards-subagent-findings.md`
- created: `wiki/questions/date-aware-synthesis.md`
- created: `wiki/questions/coordinator-handles-simple-summaries.md`
- updated: `wiki/questions/README.md`, `wiki/index.md`
- notes: promoted 17 missed mock-exam answers into resolved question pages

## 2026-07-16 — removed two source files and pruned references
- deleted: `sources/2026-07-16-how-I-passed.md`
- deleted: `sources/2026-07-16-reddit-post-2-weeks.md`
- updated: `wiki/entities/claude-certified-architect-foundations.md`, `wiki/concepts/prompts-guide-systems-enforce.md`, `wiki/concepts/context-degradation.md`, `wiki/concepts/instruction-hierarchy.md`, `wiki/syntheses/cca-f-principles.md`, `wiki/overview.md`
- notes: removed dead source links and rewrote summaries to depend only on the remaining source set

## 2026-07-16 — removed hooks source and derived page
- deleted: `sources/2026-07-16-hooks.md`
- deleted: `wiki/concepts/hooks.md`
- updated: `wiki/concepts/prompts-guide-systems-enforce.md`, `wiki/concepts/context-degradation.md`, `wiki/concepts/instruction-hierarchy.md`, `wiki/entities/claude-certified-architect-foundations.md`, `wiki/index.md`, `wiki/overview.md`, `wiki/syntheses/cca-f-principles.md`
- notes: pruned dead references to the removed hooks source and kept the wiki internally consistent

## 2026-07-16 — ingested exam-prep source bundle
- created: `wiki/concepts/prompts-guide-systems-enforce.md`
- created: `wiki/concepts/context-degradation.md`
- created: `wiki/concepts/instruction-hierarchy.md`
- created: `wiki/concepts/hooks.md`
- created: `wiki/syntheses/cca-f-principles.md`
- created: `sources/2026-07-16-claude-cheatsheet.meta.md` ← `sources/2026-07-16-claude-cheatsheet.md`
- created: `sources/2026-07-16-exam-guide.meta.md` ← `sources/2026-07-16-exam-guide.pdf`
- created: `sources/2026-07-16-how-I-passed.meta.md` ← `sources/2026-07-16-how-I-passed.md`
- created: `sources/2026-07-16-hooks.meta.md` ← `sources/2026-07-16-hooks.md`
- created: `sources/2026-07-16-mock-exam-1.meta.md` ← `sources/2026-07-16-mock-exam-1.pdf`
- created: `sources/2026-07-16-mock-exam-2.meta.md` ← `sources/2026-07-16-mock-exam-2.pdf`
- updated: `wiki/entities/claude-certified-architect-foundations.md`, `wiki/index.md`, `wiki/overview.md`
- notes: sources consistently emphasize upstream fixes, scope-aware instruction placement, hooks, and scratchpad-based context retention

## 2026-07-16 — ingested CCA-F Reddit post
- created: `wiki/entities/claude-certified-architect-foundations.md` ← `sources/2026-07-16-reddit-post-2-weeks.md`
- created: `sources/2026-07-16-reddit-post-2-weeks.meta.md` ← `sources/2026-07-16-reddit-post-2-weeks.md`
- updated: `AGENTS.md`, `wiki/index.md`, `wiki/overview.md`
- notes: first derived page for the Claude certification / study wiki topic

## YYYY-MM-DD — wiki initialized
- created: `AGENTS.md` (schema, v1)
- created: scaffolding under `wiki/` and `sources/`
- notes: cloned from `llm-wiki-starter`. Ready to ingest sources.
