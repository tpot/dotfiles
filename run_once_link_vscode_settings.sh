#!/bin/bash

# macOS Visual Studio Code settings file
MACOS_VSCODE_SETTINGS="$HOME/Library/Application Support/Code/User/settings.json"

# Linux Visual Studio Code settings file location
LINUX_VSCODE_SETTINGS="$HOME/.config/Code/User/settings.json"

# Ensure the destination directory exists
mkdir -p "$(dirname "$MACOS_VSCODE_SETTINGS")"

# Check if the macOS settings file exists
if [ -f "$LINUX_VSCODE_SETTINGS" ]; then
    # Create a symbolic link if it doesn't already exist
    if [ ! -L "$MACOS_VSCODE_SETTINGS" ]; then
        ln -sf "$LINUX_VSCODE_SETTINGS" "$MACOS_VSCODE_SETTINGS"
        echo "Linked $LINUX_VSCODE_SETTINGS to $MACOS_VSCODE_SETTINGS"
    else
        echo "Symbolic link already exists"
    fi
else
    echo "Linux Visual Studio Code settings file not found"
fi
