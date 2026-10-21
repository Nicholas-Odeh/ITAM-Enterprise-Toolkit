---
description: Forecast hardware refresh volumes and cost from an asset extract
argument-hint: <asset extract file and any refresh policy details>
---

Use the `itam-hardware-lifecycle` and `itam-financial-management` skills to build a refresh forecast from: $ARGUMENTS

1. Read the refresh policy and unit costs from `templates/company-profile.md` or the user. If they are missing, ask once, then proceed with clearly labeled assumptions.
2. Age each in-scope asset from its purchase or deploy date, and apply the refresh cycle by device type. Note model end-of-support dates if they are available.
3. Output units due by quarter and by fiscal year, the estimated cost range, assets already past refresh, and the data-quality exclusions (missing dates, unknown models) with counts.
4. Show the formulas used, so Finance can check them. For net book value at refresh, run `python3 scripts/depreciation.py` from the `itam-financial-management` skill folder rather than calculating by hand.
5. To check whether the waves fit stock, bench and staff capacity, hand the per-period units to `/itam-capacity` (`python3 scripts/capacity_calc.py demand` and `bench` in the `itam-capacity-planning` skill folder).

If connectors are available: read the asset extract from `~~ITSM`, purchase dates and prices from `~~procurement`, and book values from `~~finance`, recording each read time. Draft the forecast workbook in `~~office suite`; change no records.
