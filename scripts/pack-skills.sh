#!/usr/bin/env bash
# Zip each skill directory into dist/<name>.skill (a zip archive).
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
src="$root/skills"
out="$root/dist"
mkdir -p "$out"

if ! command -v zip >/dev/null 2>&1; then
  echo "zip is required to build .skill packages" >&2
  exit 1
fi

shopt -s nullglob
for skill in "$src"/*; do
  [ -d "$skill" ] || continue
  name="$(basename "$skill")"
  rm -f "$out/$name.skill"
  (cd "$src" && zip -r -q "$out/$name.skill" "$name")
  echo "Wrote $out/$name.skill"
done
