#!/bin/bash

# Define the directory where your Brewfile is located
BREWFILE_DIR=~/

# Define the path to your settings repository
SETTINGS_REPO_DIR=~/code/my-mac-settings

# Backup existing Brewfile
mv "$BREWFILE_DIR/Brewfile" "$BREWFILE_DIR/OLDBrewfile_$(date +'%Y%m%d')"

# Generate a new Brewfile
brew bundle dump --file="$BREWFILE_DIR/Brewfile" --force

# Copy the new Brewfile to your settings repository
cp "$BREWFILE_DIR/Brewfile" "$SETTINGS_REPO_DIR/Brewfile"

# Go to the settings repository directory
cd "$SETTINGS_REPO_DIR"

# Git add, commit, and push the new Brewfile
git add Brewfile
git commit -m "Update Brewfile backup: $(date +'%Y-%m-%d %H:%M:%S')"
git push

# Delete backup files older than 3 days
find "$BREWFILE_DIR" -name 'OLDBrewfile_*' -mtime +3 -exec rm {} \;