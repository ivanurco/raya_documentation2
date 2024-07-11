=====================================
get_joints_list()
=====================================

.. raw:: html

    <hr/>


Get the list of joints of a specific arm.

Reference
===========

Arguments
------------

======== ========== ================
Argument Type       Description
======== ========== ================
arm      ``string`` Name of the arm.
======== ========== ================

Return
---------

======== =============================================
Type     Description
======== =============================================
``List`` The names of the joints for the selected arm.
======== =============================================

Exceptions
------------

-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
==============

Get the joints list of ``right`` arm
---------------------------------------

.. code:: python

   ...
   self.arms = self.enable_controller('arms')
   ...
   joints_list = self.arms.get_joints_list("right")
   self.log.info(joints_list)
   ...

Output:

.. code:: python

   ['bicep_forearm_flex', 'forarm_rot', 'shoulder_bicep', 'shoulder_rail', 'shoulder_rot', 'wrist_flex', 'wrist_rot']
