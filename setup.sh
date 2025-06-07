#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
KEYMAP_PATH="/Applications/Notion Music.app/Contents/Resources/KeyMaps/Custom.tpk"

if [ -L "$KEYMAP_PATH" ]; then
    echo "Symlink already exists"
elif [ -f "$KEYMAP_PATH" ]; then
    echo "File exists but is not a symlink. Please remove it first."
    exit 1
else
    ln -s "$SCRIPT_DIR/Resources/Keymaps/Custom.tpk" "$KEYMAP_PATH"
    echo "Symlink created successfully"
fi