#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

export PATH="${HOME}/.local/bin:${PATH}"

PINEC_VALIDATOR_SPEC="pinescript-validator @ git+https://github.com/Poryaei/pine-script-validator.git"

if command -v pine-validator >/dev/null 2>&1; then
  echo "pine-validator already installed."
else
  echo "Installing pine-validator..."
  python3 -m pip install --user --no-warn-script-location "${PINEC_VALIDATOR_SPEC}"
fi

pine-validator --help >/dev/null
echo "Pine Script development tools are ready."
