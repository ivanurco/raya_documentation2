=======================================
get_current_joints_position()
=======================================

.. raw:: html

    <hr/>

Retrieves the current joints position of a specific arm.

Reference
===========

Arguments
------------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   | Description     |
+=================+=================+=================+=================+
| arm             | ``str``         |                 | The arm to      |
|                 |                 |                 | retrieve the    |
|                 |                 |                 | current pose    |
|                 |                 |                 | for.            |
+-----------------+-----------------+-----------------+-----------------+
| units           | ``ANGLE_UNIT``  | ``ANGLE         | Unit for angles |
|                 |                 | _UNIT.DEGREES`` | (DEGREES or     |
|                 |                 |                 | RADIANS).       |
+-----------------+-----------------+-----------------+-----------------+
| as_dict         | ``bool``        | ``False``       | Change the      |
|                 |                 |                 | output format   |
|                 |                 |                 | of the method,  |
|                 |                 |                 | review return   |
|                 |                 |                 | section for     |
|                 |                 |                 | more            |
|                 |                 |                 | information.    |
+-----------------+-----------------+-----------------+-----------------+

Return
----------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``dict``                          | Retrieves the current joint       |
|                                   | positions If as_dict parameter is |
|                                   | set in True the function returns  |
|                                   | a dict with each name as key and  |
|                                   | current position as value,        |
|                                   | otherwise returns a dict with two |
|                                   | keys names and values, where the  |
|                                   | items are a list with the joints  |
|                                   | names and a list with the current |
|                                   | joints position.                  |
+-----------------------------------+-----------------------------------+

Exceptions
------------

-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
===============

as_dict parameter in False
----------------------------

.. code-block:: python

   import json
   ...
   self.arms = self.enable_controller('arms')
   ...
   current_joints_position = await self.arms.get_current_joints_position('right_arm') 
   print(json.dumps(current_joints_position, indent=2))
   ...

Output

.. code-block:: json

   {
     "names": [
       "arm_right_shoulder_rail_joint",
       "arm_right_shoulder_FR_joint",
       "arm_right_shoulder_RL_joint",
       "arm_right_bicep_twist_joint",
       "arm_right_bicep_FR_joint",
       "arm_right_elbow_twist_joint",
       "arm_right_elbow_FR_joint",
       "arm_right_wrist_joint"
     ],
     "values": [
       0.0,
       0.0,
       0.0,
       0.0,
       0.0,
       0.0,
       0.0,
       0.0
     ]
   }

as_dict parameter in True
------------------------------

.. code-block:: python

   import json
   ...
   self.arms = self.enable_controller('arms')
   ...
   current_joints_position = await self.arms.get_current_joints_position('right_arm', as_dict=True) 
   self.log.info(json.dumps(current_joints_position, indent=2))
   ...

Output:

.. code-block:: bash

   {
     "arm_right_shoulder_rail_joint": 0.0,
     "arm_right_shoulder_FR_joint": 0.0,
     "arm_right_shoulder_RL_joint": 0.0,
     "arm_right_bicep_twist_joint": 0.0,
     "arm_right_bicep_FR_joint": 0.0,
     "arm_right_elbow_twist_joint": 0.0,
     "arm_right_elbow_FR_joint": 0.0,
     "arm_right_wrist_joint": 0.0,
   }
