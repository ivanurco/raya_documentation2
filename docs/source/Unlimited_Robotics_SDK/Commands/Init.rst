=======
Init
=======

.. raw:: html

    <hr/>

Initialize Ra-Ya project in the current folder.

Usage
========

.. code-block:: bash

   rayasdk init [-h] [--app-id APP_ID] [--app-name APP_NAME]

Optional arguments
----------------------

-  ``--app-id APP_ID``: Application unique identificator (It has to be
   in snake_case format)
-  ``--app-name APP_NAME``: Application name
-  ``-h`` ``--help``: Show this help message and exit

Example
============

.. code-block:: bash

   rayasdk init

Will create the following tree in the current path

.. code-block:: bash

   .
   ├── doc
   ├── exec_settings.json
   ├── __main__.py
   ├── manifest.json
   ├── res
   └── src
       └── app.py

   3 directories, 4 files
