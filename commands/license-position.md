---
description: Calculate or review an effective license position for a software publisher or product
argument-hint: <publisher or product, plus entitlement and deployment data>
---

Use the `itam-software-license-management` skill (and `servicenow-itam` if the data comes from ServiceNow SAM) for: $ARGUMENTS

1. Confirm the license metric(s) from the user's contract or entitlement records. Never assume a publisher's metric rules.
2. Reconcile entitlements against deployments and usage per metric, then show the effective license position (surplus/shortfall) with the calculation. Normalize device and user keys first with `python3 scripts/normalize_serials.py` (in the `itam-inventory-reconciliation` skill folder) when deployment data comes from more than one source; if the license skill ships a calculation script in its `scripts/` folder, run it with `python3 scripts/<name>.py --help` first and use it for the arithmetic.
3. List the data-quality caveats that could move the position, the reharvest opportunities, and the risk if audited today.
4. Label every figure with its source and extract date.

If connectors are available: read entitlements and purchase records from `~~procurement`, installs and assignments from `~~ITSM` (SAM) and `~~endpoint management`, and contracts from `~~document repository`, recording each read time. Reharvest actions are drafts for approval; change nothing.
