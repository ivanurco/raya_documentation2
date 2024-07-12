==========================
is_pose_valid_q()
==========================

.. raw:: html

    <hr/>

Checks to see if the pose derived from the given arguments is valid for
the specified arm. Uses the quaternion system to describe orientations.

Reference
===========

Arguments
---------------

+---------------------------+-----------------+-----------------+---------------------------+
| Arguments                 | Type            | Default value   | Description               |
+===========================+=================+=================+===========================+
| arm                       | ``str``         |                 | The arm requested is not  |
|                           |                 |                 | a valid group.            |
+---------------------------+-----------------+-----------------+---------------------------+
| x                         | ``float``       |                 | X-coordinate of the goal  |
|                           |                 |                 | pose.                     |
+---------------------------+-----------------+-----------------+---------------------------+
| y                         | ``float``       |                 | Y-coordinate of the goal  |
|                           |                 |                 | pose.                     |
+---------------------------+-----------------+-----------------+---------------------------+
| z                         | ``float``       |                 | Z-coordinate of the goal  |
|                           |                 |                 | pose.                     |
+---------------------------+-----------------+-----------------+---------------------------+
| qx                        | ``float``       |                 | X-component of the        |
|                           |                 |                 | quaternion representing   |
|                           |                 |                 | the goal orientation.     |
+---------------------------+-----------------+-----------------+---------------------------+
| qy                        | ``float``       |                 | Y-component of the        |
|                           |                 |                 | quaternion representing   |
|                           |                 |                 | the goal orientation.     |
+---------------------------+-----------------+-----------------+---------------------------+
| qz                        | ``float``       |                 | Z-component of the        |
|                           |                 |                 | quaternion representing   |
|                           |                 |                 | the goal orientation.     |
+---------------------------+-----------------+-----------------+---------------------------+
| qw                        | ``float``       |                 | W-component of the        |
|                           |                 |                 | quaternion representing   |
|                           |                 |                 | the goal orientation.     |
+---------------------------+-----------------+-----------------+---------------------------+
| start_x                   | ``float``       | ``0.0``         | X-coordinate of the       |
|                           |                 |                 | starting pose.            |
+---------------------------+-----------------+-----------------+---------------------------+
| start_y                   | ``float``       | ``0.0``         | Y-coordinate of the       |
|                           |                 |                 | starting pose.            |
+---------------------------+-----------------+-----------------+---------------------------+
| start_z                   | ``float``       | ``0.0``         | Z-coordinate of the       |
|                           |                 |                 | starting pose.            |
+---------------------------+-----------------+-----------------+---------------------------+
| start_qx                  | ``float``       | ``0.0``         | X-component of the        |
|                           |                 |                 | quaternion representing   |
|                           |                 |                 | the starting orientation. |
+---------------------------+-----------------+-----------------+---------------------------+
| start_qy                  | ``float``       | ``0.0``         | Y-component of the        |
|                           |                 |                 | quaternion representing   |
|                           |                 |                 | the starting orientation. |
+---------------------------+-----------------+-----------------+---------------------------+
| start_qz                  | ``float``       | ``0.0``         | Z-component of the        |
|                           |                 |                 | quaternion representing   |
|                           |                 |                 | the starting orientation. |
+---------------------------+-----------------+-----------------+---------------------------+
| start_qw                  | ``float``       | ``1.0``         | W-component of the        |
|                           |                 |                 | quaternion representing   |
|                           |                 |                 | the starting orientation. |
+---------------------------+-----------------+-----------------+---------------------------+
| start_joints              | ``list``        | ``[]``          | List of starting joint    |
|                           |                 |                 | angles.                   |
+---------------------------+-----------------+-----------------+---------------------------+
| name_start_joints         | ``list``        | ``[]``          | List of names             |
|                           |                 |                 | corresponding to the      |
|                           |                 |                 | starting joint angles.    |
+---------------------------+-----------------+-----------------+---------------------------+
| use_start_pose            | ``bool``        | ``False``       | Whether to use the        |
|                           |                 |                 | starting pose.            |
+---------------------------+-----------------+-----------------+---------------------------+
| use_start_joints          | ``bool``        | ``False``       | Whether to use the        |
|                           |                 |                 | starting joint angles.    |
+---------------------------+-----------------+-----------------+---------------------------+
| units                     | ``ANGLE_UNIT``  | ``ANGLE_UNIT.   | Unit for angles (DEGREES  |
|                           |                 | DEGREES``       | or RADIANS).              |
+---------------------------+-----------------+-----------------+---------------------------+
| cartesian_path            | ``bool``        | ``False``       | Whether to follow a       |
|                           |                 |                 | cartesian path.           |
+---------------------------+-----------------+-----------------+---------------------------+
| tilt_constraint           | ``bool``        | ``False``       | Whether to apply a tilt   |
|                           |                 |                 | constraint.               |
+---------------------------+-----------------+-----------------+---------------------------+
| use_obstacles             | ``bool``        | ``False``       | Whether to use obstacles  |
|                           |                 |                 | during checking.          |
+---------------------------+-----------------+-----------------+---------------------------+
| cameras                   | ``list``        | ``[]``          | List of cameras.          |
+---------------------------+-----------------+-----------------+---------------------------+
| update_obstacles          | ``bool``        | ``False``       | Whether to update         |
|                           |                 |                 | obstacles.                |
+---------------------------+-----------------+-----------------+---------------------------+
| min_bbox_clear_obstacles  | ``list``        | ``[]``          | List of min bounding      |
|                           |                 |                 | boxes for clearing        |
|                           |                 |                 | obstacles.                |
+---------------------------+-----------------+-----------------+---------------------------+
| max_bbox_clear_obstacles  | ``list``        | ``[]``          | List of max bounding      |
|                           |                 |                 | boxes for clearing        |
|                           |                 |                 | obstacles.                |
+---------------------------+-----------------+-----------------+---------------------------+
| save_trajectory           | ``bool``        | ``False``       | Whether to save the       |
|                           |                 |                 | trajectory.               |
+---------------------------+-----------------+-----------------+---------------------------+
| name_trajectory           | ``str``         | ``''``          | Name of the trajectory.   |
+---------------------------+-----------------+-----------------+---------------------------+
| velocity_scaling          | ``float``       | ``0.0``         | Scaling factor for        |
|                           |                 |                 | velocity.                 |
+---------------------------+-----------------+-----------------+---------------------------+
| acceleration_scaling      | ``float``       | ``0.0``         | Scaling factor for        |
|                           |                 |                 | acceleration.             |
+---------------------------+-----------------+-----------------+---------------------------+
| wait                      | ``bool``        | ``False``       | Whether to wait for user  |
|                           |                 |                 | response.                 |
+---------------------------+-----------------+-----------------+---------------------------+
| callback_finish           | ``Callable``    | ``None``        | Callable function for     |
|                           |                 |                 | finish.                   |
+---------------------------+-----------------+-----------------+---------------------------+
| callback_finish_async     | ``Callable``    | ``None``        | Callable function for     |
|                           |                 |                 | finish (async).           |
+---------------------------+-----------------+-----------------+---------------------------+


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
| final_position        | ``float[]``           | The final joints      |
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
--------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``float``                         | Distance from the actual position |
|                                   | of the gripper to the final pose. |
+-----------------------------------+-----------------------------------+
| ``float``                         | Fraction of the trajectory        |
|                                   | realized.                         |
+-----------------------------------+-----------------------------------+
| ``float[]``                       | The final joints position in the  |
|                                   | trajectory to get the pose is     |
|                                   | being checked.                    |
+-----------------------------------+-----------------------------------+
| ``float[]``                       | The start joints position in the  |
|                                   | trajectory to get the pose is     |
|                                   | being checked.                    |
+-----------------------------------+-----------------------------------+

Exceptions
------------

-  ``RayaInvalidCallback``
-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsExternalException``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
===============

See the `Arms Check Pose Example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_check_pose>`__ 
and `Arms Check Pose Obstacles Example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_check_pose_obstacles>`__ to
check the validity of some poses.