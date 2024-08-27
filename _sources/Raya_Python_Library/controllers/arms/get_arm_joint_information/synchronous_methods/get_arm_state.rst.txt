==================================
get_arm_state()
==================================

.. raw:: html

    <hr/>

Retrieve information about the current state of a specific arm.

Reference
===========

Arguments
-----------

======== ======= =============================================
Argument Type    Description
======== ======= =============================================
arm      ``str`` Name of the arm whose state will be returned.
======== ======= =============================================

Return
---------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``Dict``                          | Object with information about the |
|                                   | arms’ joints: their names, lower  |
|                                   | and upper limits and current      |
|                                   | value of the position, velocity,  |
|                                   | and effort.                       |
+-----------------------------------+-----------------------------------+

See the example below for more information.

Exceptions
------------

-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
===============

.. code-block:: python

   import json
   ...
   self.arms = self.enable_controller('arms')
   ...
   right_arm_state = self.arms.get_arm_state('right_arm')
   self.log.info(json.dumps(right_arm_state, indent=2))
   ...

Output:

.. code-block:: bash

    {
        "name":[
            "arm_right_shoulder_rail_joint",
            "arm_right_shoulder_FR_joint",
            "arm_right_shoulder_RL_joint",
            "arm_right_bicep_twist_joint",
            "arm_right_bicep_FR_joint",
            "arm_right_elbow_twist_joint",
            "arm_right_elbow_FR_joint",
            "arm_right_wrist_joint"
        ],
        "lower_limits":[
            “0.0”,
            “-1.57”,
            “0.0”,
            “-1.57”,
            “-2.1”,
            “-3.14159”,
            “-1.5708”,
            “-1.57”
        ],
        "upper_limits":[
            “0.0”,
            “1.57”,
            “0.78”,
            “1.57”,
            “2.1”,
            “3.14159”,
            “1.5708”,
            “1.57”
        ],
        "position":[
            0.0004575973648261278,
            0.0007359736482612789,
            3.945329808630049e-06,
            0.0003977831220254302,
            0.0006478230352513492,
            0.0021204533986747265,
            5.809607318951748e-05,
            -5.764562956755981e-06
        ],
        "velocity":[
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0
        ],
        "effort":[
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0
        ]
    }
