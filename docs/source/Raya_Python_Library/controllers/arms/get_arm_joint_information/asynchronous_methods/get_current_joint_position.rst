==================================
get_current_joint_position()
==================================

.. raw:: html

    <hr/>

Retrieve the current joint position of a specific arm.

Reference
==========

Arguments
-----------

+-----------+----------------+-----------------+-----------------+
| Arguments | Type           | Default value   | Description     |
+===========+================+=================+=================+
| arm       | ``str``        |                 | the arm to      |
|           |                |                 | retrieve the    |
|           |                |                 | current pose    |
|           |                |                 | for             |
+-----------+----------------+-----------------+-----------------+
| joint     | ``str``        |                 | Name of the     |
|           |                |                 | joint           |
+-----------+----------------+-----------------+-----------------+
| units     | ``ANGLE_UNIT`` | ``ANGLE         | unit for angles |
|           |                | _UNIT.DEGREES`` | (DEGREES or     |
|           |                |                 | RADIANS)        |
+-----------+----------------+-----------------+-----------------+

Return
---------

========= ===========================
Type      Description
========= ===========================
``Float`` the current joint position.
========= ===========================

Exceptions
-------------

-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsInvalidJointName``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
=================

.. code-block:: python

   import json
   ...
   self.arms = self.enable_controller('arms')
   ...
   current_joint_position = await self.arms.get_current_joint_position(arm='right_arm', joint='arm_right_shoulder_rail_joint') 
   self.log.info(current_joint_position)

   ...

Output:

.. code-block:: bash

   0.0
