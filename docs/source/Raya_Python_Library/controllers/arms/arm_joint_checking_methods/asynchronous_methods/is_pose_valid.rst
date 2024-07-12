=====================
is_pose_valid()
=====================

.. raw:: html

    <hr/>

Checks to see if the pose derived from the given arguments is valid for
the specified arm. Uses the euler representation (roll, pitch, and yaw)
to describe orientations.

Reference
============

Arguments
-----------

+---------------------------+-----------------+------------------------+--------------------------+
| Arguments                 | Type            | Default value          | Description              |
+===========================+=================+========================+==========================+
| arm                       | ``str``         |                        | The arm to check the     |
|                           |                 |                        | pose validity for.       |
+---------------------------+-----------------+------------------------+--------------------------+
| x                         | ``float``       |                        | X-coordinate of the pose |
|                           |                 |                        | to check.                |
+---------------------------+-----------------+------------------------+--------------------------+
| y                         | ``float``       |                        | Y-coordinate of the pose |
|                           |                 |                        | to check.                |
+---------------------------+-----------------+------------------------+--------------------------+
| z                         | ``float``       |                        | Z-coordinate of the pose |
|                           |                 |                        | to check.                |
+---------------------------+-----------------+------------------------+--------------------------+
| roll                      | ``float``       |                        | Roll angle of the pose   |
|                           |                 |                        | to check.                |
+---------------------------+-----------------+------------------------+--------------------------+
| pitch                     | ``float``       |                        | Pitch angle of the pose  |
|                           |                 |                        | to check.                |
+---------------------------+-----------------+------------------------+--------------------------+
| yaw                       | ``float``       |                        | Yaw angle of the pose    |
|                           |                 |                        | to check.                |
+---------------------------+-----------------+------------------------+--------------------------+
| start_x                   | ``float``       | ``0.0``                | Starting X-coordinate    |
|                           |                 |                        | for the validity check.  |
+---------------------------+-----------------+------------------------+--------------------------+
| start_y                   | ``float``       | ``0.0``                | Starting Y-coordinate    |
|                           |                 |                        | for the validity check.  |
+---------------------------+-----------------+------------------------+--------------------------+
| start_z                   | ``float``       | ``0.0``                | Starting Z-coordinate    |
|                           |                 |                        | for the validity check.  |
+---------------------------+-----------------+------------------------+--------------------------+
| start_roll                | ``float``       | ``0.0``                | Starting roll angle for  |
|                           |                 |                        | the validity check.      |
+---------------------------+-----------------+------------------------+--------------------------+
| start_pitch               | ``float``       | ``0.0``                | Starting pitch angle for |
|                           |                 |                        | the validity check.      |
+---------------------------+-----------------+------------------------+--------------------------+
| start_yaw                 | ``float``       | ``0.0``                | Starting yaw angle for   |
|                           |                 |                        | the validity check.      |
+---------------------------+-----------------+------------------------+--------------------------+
| start_joints              | ``list``        | ``[]``                 | Starting joint values    |
|                           |                 |                        | for the validity check.  |
+---------------------------+-----------------+------------------------+--------------------------+
| name_start_joints         | ``list``        | ``[]``                 | Names of the starting    |
|                           |                 |                        | joints for the validity  |
|                           |                 |                        | check.                   |
+---------------------------+-----------------+------------------------+--------------------------+
| use_start_pose            | ``bool``        | ``False``              | Whether to use the       |
|                           |                 |                        | starting pose for the    |
|                           |                 |                        | validity check.          |
+---------------------------+-----------------+------------------------+--------------------------+
| use_start_joints          | ``bool``        | ``False``              | Whether to use the       |
|                           |                 |                        | starting joints for the  |
|                           |                 |                        | validity check.          |
+---------------------------+-----------------+------------------------+--------------------------+
| cartesian_path            | ``bool``        | ``False``              | Whether to follow a      |
|                           |                 |                        | cartesian path.          |
+---------------------------+-----------------+------------------------+--------------------------+
| tilt_constraint           | ``bool``        | ``False``              | Whether to apply a tilt  |
|                           |                 |                        | constraint.              |
+---------------------------+-----------------+------------------------+--------------------------+
| units                     | ``ANGLE_UNIT``  | ``ANGLE_UNIT.DEGREES`` | Unit for angles (DEGREES |
|                           |                 |                        | or RADIANS).             |
+---------------------------+-----------------+------------------------+--------------------------+
| use_obstacles             | ``bool``        | ``False``              | Whether to use obstacles |
|                           |                 |                        | during execution.        |
+---------------------------+-----------------+------------------------+--------------------------+
| cameras                   | ``list``        | ``[]``                 | List of cameras.         |
+---------------------------+-----------------+------------------------+--------------------------+
| update_obstacles          | ``bool``        | ``False``              | Whether to update        |
|                           |                 |                        | obstacles.               |
+---------------------------+-----------------+------------------------+--------------------------+
| min_bbox_clear_obstacles  | ``list``        | ``[]``                 | List of minimum bounding |
|                           |                 |                        | boxes for clearing       |
|                           |                 |                        | obstacles.               |
+---------------------------+-----------------+------------------------+--------------------------+
| max_bbox_clear_obstacles  | ``list``        | ``[]``                 | List of maximum bounding |
|                           |                 |                        | boxes for clearing       |
|                           |                 |                        | obstacles.               |
+---------------------------+-----------------+------------------------+--------------------------+
| save_trajectory           | ``bool``        | ``False``              | Whether to save the      |
|                           |                 |                        | trajectory.              |
+---------------------------+-----------------+------------------------+--------------------------+
| name_trajectory           | ``str``         | ``''``                 | Name of the trajectory.  |
+---------------------------+-----------------+------------------------+--------------------------+
| velocity_scaling          | ``float``       | ``0.0``                | Scaling factor for       |
|                           |                 |                        | velocity.                |
+---------------------------+-----------------+------------------------+--------------------------+
| acceleration_scaling      | ``float``       | ``0.0``                | Scaling factor for       |
|                           |                 |                        | acceleration.            |
+---------------------------+-----------------+------------------------+--------------------------+
| callback_finish           | ``Callable``    | ``None``               | Callable function for    |
|                           |                 |                        | finish.                  |
+---------------------------+-----------------+------------------------+--------------------------+
| callback_finish_async     | ``Callable``    | ``None``               | Callable function for    |
|                           |                 |                        | finish.                  |
+---------------------------+-----------------+------------------------+--------------------------+
| wait                      | ``bool``        | ``False``              | Whether to wait for user |
|                           |                 |                        | response.                |
+---------------------------+-----------------+------------------------+--------------------------+


