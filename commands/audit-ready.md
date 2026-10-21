---
description: Assess audit readiness for an ITAM area and list the evidence gaps
argument-hint: <area, e.g. "hardware inventory", "Microsoft licensing", "disposal">
---

Use the `itam-risk-controls-audit` skill to assess audit readiness for: $ARGUMENTS

Load the area's domain skill too (for example `itam-software-license-management` for licensing, or `itam-secure-disposition` for disposal).

Produce:
1. The controls an auditor would expect for this area, with the objective, the evidence expected, and the test step.
2. For each control, what evidence the user has supplied, and the status: Evidenced / Partially evidenced / Not evidenced / Unknown.
3. The gaps ranked by risk, each with a remediation action and owner placeholder.
4. An evidence request list the user can send to control owners.

Never mark a control as effective without supplied evidence. Re-perform rather than accept a stated figure where a script exists: for inventory accuracy or match rate, rerun `python3 scripts/match_tiers.py` from the `itam-inventory-reconciliation` skill folder on the supplied extracts.

If connectors are available: read control evidence from `~~document repository` and `~~ITSM` (tickets, approvals, change records) and record where and when each item was found. Draft the evidence request for `~~email`; send nothing without approval.
