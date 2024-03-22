#!/bin/bash

# List installed apps from the Mac App Store
echo "Installed Mac App Store apps:"
mas list

# Ask for the app to uninstall
echo "Enter the number of the app you want to uninstall:"
read app_id

# Get app name
app_name=$(mas list | grep "^$app_id" | awk '{for (i=2; i<NF; i++) printf $i " "; print $(NF)}')

# Check if the app name was found
if [ -z "$app_name" ]; then
    echo "App not found. Make sure you've entered the correct number."
    exit 1
fi

echo "You've selected to uninstall: $app_name"

# Confirm uninstallation
read -p "Are you sure you want to uninstall $app_name? (y/n) " confirm
if [ "$confirm" != "y" ]; then
    echo "Uninstallation cancelled."
    exit 0
fi

# Attempt to locate the app in the Applications folder
app_path="/Applications/$app_name.app"

# Check if the app exists at the predicted path
if [ ! -d "$app_path" ]; then
    echo "Could not find $app_name at $app_path."
    echo "Please manually locate and delete the app."
    exit 1
fi

# Delete the app
echo "Uninstalling $app_name..."
sudo rm -rf "$app_path"
echo "$app_name has been uninstalled."

# Suggest manual cleanup
echo "Please consider manually checking the following locations for leftover files related to $app_name:"
echo "~/Library/Application Support/"
echo "~/Library/Preferences/"
echo "~/Library/Caches/"
echo "Remember to be cautious and ensure you are only deleting files related to $app_name."

# Completion
echo "Basic uninstallation and cleanup suggestions complete."
