#!/bin/bash

# Function to check if Homebrew is installed
install_homebrew() {
    if ! command -v brew &> /dev/null
    then
        echo "Homebrew not found, installing now..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew is already installed."
    fi
}

# Function to download Brewfile and run brew bundle
setup_environment() {
    echo "Downloading Anjan's Awesome Brewfile..."
    curl -O https://raw.githubusercontent.com/AnjanJ/my-mac-settings/main/Brewfile

    echo "Running brew bundle to install software..."
    brew bundle --file=Brewfile
}

# Main Script Execution
install_homebrew
setup_environment

echo "Development environment setup complete."
