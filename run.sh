#!/usr/bin/env bash
set -euo pipefail

if command -v uv &>/dev/null; then
    UV=uv
elif [ -x "$HOME/.local/bin/uv" ]; then
    UV="$HOME/.local/bin/uv"
else
    echo "uv niet gevonden. Installeren..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    UV="$HOME/.local/bin/uv"
fi

cd "$(dirname "$0")"
echo "SlimGemeten starten..."
"$UV" run main.py
