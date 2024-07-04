#! /bin/bash

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

check_root_directory

# Run the project in the 127.0.0.1:8000
sphinx-autobuild ./docs/source/ ./docs/build/html