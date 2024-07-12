================================
execute_poses_array_q()
================================

.. raw:: html
    
    <hr/>

Take the end effector of the arm to a different coordinates based on a
list of poses. Uses the quaternion system to define the orientation.

Reference
===========

Arguments
--------------------

========================== ================ ======================== ====================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================== 
Arguments                  Type             Default value            Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
========================== ================ ======================== ====================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================== 
arm                        ``str``                                   The arm requested is not a valid group.                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
poses                      ``list``                                  List of poses. Each pose is represented as a dictionary with the following fields: "x": X-coordinate of the pose's position. "y": Y-coordinate of the pose's position. "z": Z-coordinate of the pose's position. "qx": X-component of the quaternion representing the pose's orientation. "qy": Y-component of the quaternion representing the pose's orientation. "qz": Z-component of the quaternion representing the pose's orientation. "qw": W-component of the quaternion representing the pose's orientation.  
units                      ``ANGLE_UNIT``   ``ANGLE_UNIT.DEGREES``   Unit for angles (DEGREES or RADIANS).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
cartesian_path             ``bool``         ``False``                Whether to follow a cartesian path.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
tilt_constraint            ``bool``         ``False``                Whether to apply a tilt constraint.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
use_obstacles              ``bool``         ``False``                Whether to use obstacles during execution.                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
cameras                    ``list``         ``[]``                   List of cameras.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
update_obstacles           ``bool``         ``False``                Whether to update obstacles.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
min_bbox_clear_obstacles   ``list``         ``[]``                   List of minimum bounding boxes for clearing obstacles.                                                                                                                                                                                                                                                                                                                                                                                                                                                                
max_bbox_clear_obstacles   ``list``         ``[]``                   List of maximum bounding boxes for clearing obstacles.                                                                                                                                                                                                                                                                                                                                                                                                                                                                
save_trajectory            ``bool``         ``False``                Whether to save the trajectory.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
name_trajectory            ``str``          ``''``                   Name of the trajectory.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
velocity_scaling           ``float``        ``0.0``                  Scaling factor for velocity.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
acceleration_scaling       ``float``        ``0.0``                  Scaling factor for acceleration.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
callback_feedback          ``Callable``     ``None``                 Callable function for feedback.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
callback_feedback_async    ``Callable``     ``None``                 Callable function for feedback.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
callback_finish            ``Callable``     ``None``                 Callable function for finish.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
callback_finish_async      ``Callable``     ``None``                 Callable function for finish.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
wait                       ``bool``         ``False``                Whether to wait for user response.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
========================== ================ ======================== ====================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================== 

Return
--------------------

===== ===================================
Type  Description
===== ===================================
float Fraction of the trajectory realized
===== ===================================

Exceptions
--------------------

-  ``RayaInvalidCallback``
-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsExternalException``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Feedbacks
--------------------

-  [1] The arm is in execution of the command
-  [3] Planning of the trajectory in progress
-  [4] Updating obstacles in progress

See the :ref:`complete list of arms feedbacks <arms_feedbacks>`

Callback Arguments
--------------------

callback_feedback
^^^^^^^^^^^^^^^^^

+-----------------------+-----------------------+-----------------------+
| Argument              | Type                  | Description           |
+=======================+=======================+=======================+
| feedback_code         | ``int``               | Code for the type of  |
|                       |                       | feedback.             |
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

+-----------+-----------+--------------------------------------------+
| Argument  | Type      | Description                                |
+===========+===========+============================================+
| error     | ``int``   | Code for the type of error encountered (0  |
|           |           | if no error).                              |
+-----------+-----------+--------------------------------------------+
| error_msg | ``str``   | Details regarding the error (empty if no   |
|           |           | error).                                    |
+-----------+-----------+--------------------------------------------+
| fraction  | ``float`` | Fraction of the trajectory realized.       |
+-----------+-----------+--------------------------------------------+

Usage Example
===============

See the `Arms Execute Pose Array <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/arms_execute_pose_array/src/app.py>`__
to see how to use this function.

