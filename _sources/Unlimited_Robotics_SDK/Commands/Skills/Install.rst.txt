=========
Install
=========

.. raw:: html

    <hr/>

Add a new dependency of a skill in the app, it will add the necessary
fields in the manifest.json and download the necessary files into the
skills folder.

Usage
=======

.. code:: bash

   rayasdk skills install <skill_name> <version>

Arguments
-----------

-  ``skill_name`` : Name of the skill
-  ``version`` : Version to use

Leave the version argument empty if you want to always use the latest
version **(it is going to use the latest stable version)** to specify
the version of the skill check:

`PEP 508 – Dependency specification for Python Software Packages \|
peps.python.org <https://peps.python.org/pep-0508/>`__

Example
===========

.. code-block:: bash

   rayasdk skills install approach_to_tags '==1.0.1'

This is going to add the dependency to the ``manifest.json`` file of
your app, you will see that now is going to have something like

.. code-block:: bash

   {
   ...
   "dependencies": {
           "skills": [
               {
                   "name": "approach_to_tags",
                   "version": "==1.0.1"
               }
           ]
       }
   ...
   }

You are going to have a new folder inside your app called skills,

.. code-block:: bash

   .
   ├── exec_settings.json
   ...
   ├── skills
   │   ├── approach_to_tags
   │   │   ├── approach_to_tags.py
   │   │   ├── constants.py
   │   │   ├── __init__.py
   │   └── __init__.py
   └── src
       ├── app.py
       └── ...

This is going to add the dependency to the ``manifest.json`` file of
your app, you will see that now is going to have something like

.. code-block:: bash

   {
   ...
   "dependencies": {
           "skills": [
               {
                   "name": "approach_to_tags",
                   "version": "==1.0.1"
               }
           ]
       }
   ...
   }

You are going to have a new folder inside your app called skills,

.. code-block:: bash

   .
   ├── exec_settings.json
   ...
   ├── skills
   │   ├── approach_to_tags
   │   │   ├── approach_to_tags.py
   │   │   ├── constants.py
   │   │   ├── __init__.py
   │   └── __init__.py
   └── src
       ├── app.py
       └── ...

To see what are the available versions that you can use check this
`Skills page <https://unlimited-robotics.github.io/skills/>`__
