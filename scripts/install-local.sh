#!/usr/bin/env bash
# Copy StudyOS skills into a local assistant skills folder.
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
src="$root/skills"

usage() {
  echo "Usage: $0 claude | both"
  echo "  claude  →  <repo>/.claude/skills/"
  exit 1
}

copy_into() {
  local dest="$1"
  mkdir -p "$dest"
  for skill in "$src"/*; do
    [ -d "$skill" ] || continue
    name="$(basename "$skill")"
    rm -rf "$dest/$name"
    cp -R "$skill" "$dest/$name"
  done
  echo "Installed skills into $dest"
}

target="${1:-}"
case "$target" in
  claude) copy_into "$root/.claude/skills" ;;
  both)
    copy_into "$root/.claude/skills"
    ;;
  *) usage ;;
esac
