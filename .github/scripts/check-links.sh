#!/usr/bin/env bash
# Fail if any link in README.md is dead.
#
# The profile README is the most visible page I own and every entry in it is a
# claim about a repo that still exists. Renames, transfers and accidental
# private-flips are silent: nothing breaks locally, the link just 404s for
# everyone else. So this runs weekly, not only on push.
#
# Usage: bash .github/scripts/check-links.sh [file...]

set -uo pipefail

files=("$@")
[[ ${#files[@]} -eq 0 ]] && files=(README.md)

status=0

check_github_repo() {
  # GitHub HTML from a CI runner gets rate-limited and cannot tell a 404 from a
  # private repo, so ask the API instead when a token is around.
  local repo=$1 url=$2 body
  if ! command -v gh >/dev/null 2>&1 || [[ -z ${GH_TOKEN:-${GITHUB_TOKEN:-}} ]]; then
    return 2
  fi
  if ! body=$(gh api "repos/$repo" 2>/dev/null); then
    printf 'MISSING    %s\n' "$url"
    return 1
  fi
  if [[ $(jq -r '.archived' <<<"$body") == true ]]; then
    printf 'ARCHIVED   %s\n' "$url"
  else
    printf 'ok         %s\n' "$url"
  fi
  return 0
}

for file in "${files[@]}"; do
  while read -r url; do
    if [[ $url =~ ^https://github\.com/([^/]+)/([^/#?]+) ]]; then
      check_github_repo "${BASH_REMATCH[1]}/${BASH_REMATCH[2]}" "$url"
      case $? in
        0) continue ;;
        1) status=1; continue ;;
        2) ;; # no token: fall through to a plain request
      esac
    fi

    code=$(curl -sS -o /dev/null -w '%{http_code}' -L --retry 2 --max-time 20 "$url" 2>/dev/null || echo 000)
    case $code in
      2*|3*)
        printf 'ok         %s\n' "$url" ;;
      401|403|405|429|999)
        # LinkedIn and friends refuse automated requests; a refusal is not a 404.
        printf 'skip %-5s %s\n' "$code" "$url" ;;
      *)
        printf 'DEAD %-5s %s\n' "$code" "$url"; status=1 ;;
    esac
  done < <(grep -ohE 'https://[^)"<[:space:]]+' "$file" | sed 's/[.,]$//' | sort -u)
done

exit $status
