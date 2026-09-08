# Resume Subagent After Renamed Functions

**Status:** resolved

> Keep the accumulated understanding and add the delta for the renamed symbols.

## Why I'm asking
Mock exam 2 tested how to continue a long exploration when a teammate merged renames while I was away.

## Current best answer
Resume the subagent from its previous transcript and explicitly inform it about the renamed functions so it can update its model without redoing the whole exploration.

## Evidence for
- The prior transcript still contains useful architectural understanding.
- A small delta is cheaper than a full restart.

## Evidence against
- Silent resume keeps stale symbol names alive.
- A full fresh prompt wastes the work already done.

## Related
- [[concepts/context-degradation]]
- [[concepts/instruction-hierarchy]]

## Sources
- [[sources/2026-07-16-exam-guide.pdf]] — official exam guide anchor for session recovery after code changes
- [[sources/2026-07-16-mock-exam-2.pdf]] — question 45 on resumed exploration after renames

## Continue reading
- **Stale sessions** → [[stale-session-with-modified-files]]
- **Context degradation** → [[concepts/context-degradation]]
