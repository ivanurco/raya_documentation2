Download the skills that are listed on the `manifest.json`, it will use pip as a dependency solver after that it is going to create the skills folder and download there the skills.

## Usage

```bash
rayasdk skills install_deps [-h] [--no-delete]
```

### Optional arguments

- `--no-delete` : It will not delete the contents of the skills folders

## Example

Using these values in the manifest

```json
# manifest.json
"dependencies": {
        "skills": [
            {
                "name": "attach_to_cart"
            }
        ]
    }
```

Then run this command

```bash
rayasdk skills install_deps
```

Will result in this tree inside the skills folder

```bash
skills
├── approach_to_tags
│   ├── approach_to_tags.py
│   ├── constants.py
│   ├── __init__.py
│   └── __pycache__
│       ├── approach_to_tags.cpython-310.pyc
│       ├── constants.cpython-310.pyc
│       └── __init__.cpython-310.pyc
├── approach_to_tags-2.0.0.dist-info
│   ├── INSTALLER
│   ├── METADATA
│   ├── RECORD
│   ├── top_level.txt
│   └── WHEEL
├── attach_to_cart
│   ├── attach_to_cart.py
│   ├── constants.py
│   ├── __init__.py
│   └── __pycache__
│       ├── attach_to_cart.cpython-310.pyc
│       ├── constants.cpython-310.pyc
│       └── __init__.cpython-310.pyc
├── attach_to_cart-0.1.4.dist-info
│   ├── INSTALLER
│   ├── METADATA
│   ├── RECORD
│   ├── REQUESTED
│   ├── top_level.txt
│   └── WHEEL
└── __init__.py
```
