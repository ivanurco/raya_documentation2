=======================
set_pose_q()
=======================

.. raw:: html

    <hr/>

Sets the end effector of one arm to the specified coordinates and
rotations.Uses the quaternion system to specify orientation.

Reference
============

Arguments
----------

========================== ============== ============== ======================================================== 
Arguments                  Type           Default value   Description                                             
========================== ============== ============== ======================================================== 
arm                        ``str``                          The arm to set the pose for.                            
x                          ``float``                        X-coordinate of the pose.                               
y                          ``float``                        Y-coordinate of the pose.                              
z                          ``float``                        Z-coordinate of the pose.                              
qx                         ``float``                        X-component of the quaternion orientation of the pose.  
qy                         ``float``                        Y-component of the quaternion orientation of the pose.  
qz                         ``float``                        Z-component of the quaternion orientation of the pose.  
qw                         ``float``                        W-component of the quaternion orientation of the pose.  
cartesian_path             ``bool``       ``False``         Whether to follow a cartesian path.                     
tilt_constraint            ``bool``       ``False``         Whether to apply a tilt constraint.                     
use_obstacles              ``bool``       ``False``         Whether to use obstacles during execution.              
cameras                    ``list``       ``[]``            List of cameras.                                        
update_obstacles           ``bool``       ``False``         Whether to update obstacles.                            
min_bbox_clear_obstacles   ``list``       ``[]``            List of minimum bounding boxes for clearing obstacles.  
max_bbox_clear_obstacles   ``list``       ``[]``            List of maximum bounding boxes for clearing obstacles.  
save_trajectory            ``bool``       ``False``         Whether to save the trajectory.                         
name_trajectory            ``str``        ``''``            Mame of the trajectory.                                 
velocity_scaling           ``float``      ``0.0``           Scaling factor for velocity.                            
acceleration_scaling       ``float``      ``0.0``           Scaling factor for acceleration.                        
callback_feedback          ``Callable``   ``None``          Callable function for feedback.                         
callback_feedback_async    ``Callable``   ``None``          Callable function for feedback.                         
callback_finish            ``Callable``   ``None``          Callable function for finish.                           
callback_finish_async      ``Callable``   ``None``          Callable function for finish.                           
wait                       ``bool``       ``False``         Whether to wait for user response.                      
========================== ============== ============== ========================================================


Return
--------

========= ====================================
Type      Description
========= ====================================
``float`` Fraction of the trajectory realized.
========= ====================================

Exceptions
------------

-  ``RayaInvalidCallback``
-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsExternalException``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Feedbacks
-----------

-  [1] The arm is in execution of the command
-  [3] Planning of the trajectory in progress
-  [4] Updating obstacles in progress

See the :ref:`complete list of arms feedbacks <arms_feedbacks>`

Callback Arguments
---------------------

callback_feedback
^^^^^^^^^^^^^^^^^

+-----------------------+-----------------------+-----------------------+
| Argument              | Type                  | Description           |
+=======================+=======================+=======================+
| feedback_code         | ``int``               | Code for the type of  |
|                       |                       | feedback              |
+-----------------------+-----------------------+-----------------------+
| feedback_msg          | ``str``               | Details regarding the |
|                       |                       | feedback code (empty  |
|                       |                       | if no error).         |
+-----------------------+-----------------------+-----------------------+
| arm                   | ``str``               | Name of the arm.      |
+-----------------------+-----------------------+-----------------------+
| percentage            | ``float``             | Percent of movement   |
|                       |                       | completed until       |
|                       |                       | target pose is        |
|                       |                       | reached.              |
+-----------------------+-----------------------+-----------------------+

callback_finish
^^^^^^^^^^^^^^^

callback_finish
^^^^^^^^^^^^^^^

========= ========= =======================================================
Argument  Type      Description
========= ========= =======================================================
error     ``int``   Code for the type of error encountered (0 if no error).
error_msg ``str``   Details regarding the error (empty if no error).
fraction  ``float`` Fraction of the trajectory realized.
========= ========= =======================================================

Usage Example
==================

See the `Arms Set Pose Example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_set_pose>`__ and `Arms Set
Pose Obstacles Example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_set_pose_obstacles>`__ to check
some valid uses.

