==========
Connect
==========

.. raw:: html

    <hr/>

Connect the current Raya project to a robot or simulator. The connection
settings are global and are stored in ``~/.ur/connection.json``

Usage
=======

.. code-block:: bash

   rayasdk connect [-h] [--robot-id ROBOT_ID | --robot-ip ROBOT_IP | --simulator]

Required mutually exclusive arguments
----------------------------------------

-  ``--robot-id ROBOT_ID``: Robot identificator (from scan list).
-  ``--robot-ip ROBOT_IP``: Robot ip (from scan list or if you know it).
-  ``--simulator``: Connect the project to the simulator.

Optional arguments
----------------------------------------

-  ``-h`` ``--help``: Show this help message and exit

Example
=============

Connection to robot
------------------------

.. code-block:: bash

   rayasdk connect --robot-ip 192.xxx.xxx.xxx

Output

.. code-block:: bash

   SSH key found
   Pushing key to remote server
   You have successfully connected to JETSON_ORIN_BOGOTA

Connection to simulator
--------------------------

.. code-block:: bash

   rayasdk connect --simulator

Output

.. code-block:: bash

   You have successfully connected to the simulator
