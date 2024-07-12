==================================
execute_joints_positions_array()
==================================

.. raw:: html

    <hr/>

Executes movement according to array of joint values.

Reference
===========

Arguments
-----------

========================== ================ ======================== =================================================================================================================================================================================================================== 
Arguments                  Type             Default value            Description                                                                                                                                                                                                        
========================== ================ ======================== =================================================================================================================================================================================================================== 
arm                        ``str``                                   The arm requested is not a valid group.                                                                                                                                                                            
joint_values               ``list``                                  List of joint values. Help: Define the value of the joints in array format, where each position is a list where the value for each joint should be defined, if it doesnt the names joint array should be defined.  
name_joints_array          ``list``         ``[]``                   List of joint names. Help: Define the name of the joints in array format, where each position is a list where the name belongs at the joint to be set in position defined in joint values.                         
units                      ``ANGLE_UNIT``   ``ANGLE_UNIT.DEGREES``   Unit for angles (DEGREES or RADIANS)                                                                                                                                                                               
tilt_constraint            ``bool``         ``False``                Boolean to apply a tilt constraint.                                                                                                                                                                                
use_obstacles              ``bool``         ``False``                Whether to use obstacles during execution.                                                                                                                                                                         
cameras                    ``list``         ``[]``                   List of cameras.                                                                                                                                                                                                   
update_obstacles           ``bool``         ``False``                whether to update obstacles.                                                                                                                                                                                       
save_trajectory            ``bool``         ``False``                Whether to save the trajectory.                                                                                                                                                                                    
name_trajectory            ``str``          ``''``                   Name of the trajectory.                                                                                                                                                                                            
velocity_scaling           ``float``        ``0.0``                  Scaling factor for velocity.                                                                                                                                                                                       
acceleration_scaling       ``float``        ``0.0``                  Scaling factor for acceleration.                                                                                                                                                                                   
min_bbox_clear_obstacles   ``list``         ``[]``                   List of minimum bounding boxes for clearing obstacles.                                                                                                                                                             
max_bbox_clear_obstacles   ``list``         ``[]``                   List of maximum bounding boxes for clearing obstacles.                                                                                                                                                             
callback_feedback          ``Callable``     ``None``                 Callable function for feedback.                                                                                                                                                                                    
callback_feedback_async    ``Callable``     ``None``                 Callable function for feedback.                                                                                                                                                                                   
callback_finish            ``Callable``     ``None``                 Callable function for finish.                                                                                                                                                                                      
callback_finish_async      ``Callable``     ``None``                 Callable function for finish.                                                                                                                                                                                      
wait                       ``bool``         ``False``                Whether to wait for user response.                                                                                                                                                                                 
========================== ================ ======================== =================================================================================================================================================================================================================== 


Return
--------

===== ====================================
Type  Description
===== ====================================
float Fraction of the trajectory realized.
===== ====================================

Exceptions
------------

-  ``RayaInvalidCallback``
-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsInvalidJointName``
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
| fraction  | ``float`` | Fraction of the trajectory realized        |
+-----------+-----------+--------------------------------------------+

Usage Examples
================

See the `Arms Execute Joint Values
Array <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/arms_execute_joint_values_array/src/app.py>`__
to see how to use this function.
