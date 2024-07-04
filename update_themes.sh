#!/bin/bash

# When we do some changes in the theme, we need to recompile it and reinstall 
# it in the project

# Base directory
BASE_DIR="./docs/source/_themes"

# Move into the directory themes (_themes)
cd "$BASE_DIR" || exit

# Saving themes folder names (themes)
THEMES=(*)

# Loop for each theme
for THEME in "${THEMES[@]}"; do
    echo "Processing theme: $THEME"
    
    # Ge into the theme directory
    cd "$THEME" || continue
    
    # Execute the next commands
    make clean
    make clean-frontend
    npm install
    npm ci
    make setup
    make frontend
    make install
    make install-for-development
    make docs
    make lint
    make lint-minimal
    npm run build
    
    # Go back to the base directory (_themes)
    cd ..
    
    # Install the theme
    python3 -m pip install -e "$THEME"
    
    echo "Theme $THEME processed and installed."
    echo "--------------------------------"
done

echo "All themes have been processed and installed."