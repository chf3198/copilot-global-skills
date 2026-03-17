#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$REPO_ROOT/skills"
DST="${HOME}/.copilot/skills"

mkdir -p "$DST"
rsync -a --delete "$SRC/" "$DST/"

echo "Installed skills to $DST"
