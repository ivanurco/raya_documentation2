========================
get_joints_limits()
========================

.. raw:: html

    <hr/>


Get the limits for each joint of a specific arm.

Reference
===========

Arguments
-----------

+-----------------+-----------------+-----------------+-----------------+
| Argument        | Type            | Default         | Description     |
+=================+=================+=================+=================+
| arm             | ``string``      |                 | Name of the     |
|                 |                 |                 | arm.            |
+-----------------+-----------------+-----------------+-----------------+
| units           | ``ANGLE_UNIT``  | ``ANGLE         | unit for joint  |
|                 |                 | _UNIT.DEGREES`` | angles (DEGREES |
|                 |                 |                 | or RADIANS)     |
+-----------------+-----------------+-----------------+-----------------+

Return
---------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``Dict``                          | The keys are the name of the      |
|                                   | joints and the items are a list   |
|                                   | with their respective lower and   |
|                                   | upper limits for the selected     |
|                                   | arm.                              |
+-----------------------------------+-----------------------------------+

Exceptions
------------

-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
===================

Get the joints list of ``right`` arm
---------------------------------------

.. code:: python

   ...
   self.arms = self.enable_controller('arms')
   ...
   limits = self.arms.get_joints_limits('right_arm')  
   self.log.info('\t name\t\t\tlower limit\tupper_limit')
   for joint_name in limits:
       self.log.info(
           f' {joint_name}\t{limits[joint_name][0]:.2f}\t'
           f'\t{limits[joint_name][1]:.2f}'
       )
   ...

Output:

.. code-block:: bash

   name                                  lower limit  upper_limit
   arm_right_shoulder_rail_joint             0.00          0.40
   arm_right_shoulder_FR_joint            -131.78        131.78
   arm_right_shoulder_RL_joint               0.00        179.91
   arm_right_bicep_twist_joint             -89.95         89.95
   arm_right_bicep_FR_joint               -120.32        120.32
   arm_right_elbow_twist_joint            -180.00        180.00
   arm_right_elbow_FR_joint                -90.00         90.00
   arm_right_wrist_joint                   -89.95         89.95
