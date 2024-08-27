===============================
is_joints_position_valid()
===============================

.. raw:: html

    <hr/>

Check if the given angles for the corresponding joints are valid for the
specified arm.

Reference
=============

Arguments
-----------

+---------------------------+-----------------+-----------------+---------------------------+
| Arguments                 | Type            | Default value   | Description               |
+===========================+=================+=================+===========================+
| arm                       | ``str``         |                 | Name of the arm           |
|                           |                 |                 | whose joints to check.    |
+---------------------------+-----------------+-----------------+---------------------------+
| name_joints               | ``list``        |                 | List of the names (str)   |
|                           |                 |                 | of every joint to move.   |
+---------------------------+-----------------+-----------------+---------------------------+
| angle_joints              | ``list``        |                 | List of the angles to     |
|                           |                 |                 | move the joint to. The    |
|                           |                 |                 | joint of each angle is    |
|                           |                 |                 | the one with the          |
|                           |                 |                 | corresponding index in    |
|                           |                 |                 | name_joints.              |
+---------------------------+-----------------+-----------------+---------------------------+
| units                     | ``ANGLE_UNIT``  | ``ANGLE_UNIT.   | Angles unit, either       |
|                           |                 | DEGREES``       | DEGREES or RADIANS.       |
+---------------------------+-----------------+-----------------+---------------------------+
| callback_finish           | ``Callable``    | ``None``        | Function to be called     |
|                           |                 |                 | once pose is finished     |
|                           |                 |                 | being checked.            |
+---------------------------+-----------------+-----------------+---------------------------+
| callback_finish_async     | ``Callable``    | ``None``        | Function to be called     |
|                           |                 |                 | once pose is finished     |
|                           |                 |                 | being checked (async).    |
+---------------------------+-----------------+-----------------+---------------------------+
| wait                      | ``bool``        | ``False``       | If True, program will     |
|                           |                 |                 | wait until gripper is     |
|                           |                 |                 | finished being opened     |
|                           |                 |                 | before continuing with    |
|                           |                 |                 | other code. If False,     |
|                           |                 |                 | command will continue     |
|                           |                 |                 | running asynchronously.   |
+---------------------------+-----------------+-----------------+---------------------------+


Callback Finish Arguments
-----------------------------

+-----------+-----------+--------------------------------------------+
| Argument  | Type      | Description                                |
+===========+===========+============================================+
| error     | ``int``   | Code for the type of error encountered (0  |
|           |           | if no error).                              |
+-----------+-----------+--------------------------------------------+
| error_msg | ``str``   | Details regarding the error (empty if no   |
|           |           | error).                                    |
+-----------+-----------+--------------------------------------------+
| distance  | ``float`` | Distance from the actual position of the   |
|           |           | arm.                                       |
+-----------+-----------+--------------------------------------------+

Return
---------

+-----------+---------------------------------------------------------+
| Type      | Description                                             |
+===========+=========================================================+
| ``float`` | Distance from the actual position of the gripper to the |
|           | final pose.                                             |
+-----------+---------------------------------------------------------+

Exceptions
------------

-  ``RayaInvalidCallback``
-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsInvalidJointName``
-  ``RayaArmsExternalException``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
==============

See the `Arms: Check Position Joints <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_check_position_joints>`__ to check the validity of
some joints.
