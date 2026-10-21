---
description: Draft an audit-ready ITAM standard operating procedure
argument-hint: <process name and any source notes or current-state description>
---

Use the `itam-sop-documentation` skill to write an SOP for: $ARGUMENTS

Also load the domain skill for the process (lifecycle, logistics, imaging, disposition, licensing, etc.). Mark every step that is not supported by the user's sources as a proposed step, and use [TBD: ...] placeholders for missing owners, systems or thresholds. Where a step runs one of the plugin's scripts, write the exact call (for example `python3 scripts/match_tiers.py --config <file>`) and the skill folder it runs from. For a recurring technical task, use `/itam-runbook` instead.

If connectors are available: search `~~knowledge base` and `~~document repository` for the current SOP or related policy and revise it rather than starting over. Draft the page or document update; publish nothing without approval.
