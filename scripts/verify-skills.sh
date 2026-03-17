#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

missing=0
while IFS= read -r -d '' dir; do
  if [[ ! -f "$dir/SKILL.md" ]]; then
    echo "Missing SKILL.md in $dir"
    missing=1
  fi
done < <(find "$ROOT/skills" -mindepth 1 -maxdepth 1 -type d -print0)

if [[ "$missing" -ne 0 ]]; then
  exit 1
fi

echo "Skill structure check passed"
