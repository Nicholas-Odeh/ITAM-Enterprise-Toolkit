---
description: Reconcile IT asset inventory across two or more source extracts and report exceptions
argument-hint: <files or sources to reconcile>
---

Use the `itam-inventory-reconciliation` skill to reconcile these sources: $ARGUMENTS

1. Identify each source, its system of record role, its extract date and its key columns. Ask only if a source's role is unclear.
2. Normalize identifiers and run tiered matching with the skill's scripts, from the `itam-inventory-reconciliation` skill folder: `python3 scripts/normalize_serials.py` on each extract, then `python3 scripts/match_tiers.py` (use `--example-config` to start the config). Do not match by eye, and never treat tier 3 proposals as reconciled.
3. Report match rate by tier, the exceptions grouped by exception code with counts, the top root causes, and the next actions with owners.
4. If records must be corrected, draft the change with `itam-change-request`; don't update anything from this command.
5. Before release, have the `itam-reviewer` agent check the result.

If connectors are available: read current extracts from `~~ITSM`/`~~CMDB`, `~~endpoint management`, `~~procurement`, `~~finance` and `~~HR` (counts and keys only), recording the system and read time for each. Draft exception tickets in `~~ITSM` for approval; write nothing back.
