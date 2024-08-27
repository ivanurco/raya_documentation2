======
Tools
======

.. raw:: html

    <hr/>

Allows you to execute a tool script, in this case the only tool that is
available is fsmCreate.

Usage
=========

.. code-block:: bash

   rayasdk tools [-h] [tool] [args]

Optional arguments
--------------------

-  ``-h`` ``--help``: Show this help message and exit
-  ``tool``: Tool Name to execute
-  ``args``: Arguments of the script

Example
=========

.. code-block:: bash

   rayasdk tools fsmCreate -s state1 state2
