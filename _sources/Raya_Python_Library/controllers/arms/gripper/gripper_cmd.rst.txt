==========================
gripper_cmd()
==========================

.. raw:: html

    <hr/>

Changes the gripper on a specified arm to a specific width with desired
pressure.

Reference
===========

Arguments
--------------------

=================== ============== ============== ====================================================================================================================================================================== 
Arguments           Type           Default value   Description                                                                                                                                                           
=================== ============== ============== ====================================================================================================================================================================== 
arm                 ``str``                        Name of the arm whose gripper to open.                                                                                                                                
desire_position     ``float``                      Desired position (normalized unit between 0-1)to set the gap within the gripper to.                                                                                   
desired_pressure    ``float``      ``0.8``         Maximum pressure (normalized unit between 0-1) allowed to grab.                                                                                                       
timeout             ``float``      ``10.0``        Time in sec to timeout.                                                                                                                                               
velocity            ``float``      ``0.0``         Velocity (normalized unit between 0-1) to execute the action                                                                                                          
callback_finish     ``Callable``   ``None``        Function to be called once gripper is finished moving.                                                                                                                
callback_feedback   ``Callable``   ``None``        Function to be called to collect feedback as gripper is moving.                                                                                                       
wait                ``bool``       ``False``       If ``True``, program will wait until gripper is finished being opened before continuing with other code. If ``False``, program will continue running asynchronously.  
=================== ============== ============== ====================================================================================================================================================================== 


Return
--------------------

========= =====================================================
Type      Description
========= =====================================================
``bool``  Retrieves wheter execution stops by position reached.
``bool``  Retrieves wheter execution stops by pressure reached.
``bool``  Retrieves wheter execution stops by timeout reached.
``float`` FInal position of the gripper.
``float`` FInal pressure of the gripper.
========= =====================================================

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
^^^^^^^^^^^^^^^^^^^

+------------------+-----------+-------------------------------------+
| Argument         | Type      | Description                         |
+==================+===========+=====================================+
| feedback_code    | ``int``   | Code for the type of feedback.      |
+------------------+-----------+-------------------------------------+
| feedback_msg     | ``str``   | Details regarding the feedback code |
|                  |           | (empty if no error).                |
+------------------+-----------+-------------------------------------+
| current_position | ``float`` | Current gripper position.           |
+------------------+-----------+-------------------------------------+
| current_velocity | ``float`` | Current gripper velocity.           |
+------------------+-----------+-------------------------------------+
| current_pressure | ``float`` | Current gripper pressure.           |
+------------------+-----------+-------------------------------------+
| time_left        | ``float`` | Time left to stop execution         |
+------------------+-----------+-------------------------------------+

callback_finish
^^^^^^^^^^^^^^^^^

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
| position_reached      | ``bool``              | Retrieves wheter      |
|                       |                       | execution stops by    |
|                       |                       | position reached.     |
+-----------------------+-----------------------+-----------------------+
| pressure_reached      | ``bool``              | Retrieves wheter      |
|                       |                       | execution stops by    |
|                       |                       | pressure reached.     |
+-----------------------+-----------------------+-----------------------+
| timeout_reached       | ``bool``              | Retrieves wheter      |
|                       |                       | execution stops by    |
|                       |                       | timeout reached.      |
+-----------------------+-----------------------+-----------------------+
| final_position        | ``float``             | FInal position of the |
|                       |                       | gripper.              |
+-----------------------+-----------------------+-----------------------+
| final_pressure        | ``float``             | FInal pressure of the |
|                       |                       | gripper.              |
+-----------------------+-----------------------+-----------------------+

Usage Example
================

See the `Arms Set Gripper Example <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/arms_set_gripper/src/app.py>`__ to see
how to open and close the gripper.
