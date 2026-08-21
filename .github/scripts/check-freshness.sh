#!/usr/bin/env bash
# Fail if the "Currently" section has gone stale.
#
# A "what I'm working on now" section is only worth having if it is true. Left
# alone it does not break, it just quietly starts lying, which is worse than
# not having it. Dating the heading and failing the weekly run turns that into
# something I actually find out about.
#
# Usage: bash .github/scripts/check-freshness.sh [file]

set -euo pipefail

max_age_months=${MAX_AGE_MONTHS:-6}
file=${1:-README.md}

heading=$(grep -m1 -E '^## Currently \(' "$file") || {
  echo "no dated '## Currently (Mon YYYY)' heading in $file" >&2
  exit 1
}

stamp=$(sed -E 's/^## Currently \(([^)]+)\).*/\1/' <<<"$heading")
if ! stamped=$(date -u -d "1 $stamp" +%s 2>/dev/null); then
  echo "cannot parse the date in: $heading" >&2
  exit 1
fi

cutoff=$(date -u -d "-$max_age_months months" +%s)
if ((stamped < cutoff)); then
  echo "'Currently' is stamped $stamp, over $max_age_months months old." >&2
  echo "Refresh it or drop the section." >&2
  exit 1
fi

echo "ok: 'Currently' stamped $stamp"
