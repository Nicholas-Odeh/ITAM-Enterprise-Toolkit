---
description: Check whether ITAM operations capacity (stock, imaging bench, staff, logistics, backlog, budget) fits planned demand
argument-hint: <scope and horizon, e.g. "Q1 refresh of 900 laptops at two depots", plus volumes or extracts>
---

Use the `itam-capacity-planning` skill to plan capacity for: $ARGUMENTS

Pair it with `itam-hardware-lifecycle` for refresh volumes, `endpoint-imaging-provisioning` for bench rates and build methods, `itam-logistics-warehouse` for stockroom and shipping constraints, and `itam-financial-management` for unit costs and budget.

Ask once, only if it is missing: the largest demand driver (usually the hiring plan or the refresh-wave dates).

1. Forecast demand per period (hires, refresh, break/fix, returns, projects) and find the peak.
2. Set safety stock and reorder points per model, and calculate bench, staff, logistics and backlog capacity, using `python3 scripts/capacity_calc.py` (run it from the `itam-capacity-planning` skill folder; `--help` lists the subcommands). Show the formula and inputs for each figure.
3. Use measured rates; label any other rate `ASSUMPTION` and give a range. Apply utilization targets; never plan to 100%.
4. Name the bottleneck, then compare scenarios from `references/scenarios-template.md`, always including do-nothing, with a sensitivity check on the least certain inputs.

If connectors are available: read hiring and leaver counts from `~~HR`, request, incident and stock volumes from `~~ITSM`, build completions from `~~endpoint management`, open orders and lead times from `~~procurement`, budget from `~~finance`, and wave schedules from `~~project tracker`. Draft the model workbook in `~~office suite`; change no records.

Output: verdict (fits, fits below buffer, does not fit) with bottleneck and period, demand table, capacity by dimension, stock plan per model, scenarios, recommendations with owner, cost, lead time and start-by date, and assumptions.
