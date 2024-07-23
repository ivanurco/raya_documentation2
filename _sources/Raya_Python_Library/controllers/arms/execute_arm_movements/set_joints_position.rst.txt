============================
set_joints_position()
============================

.. raw:: html

    <hr/>

Sets any joints to specified angles.

Reference
============

Arguments
------------

========================== ============== ========================== ======================================================== 
Arguments                  Type           Default value              Description                                             
========================== ============== ========================== ======================================================== 
arm                        ``str``                                   The arm to set the joint positions for.                 
name_joints                ``list``                                  List of joint names.                                    
angle_joints               ``list``                                  List of joint angles.                                   
units                      ``ANGLE_UNIT``   ``ANGLE_UNIT.DEGREES``   Unit for angles (DEGREES or RADIANS).                   
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
callback_finish            ``Callable``     ``None``                 Callable function for finish .                          
callback_finish_async      ``Callable``     ``None``                 Callable function for finish .                          
wait                       ``bool``         ``False``                bool indicating whether to wait for user response.      
========================== ============== ========================== ======================================================== 

See the :ref:`complete list of general enumerations <general_enumerations>`

Return
--------

``None``

Exceptions
-------------

-  ``RayaInvalidCallback``
-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsExternalException``
-  ``RayaArmsInvalidJointName``

See the :ref:`complete list of arms exceptions <arms_exceptions>` and the :ref:`complete list of general exceptions <general_exceptions>`

Feedbacks
~~~~~~~~~

-  [1] The arm is in execution of the command
-  [3] Planning of the trajectory in progress
-  [4] Updating obstacles in progress

See the :ref:`complete list of arms feedbacks <arms_feedbacks>`.

Callback Arguments
~~~~~~~~~~~~~~~~~~

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

+-----------+---------+---------------------------------------------------------+
| Argument  | Type    | Description                                             |
+===========+=========+=========================================================+
| error     | ``int`` | Code for the type of error encountered (0 if no error). |
+-----------+---------+---------------------------------------------------------+
| error_msg | ``str`` | Details regarding the error (empty if no error).        |
+-----------+---------+---------------------------------------------------------+

Usage Example
===============

See the `Arms Set Joints Position Example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_set_position_joints>`__ 
for some examples of code for joint positions.
