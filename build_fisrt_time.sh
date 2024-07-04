#!/bin/bash

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print info messages
info() {
    echo -e "${GREEN}ℹ️  $1${NC}"
}

# Function to print error messages
error() {
    echo -e "${RED}❌ $1${NC}"
}

# Function to print input messages
input() {
    echo -e "${BLUE}🔎 $1${NC}"
}

# Function to check if we are in the root directory of the project
check_root_directory() {
    if [ ! -f "requirements.txt" ] || [ ! -d "docs" ]; then
        error "This script must be executed from the root of the project."    
        error "Make sure the requirements.txt file and the docs directory exist."
        sleep 5
        exit 1
    fi
}

# Function to check if the virtual environment was created
check_virtual_env() {
    if [ ! -d ".venv" ]; then
        error "Failed creating the virtual environment."
        exit 1
    fi
}

# Check if we are in the root directory of the project
check_root_directory

# Create the virtual environment
if [ ! -d ".venv" ]; then
    info "Creating the virtual environment..."
    python -m venv .venv
    info "Virtual environment created successfully."
fi

# Check if the environment was created
check_virtual_env

# Sourcing the virtual environment
info "Sourcing the virtual environment..."
source .venv/bin/activate

# Verificar que el ambiente virtual está activado
if [ -z "$VIRTUAL_ENV" ]; then
    error "Error: This script must run within an activated virtual environment."
    info "Please activate your virtual environment and try again."
    sleep 5
    exit 1
fi

# Initialize submodules
info "Initializing submodules..."
git submodule update --init

# Updating submodules
info "Updating submodules..."
git submodule update --remote

# Install python requirements
info "Installing python requirements..."
pip install -r requirements.txt

# Print requirements installed
info "Requerements installed:"
pip list

# Run the install_theme.sh script
if [ -f "install_theme.sh" ]; then
    info "Executing install_theme.sh script..."
    bash install_theme.sh
else
    error "Cannot find install_theme.sh script"
    exit 1
fi

# Build the project
info "Build the project..."
sphinx-build -M html ./docs/source/ ./docs/build/

# Run the project
info "Run the project..."
sphinx-autobuild ./docs/source/ ./docs/build/html


