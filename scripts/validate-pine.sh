#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

export PATH="${HOME}/.local/bin:${PATH}"

if ! command -v pine-validator >/dev/null 2>&1; then
  echo "pine-validator not found. Run: bash scripts/cloud-agent-install.sh" >&2
  exit 1
fi

shopt -s nullglob
pine_files=("$ROOT"/*.pine)
shopt -u nullglob

if ((${#pine_files[@]} == 0)); then
  echo "No .pine files found in ${ROOT}." >&2
  exit 1
fi

echo "Validating ${#pine_files[@]} Pine Script file(s)..."
pine-validator "${pine_files[@]}"
