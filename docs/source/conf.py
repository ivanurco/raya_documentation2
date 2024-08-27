# Adding the parent directory to the path so that the theme can be found
from docutils.parsers.rst import roles
from docutils import nodes
import pathlib
import sys
import os
sys.path.insert(0, pathlib.Path(__file__).parent.resolve().as_posix())

# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'RaYa Documentation'
copyright = '2024, Unlimited Robotics'
author = 'Ivan David Martinez Baron'
release = '0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    "sphinx.ext.duration",
    "sphinx_wagtail_theme",
    "sphinx.ext.doctest",
    "sphinx.ext.autodoc",
    "sphinx.ext.autosummary",
    "sphinx.ext.intersphinx",
    "sphinx.ext.todo",
    "myst_parser",
    "sphinxcontrib.youtube",
    "sphinx_copybutton",
    "sphinx_prompt"
]

# duration extension helpst to show the duration of processing of Sphinx documentation.
# wagtail_theme extension helps to use the theme. (Looks familiar to UR page theme)
# doctest extension helps to show interactive Python sessions. Used with a doctest block directive
# Autodoc extension helps to understand the docstring definitions in the source code
# autosummary extension helps to generate a table of contents for the documentation from the docstring (function, methods, etc)
# Interphinx extension helps to link other documentation. To link to Python documentation we use intersphinx_mapping
# Todo extension helps to show TODO items in the documentation (Things to be done)
# myst_parser extension helps to parse Markdown files.


# Ayuda a crear la numeracion de los figuras automaticamente
# Debe ser true para poder usar numref
numfig = True

# Da formato para el nombre de las figuras.
# numfig_format = {'code-block': 'Code Snippet %s'}

show_authors = True

templates_path = ['_templates']
exclude_patterns = [
    '_build',
    'Thumbs.db',
    '.DS_Store',
    '_themes',
    '_themes/*',
    'Raya_Python_Library/controllers/folder_example_structure/*',
]


# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

# Ruta absoluta a la carpeta de archivos estáticos
static_dir = os.path.abspath('_static')

# To use the sphinx_wagtail_theme theme from Unlimited Robotics.

# html_theme = 'furo'
html_theme = 'sphinx_wagtail_theme'
html_static_path = ['_static']


# To include css in the docs
html_css_files = [
    'custom.css',
]

html_js_files = [
    'custom.js',
]

# To could point to some other URL like https://docs.python.org/3/
intersphinx_mapping = {'python': ('https://docs.python.org/3', None)}

# To include option_emphasise_placeholders in the docs
option_emphasise_placeholders = True


source_suffix = {
    '.rst': 'restructuredtext',
    '.md': 'markdown',
    '.txt': 'markdown',
}

# Customization for the sphinx_wagtail_theme
html_show_sphinx = False
html_logo = "_static/logo.png"
html_favicon = '_static/favicon.png'

html_show_sourcelink = False

# These are options specifically for the Wagtail Theme.
html_theme_options = dict(
    project_name="Raya Documentation",
    header_links="Top 1|http://example.com/one, Top 2|http://example.com/two",
    logo="logo.png",
    logo_dark="logo_white.png",
    logo_url="https://www.unlimited-robotics.com/",
    logo_alt="Raya Documentation",
    logo_height=720,
    logo_width=153,
    favicon="favicon2.png",
    github_url="https://github.com/ivanurco/raya_documentation2/tree/main/docs/source/",
    footer_links=",".join([
        "About Us|http://example.com/",
        "Contact|http://example.com/contact",
        "Legal|http://example.com/dev/null",
    ]),
    discord_url='https://discord.com/invite/Db7hrrePhn',
    github_url_project='https://github.com/ivanurco/raya_documentation2',
    developers_url='https://developers.unlimited-robotics.com/',
)
