---
description: Write an ITAM program or project status report with evidence-based RAG, catalog KPIs, risks and decisions
argument-hint: [weekly | monthly | quarterly | audit-committee] <program, project or team, plus data or notes>
---

Use the `itam-status-report` skill to write a status report for: $ARGUMENTS

Read KPI definitions and targets from `skills/itam-data-analysis-reporting/references/metrics-catalog.md` (read-only). Load the domain skill for any workstream that needs interpretation, for example `itam-software-license-management` for license exposure.

Ask once, only if it is unclear: the audience (team, steering group, executive or audit committee).

1. Pick the template (operational, executive or audit-committee) and five to eight KPIs by catalog ID for that audience.
2. For each KPI give value, numerator and denominator, as-of date, source, prior value, target (or "no approved target") and trend.
3. Rate KPIs, workstreams and overall with `references/rag-rules.md`. No green without evidence; stale, missing or untargeted KPIs are not green. Give a reason for every rating change since last period.
4. List accomplishments that have evidence, risks and issues with owners, decisions needed with a recommendation and deadline, last period's commitments (done, slipped or dropped), and next priorities.
5. Write the headline last, with reds and ambers first.

If connectors are available: read KPI source data from `~~ITSM` and `~~CMDB` (record the read time), milestones and overdue items from `~~project tracker`, the prior report from `~~document repository`, and blockers or decisions from `~~chat`. Draft a channel post or email; send nothing without approval.

Output: the report in the chosen template, ending with data notes (sources, stale items, definition changes).