Callback Finish Arguments
----------------------------

+-----------------------+-----------------------+-----------------------+
| Argument              | Type                  | Description           |
+=======================+=======================+=======================+
| error                 | ``int``               | Code for the type of  |
|                       |                       | error encountered (0  |
|                       |                       | if no error).         |
+-----------------------+-----------------------+-----------------------+
| error_msg             | ``str``               | Details regarding the |
|                       |                       | error (empty if no    |
|                       |                       | error).               |
+-----------------------+-----------------------+-----------------------+
| distance              | ``float``             | Distance from the     |
|                       |                       | actual position of    |
|                       |                       | the gripper to the    |
|                       |                       | final pose.           |
+-----------------------+-----------------------+-----------------------+
| fraction              | ``float``             | Fraction of the       |
|                       |                       | trajectory realized.  |
+-----------------------+-----------------------+-----------------------+
| final_position        | ``float []``          | The final joints      |
|                       |                       | position in the       |
|                       |                       | trajectory to get the |
|                       |                       | pose is being         |
|                       |                       | checked.              |
+-----------------------+-----------------------+-----------------------+
| start_position        | ``float[]``           | The start joints      |
|                       |                       | position in the       |
|                       |                       | trajectory to get the |
|                       |                       | pose is being         |
|                       |                       | checked.              |
+-----------------------+-----------------------+-----------------------+

Return
-------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``float``                         | Distance from the actual position |
|                                   | of the gripper to the final pose. |
+-----------------------------------+-----------------------------------+
| ``float``                         | Fraction of the trajectory        |
|                                   | realized.                         |
+-----------------------------------+-----------------------------------+
| ``float []``                      | The final joints position in the  |
|                                   | trajectory to get the pose is     |
|                                   | being checked.                    |
+-----------------------------------+-----------------------------------+
| ``float []``                      | The start joints position in the  |
|                                   | trajectory to get the pose is     |
|                                   | being checked.                    |
+-----------------------------------+-----------------------------------+

Exceptions
--------------

-  ``RayaInvalidCallback``
-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsExternalException``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
================

See the `Arms Check Pose Example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_check_pose>`__ 
and `Arms Check Pose Obstacles Example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_check_pose_obstacles>`__ to
check the validity of some poses.
