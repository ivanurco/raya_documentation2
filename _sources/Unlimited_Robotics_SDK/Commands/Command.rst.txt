==========
Command
==========

.. raw:: html

    <hr/>

Executes a script inside RayaOS, this will be executed under the user
rayadevel, and it will execute the scripts that are located in
``/opt/raya_os/commands``.

Usage
=========

.. code-block:: bash

   rayasdk command [-h] [name] [args]

Optional arguments
--------------------

-  ``-h`` ``--help``: Show this help message and exit
-  ``name``: Name of the script without ``.sh``
-  ``args``: Arguments of the script

Example
=========

.. code-block:: bash

   rayasdk command date -now

Inside the container the commands that are going to be executed will
look like:

.. code-block:: bash

   cd /opt/raya_os/commands
   ./date.sh -now
