#!/usr/bin/env bash
# Re-copy the canonical asset data model into every skill that uses it.
# Run after editing skills/itam-hardware-lifecycle/references/asset-data-model.md.
set -euo pipefail
cd "$(dirname "$0")/skills"
src=itam-hardware-lifecycle/references/asset-data-model.md
for d in endpoint-imaging-provisioning itam-data-analysis-reporting itam-inventory-reconciliation \
         itam-logistics-warehouse itam-sop-documentation itam-acquisition-procurement \
         itam-secure-disposition servicenow-itam sharepoint-itam-records; do
  cp "$src" "$d/references/asset-data-model.md"
done
echo "Synced asset-data-model.md"
