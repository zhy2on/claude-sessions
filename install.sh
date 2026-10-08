#!/bin/sh
# Install claude-sessions into ~/.local/bin.
#
#   Local clone:  ./install.sh
#   Remote:       curl -fsSL https://raw.githubusercontent.com/zhy2on/claude-sessions/main/install.sh | sh
set -eu

if ! command -v python3 >/dev/null 2>&1; then
    echo "Error: python3 is required but not found." >&2
    exit 1
fi

REPO_RAW="https://raw.githubusercontent.com/zhy2on/claude-sessions/main"
INSTALL_DIR="${HOME}/.local/bin"
TARGET="${INSTALL_DIR}/claude-sessions"

mkdir -p "$INSTALL_DIR"

SCRIPT_DIR=""
case "$0" in
    */*) SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd) ;;
esac

if [ -n "$SCRIPT_DIR" ] && [ -f "$SCRIPT_DIR/claude-sessions" ]; then
    ln -sf "$SCRIPT_DIR/claude-sessions" "$TARGET"
    echo "Linked $TARGET -> $SCRIPT_DIR/claude-sessions"
else
    curl -fsSL "$REPO_RAW/claude-sessions" -o "$TARGET"
    chmod +x "$TARGET"
    echo "Installed $TARGET"
fi

case ":$PATH:" in
    *":$INSTALL_DIR:"*) ;;
    *)
        echo ""
        echo "Note: $INSTALL_DIR is not on your PATH. Add this to your shell rc file:"
        echo "  export PATH=\"$INSTALL_DIR:\$PATH\""
        ;;
esac
