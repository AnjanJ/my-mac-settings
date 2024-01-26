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

# Function to install latest Ruby using rbenv
install_latest_ruby() {
    echo "Installing the latest Ruby version using rbenv..."
    rbenv install $(rbenv install -l | grep -v - | tail -1)
    rbenv global $(rbenv install -l | grep -v - | tail -1)

    echo "Installing latest version of Rails..."
    gem install rails
    rbenv rehash
}

# Function to install latest stable Node.js version using nodenv
install_latest_node() {
    echo "Installing the latest stable Node.js version using nodenv..."
    # Filter for stable versions and install the latest one
    nodenv install $(nodenv install -l | grep -v - | grep -E '^[0-9.]+$' | tail -1)
    nodenv global $(nodenv install -l | grep -v - | grep -E '^[0-9.]+$' | tail -1)

    echo "Installing Yarn..."
    npm install --global yarn
}


# Main Script Execution
install_homebrew
setup_environment
install_latest_ruby
install_latest_node

echo "Development environment setup complete."
