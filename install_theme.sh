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

#Getting the CTRL+C
trap "echo 'Script interrupted by user'; exit 1" SIGINT

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    error "Error: npm is not installed. Please install Node.js and npm."
    sleep 5
    exit 1
fi

# Check if we are in a virtual environment
if [ -z "$VIRTUAL_ENV" ]; then
    error "Error: This script must be executed within an activated virtual environment."
    info "Please activate your virtual environment and try again."
    sleep 5
    exit 1
fi

info "Using the virtual environment: $VIRTUAL_ENV"

# 1. Be in the root of the project
cd docs || { error "Error: The docs directory could not be accessed."; sleep 3; exit 1; }

if [ ! -d "source" ]; then
    error "There is no source folder."
    sleep 5
    exit 1
fi


# 2. Create _themes folder inside source
cd source

if [ ! -d "_themes" ]; then
    info "Themes directory does not exist. Creating..."
    mkdir _themes
else
    info "Directory _themes already exists. Entering..."
fi

cd _themes

# 3. Ask if you already have the cloned repo or the themes folder
# Clone the theme repository (assuming it is a git repo) 
    
input "Does your project already have the cloned repo or theme folder (y/N): " 
read has_theme

if [[ $has_theme =~ ^[Yy]$ ]]; then
    # If you already have the theme, ask for the folder name
    input "Please enter the name of the theme folder: " 
    read THEME_NAME
    if [ ! -d "$THEME_NAME" ]; then
        error "Error: $THEME_NAME folder does not exist in docs/source/_themes"
        sleep 5
        exit 1
    fi
else    
    # If you don't have the theme, ask for the repo URL
    input -p "Please enter the URL of the theme repository: " 
    read REPO_URL
        
    # Extract the theme name from the repo URL.            
    THEME_NAME=$(basename -s .git "$REPO_URL")
            
    # Clone the theme repository
    info "Cloning the repository..."
    git clone "$REPO_URL"
    if [ $? -ne 0 ]; then
        echo "Error: Could not clone repository"
        exit 1
    fi
fi

cd $THEME_NAME

# 4. Update submodules if they exist
info "Updating submodules..."
git submodule update --init
git submodule update --remote

# 5. Install Python dependencies
info "Installing Python dependencies..."
python3 -m pip install --upgrade -r requirements.txt

info "Cleaning..."
make clean
make clean-frontend

# 6. Install Node.js dependencies
info "Installing Node.js dependencies..."
npm install
npm ci

# 7. Build the theme
info "Build the theme..."
make setup
make frontend
make install
make install-for-development
make docs
make lint
make lint-minimal
npm run build

# 8. Return to the _themes folder.
cd ..

# 9. Install the theme in edit mode 
info "Install the theme in edit mode..."
python3 -m pip install -e $THEME_NAME/.

# 10. List installed packages and filter the theme.
THEME_NAME_INSTALLED=$(pip list | grep "$THEME_NAME" | awk '{print $1}')

if [ -z "$THEME_NAME_INSTALLED" ]; then
    error "Error: Theme was not installed correctly"
    sleep 5
    exit 1
fi

info "Installed theme: $THEME_NAME_INSTALLED"

# 11. Update conf.py
cd ../..  # Go back to the root of the project
info "Updating conf.py..."
cp source/conf.py source/conf.py.bak
sed -i "s/html_theme = .*/html_theme = '$THEME_NAME_INSTALLED'/" source/conf.py
info "A backup copy of conf.py has been created as conf.py.bak."

info "Process completed. Please verify the source/conf.py file"


info "Process completed. A backup copy of conf.py has been created as conf.py.bak"
info "Please check the source/conf.py file." info "Please check the source/conf.py file."

info "Summary of actions:"
info "- Installed theme: $THEME_NAME_INSTALLED"
info "- Configuration updated in conf.py"
info "- Backup copy created: conf.py.bak"
