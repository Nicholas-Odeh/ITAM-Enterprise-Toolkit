---
description: Draft an ITAM change request with dry-run evidence, impact, risk, rollback and communications for CAB
argument-hint: <change, e.g. "retire 1,200 duplicate laptop records", "add Quarantine substate", "move Leeds stockroom to Manchester">
---

Use the `itam-change-request` skill to draft a change record for: $ARGUMENTS

Also load the domain skill for what is changing: `servicenow-itam` for HAM/SAM configuration or asset-CI mapping, `itam-inventory-reconciliation` for corrections that come from exceptions, `itam-hardware-lifecycle` for state-model changes, `itam-logistics-warehouse` for stockroom moves, and `itam-capacity-planning` for refresh waves. Use `itam-automation-scripting` if the change needs an update script.

Ask once, only if it is missing: the selection criteria (filter, query or file) and whether the change touches production.

1. Classify the change against the skill's change catalog (C1–C7) and load `references/change-template.md`.
2. Fill scope from a real dry run: record counts with breakdown, the exact filter, as-of time, a before/after sample covering edge cases, and a numeric scope cap. Until a dry run exists, write `[PENDING DRY RUN]` and mark the record not ready for approval.
3. State side effects on linked CIs, license positions, finance and the audit trail, plus the KPIs (by metric ID) whose baseline will move.
4. Write the implementation plan in batches with checkpoints and stop criteria, the communication plan, and a rollback plan with trigger, steps and verification, naming any point of no return.
5. List approvals as Pending. Never show an approval as obtained without evidence.

If connectors are available: read the change calendar and freeze windows from `~~ITSM` and linked CI counts from `~~CMDB`; draft (don't submit) the change record in `~~ITSM`, tasks in `~~project tracker`, and notices for `~~chat` or `~~email`, which are sent only after explicit approval.

Output: the change record in the skill's output format. For material changes, have the `itam-reviewer` agent check it before it goes to CAB.
