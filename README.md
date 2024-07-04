# To install project locally run the next instructions

We supposed that you clone the repository in your computer.

1. Place into the root folder project

2. Create a virtual enviroment:

```python
python -m venv .venv
```

3. Activte the virtual enviroment:

```python
source .venv/bin/activate
```

4. Iniatialize the subdmodules:

```git
git submodule update --init
```

5. Update the submodule:

```git
git submodule update --remote
```  

6. Install all Python requeriments

```python
pip install -r requirements.txt
```

- Proceed to install the theme with the instructions from README_Theme.md

- If the theme was already created and installed just build the project into the root folder.

```bash
sphinx-build -M html ./docs/source/ ./docs/build/
```

- And run the project with:

```bash
sphinx-autobuild ./docs/source/ ./docs/build/html
```

Alternative run build_first_time.sh script into the root folder