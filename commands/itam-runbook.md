---
description: Write or update an ITAM operational runbook for a recurring task, with expected results, failure actions, rollback and escalation
argument-hint: <task, e.g. "monthly Intune-to-ServiceNow reconciliation run", "weekly stock-rule review", plus any notes or scripts>
---

Use the `itam-sop-documentation` skill to write a runbook for: $ARGUMENTS

Load the domain skill for the task too (for example `itam-inventory-reconciliation`, `servicenow-itam`, `endpoint-imaging-provisioning`, `itam-logistics-warehouse` or `itam-secure-disposition`). If the skill's `references/document-type-templates.md` has a runbook template, use it; otherwise use the outline below.

Ask once, only if it is missing: who runs it and against which system or environment.

Rules:
- Be exact: "run the script" is not a step; give the command, screen path or query, with what to run it against.
- Every step has an expected result and a failure action. Every step that writes data names its dry run, scope cap and approval, and points to `itam-change-request` when a change record is required.
- Mark steps not supported by the user's sources as proposed, and use `[TBD: ...]` for missing owners, systems, thresholds and contacts. Never put credentials in the runbook.

Outline (adapted from the Operations plugin's runbook template):

```markdown
## Runbook: [Task name]
**Owner:** [Team/role] | **Frequency:** [Daily/Weekly/Monthly/On trigger]
**Version / approver / effective date:** [..] | **Last updated:** [Date] | **Last run:** [Date]
**Change control:** [TBD: standard change? change record type]

### Purpose
[What this accomplishes, when to use it, when not to]

### Prerequisites
- [ ] [Access or role needed; credentials come from the approved secret store, never this page]
- [ ] [Tool or system, with version]
- [ ] [Input data or extract, with required freshness]
- [ ] [Window, snapshot or approval needed before starting]

### Procedure
#### Step 1: [Name]
[Exact command, action or instruction]
**Expected result:** [Output, count or status you should see]
**If it fails:** [Stop / retry once / see Troubleshooting / roll back / escalate]
**Evidence:** [What to keep and where, if the step produces a record]

#### Step 2: [Name]
...

### Verification
- [ ] [How to prove it completed: before/after counts, re-query, sample records]
- [ ] [What is easy to miss]

### Troubleshooting
| Symptom | Likely cause | Fix |
|---|---|---|

### Rollback
- Trigger: [When to roll back]
- Steps: [How, from which snapshot]
- Verification: [How to confirm the rollback worked]

### Escalation
| Situation | Contact (role or queue) | Method | After how long |
|---|---|---|---|

### Evidence and records
[Logs, outputs and approvals to keep, where, and for how long: TBD from the retention schedule]

### Run history
| Date | Run by | Result (counts) | Issues / observations |
|---|---|---|---|
```

If connectors are available: search `~~knowledge base` for an existing runbook to update rather than duplicate, and read related incidents, changes and assignment groups from `~~ITSM`. Draft the knowledge article or page update; publish nothing without approval.

Output: the runbook, then a list of proposed steps and `[TBD]` items for the owner to confirm. Ask the user to have someone unfamiliar with the task dry-run it and fix where they get stuck.
