# IT Asset Management Toolkit

Enterprise ITAM from request to disposal: lifecycle, licensing, finance, ServiceNow, SharePoint, imaging and logistics. Evidence-first, audit-ready, read-only by default.

**Release 1.0.0** · 23 skills · 9 commands · 1 reviewer agent

## Setup

1. Fill in [`templates/company-profile.md`](templates/company-profile.md). Leave unknown values blank.
2. Complete the templates you need:
   - [asset data model](skills/itam-hardware-lifecycle/references/asset-data-model.md)
   - [refresh policy](skills/itam-hardware-lifecycle/references/refresh-policy.md)
   - [finance policy](skills/itam-financial-management/references/finance-policy.md)
   - [publisher rules](skills/itam-software-license-management/references/publishers/_template.md)
   - [retention schedule](skills/sharepoint-itam-records/references/retention-schedule.md)
   - [ServiceNow instance profile](skills/servicenow-itam/references/instance-profile-template.md)

   After editing the asset data model, run `bash scripts-sync-shared.sh` to copy the changes to the other skills.
3. Optional: connect your systems using [`CONNECTORS.md`](CONNECTORS.md) and `.mcp.json.example`. Without connectors, the toolkit works from exports you paste or upload.
4. Install the folder in your plugin host, then ask an ITAM question to confirm the right skill loads.

## Skills

The router (`using-itam-plugin`) picks the right skill for each request. `itam-operating-standard` sets the shared evidence and quality rules.

- **Lifecycle:**
  - hardware lifecycle
  - inventory reconciliation
  - software licensing
  - imaging and provisioning
  - logistics and warehouse
  - secure disposition
- **Finance and vendors:**
  - procurement
  - financial management
  - vendor and contract management
- **Platforms:**
  - ServiceNow HAM/SAM
  - SharePoint records and procedures
- **Management:**
  - governance
  - risk, controls and audit
  - process improvement
  - change requests
  - status reports
  - capacity planning
  - data analysis
  - spreadsheet models
  - automation scripting
  - SOPs and runbooks

## Commands

- `/reconcile`
- `/audit-ready`
- `/refresh-forecast`
- `/license-position`
- `/itam-sop`
- `/itam-change`
- `/itam-status`
- `/itam-capacity`
- `/itam-runbook`

The `itam-reviewer` agent checks drafts and returns RELEASE, RELEASE WITH FIXES or BLOCK.

## Limitations

- **ServiceNow:** based on the Brazil release docs. Check against your release. See [`sources.md`](skills/servicenow-itam/references/sources.md) to re-check citations.
- **SharePoint:** sources are in [`source-index.md`](skills/sharepoint-itam-records/references/source-index.md).
- **Unconfirmed values:** items marked `VERIFY`, `[FILL]` or `[TBD]` aren't confirmed for your organization. Sample KPI targets, risk scales and RACI are not approved standards.
- **Untested scripts:** PowerShell, platform scripts and Graph examples weren't run in a live tenant.
- **Startup hook:** check that it works in your plugin host.
- **CAMP/IAITAM:** that content is paraphrased. Check distribution rights before sharing outside your organization.
