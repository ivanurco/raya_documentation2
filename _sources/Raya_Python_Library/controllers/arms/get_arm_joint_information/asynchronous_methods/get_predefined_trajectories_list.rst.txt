======================================
get_predefined_trajectories_list()
======================================

.. raw:: html

    <hr/>

Retrieve all the predefined trajectories.

Reference
============

Arguments
-----------

``None``

Return
---------

======== =========================================
Type     Description
======== =========================================
``List`` The name of each predefined trajectories.
======== =========================================

Exceptions
--------------

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
================

.. code-block:: python

   ...
   self.arms = self.enable_controller('arms')
   ...
   predefined_trajectories = self.arms.get_list_predefined_trajectories()
   self.log.info(predefined_trajectories)
   ...

Output:

.. code-block:: bash

   ['pre_grasping_bottle', 'grasping_bottle',  'post_grasping_bottle']
