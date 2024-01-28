#!/bin/bash

# Define the directory where your Brewfile is located
BREWFILE_DIR=~/

# Define the path to your settings repository
SETTINGS_REPO_DIR=~/code/my-mac-settings

# Update Homebrew
brew update

# Upgrade installed formulae
brew upgrade

# Upgrade apps installed via mac app store
mas upgrade # Learn more here -> https://github.com/mas-cli/mas

# Backup existing Brewfile
mv "$BREWFILE_DIR/Brewfile" "$BREWFILE_DIR/OLDBrewfile_$(date +'%Y%m%d')"

# Generate a new Brewfile
brew bundle dump --file="$BREWFILE_DIR/Brewfile" --force

# Copy the new Brewfile to your settings repository
cp "$BREWFILE_DIR/Brewfile" "$SETTINGS_REPO_DIR/Brewfile"

# Define the path to your .zshrc file
ZSHRC_FILE="$HOME/.zshrc"

# Check if .zshrc has changed in the past week
if [ -f "$ZSHRC_FILE" ] && [ "$ZSHRC_FILE" -nt "$SETTINGS_REPO_DIR/.zshrc" ]; then
    # Copy .zshrc to a the repo
    cp "$ZSHRC_FILE" "$SETTINGS_REPO_DIR/.zshrc"
    echo "Copied .zshrc to $SETTINGS_REPO_DIR/.zshrc"
else
    echo "No changes detected in .zshrc in the past week."
fi

# Go to the settings repository directory
cd "$SETTINGS_REPO_DIR"

# Check if there are changes to commit
if [[ -n $(git status -s) ]]; then
    # Git add, commit, and push the new Brewfile
    echo "Commiting the changes to Github"
    git add .
    git commit -m "Ran Update & Backup task: $(date +'%Y-%m-%d %H:%M:%S')"
    git push
else
    echo "No changes to commit."
fi

# Delete backup files older than 3 days
find "$BREWFILE_DIR" -name 'OLDBrewfile_*' -mtime +3 -exec rm {} \;