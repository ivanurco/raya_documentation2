==================================
get_current_pose()
==================================

.. raw:: html

    <hr/>

Retrieves the current pose of a specified arm.

Reference
============

Arguments
------------

+-----------+----------------+-----------------+-----------------+
| Arguments | Type           | Default value   | Description     |
+===========+================+=================+=================+
| arm       | ``str``        |                 | The arm to      |
|           |                |                 | retrieve the    |
|           |                |                 | current pose    |
|           |                |                 | for .           |
+-----------+----------------+-----------------+-----------------+
| units     | ``ANGLE_UNIT`` | ``ANGLE         | Unit for angles |
|           |                | _UNIT.DEGREES`` | (DEGREES or     |
|           |                |                 | RADIANS).       |
+-----------+----------------+-----------------+-----------------+

Return
--------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``dict``                          | The Keys are ``orientation`` a    |
|                                   | list with the representation in   |
|                                   | euler degrees (roll , pitch, yaw) |
|                                   | in degrees or radians following   |
|                                   | the given units parameter and     |
|                                   | ``position`` a list with x, y, z  |
|                                   | values.                           |
+-----------------------------------+-----------------------------------+

Exceptions
--------------

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
================

.. code-block:: python

   import json
   ...
   self.arms = self.enable_controller('arms')
   ...
   current_pose = await self.arms.get_current_pose('right_arm') 
   self.log.info(json.dumps(current_pose, indent=2))

Output:

.. code-block:: json

   {
     "orientation": [
       90.0,
       90.0,
       0.0
     ],
     "position": [
       -0.004348154834847619,
       -0.2562139368347951,
       0.2880307131321761
     ]
   }
