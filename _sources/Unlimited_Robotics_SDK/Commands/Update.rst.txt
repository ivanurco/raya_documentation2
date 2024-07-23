=======
Update
=======

.. raw:: html

    <hr/>

Check for a partial or full download of the Ra-ya Simulator and the
Raya-os Image, This will create the following structure in ``~/.ur``

.. code-block:: bash

   ~/.ur
   └── simulator
       ├── apps
       ├── data_apps
       ├── data_apps_devel
       ├── raya_simulator_1.2.4_linux
       └── ur_root

Usage
========

.. code-block:: bash

   rayasdk update [-h]

Optional arguments
-----------------------

-  ``-h`` ``--help``: Show this help message and exit

Example
=========

.. code-block:: bash

   rayasdk update

Output

.. code-block:: bash

   Checking for updates...
   Checking for full update...
   ...
   Downloading Ra-Ya simulator v1.0.4...
   ...
   Extracting...
   Simulator updated successfully
   Removing old Ra-Ya containers and images...
   Docker image 'raya_os:1.0.10' not found.
   Downloading Ra-Ya OS v1.0.10 (only once)...
   Copying gs://raya_files/Common/TestingVCS/raya_os_1.0.10.zip...
   - [1/1 files][  1.8 GiB/  1.8 GiB] 100% Done   3.8 MiB/s ETA 00:00:00           
   Operation completed over 1 objects/1.8 GiB.                                      
   Extracting Ra-Ya OS image.
   Creating image...
   ...
   Loaded image: unlimited_robotics/raya_os/gary_unity:1.0.10
   Update completed successfully.
