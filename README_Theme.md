
# Steps to install the theme (For UR we use a fork of sphinx_waigtail)

Do this inside the activated virtual environment.

1. It is recommended to always have separate build and source in the Sphinx project.
2. Inside source folder create a folder called _themes.
3. There clone the repository or place the zip file of the chosen theme.
4. Enter the project folder of the theme.
5. Run git submodule update --init and git submodule update --remote if you are in a cloned repo that may have dependencies.
6. Run npm install to download dependencies (must create the folder node_modules folder).
7. Run npm build
8. Exit to the _themes folder.
9. Install the theme with python3 -m pip install -e theme_folder_name/.
10. Run pip list and check that the theme is installed. Copy the name
11. In the conf.py of the project change html_theme = 'theme_name_installed_in_pip'.

Or you could use install_theme.sh script if is the first time that you install a theme.
Or run update_themes.sh script to reinstall the theme after changes over the theme.
