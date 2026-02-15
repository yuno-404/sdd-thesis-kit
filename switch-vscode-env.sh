#!/usr/bin/env bash
set -euo pipefail

target="${1:-}"

if [[ -z "$target" ]]; then
  echo "Usage: ./switch-vscode-env.sh [windows|mac]"
  exit 1
fi

case "$target" in
  windows)
    cp -f .vscode/settings.windows.json .vscode/settings.json
    echo "Switched VS Code LaTeX settings to WINDOWS."
    ;;
  mac)
    cp -f .vscode/settings.mac.json .vscode/settings.json
    echo "Switched VS Code LaTeX settings to MAC."
    ;;
  *)
    echo "Invalid target: $target"
    echo "Usage: ./switch-vscode-env.sh [windows|mac]"
    exit 1
    ;;
esac

echo "Then run in VS Code: Developer: Reload Window"
