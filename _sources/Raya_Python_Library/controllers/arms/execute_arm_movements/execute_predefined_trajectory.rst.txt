=====================================
execute_predefined_trajectory()
=====================================

.. raw:: html

    <hr/>

Execute a predefined trajectory for the end effector of a arm.

Reference
===========

Arguments
-----------

========================== ============== ============== ============================================================= 
Arguments                  Type           Default value  Description                                                  
========================== ============== ============== ============================================================= 
predefined_trajectory      ``str``                        Name of the predefined trajectory.                           
reverse_execution          ``bool``       ``False``       Whether to execute the trajectory in reverse.                
go_to_start_position       ``bool``       ``False``       Wheter to set start position before execute the trajectory.  
use_obstacles              ``bool``       ``False``       Whether to use obstacles during execution.                   
cameras                    ``list``       ``[]``          List of cameras.                                             
update_obstacles           ``bool``       ``False``       Whether to update obstacles.                                 
min_bbox_clear_obstacles   ``list``       ``[]``          List of minimum bounding boxes for clearing obstacles.       
max_bbox_clear_obstacles   ``list``       ``[]``          List of maximum bounding boxes for clearing obstacles.       
additional_options         ``dict``       ``{}``          Additional options for the trajectory execution.             
velocity_scaling           ``float``      ``0.0``         Scaling factor for velocity.                                 
acceleration_scaling       ``float``      ``0.0``         Scaling factor for acceleration.                             
wait                       ``bool``       ``False``       Whether to wait for user response.                           
callback_feedback          ``Callable``   ``None``        Callable function for feedback.                              
callback_feedback_async    ``Callable``   ``None``        Callable function for feedback.                              
callback_finish            ``Callable``   ``None``        Callable function for finish .                               
callback_finish_async      ``Callable``   ``None``        Callable function for finish.                                
========================== ============== ============== ============================================================= 


Return
--------

``None``

Exceptions
-------------

-  ``RayaInvalidCallback``
-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsPredefinedTrajectoryNameAlreadyExist``
-  ``RayaArmsErrorParsingPredefinedTrajectory``
-  ``RayaArmsExternalException``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Feedbacks
-----------

-  [1] The arm is in execution of the command
-  [3] Planning of the trajectory in progress
-  [4] Updating obstacles in progress

See the :ref:`complete list of arms feedbacks <arms_feedbacks>`

Callback Arguments
-------------------

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

.. code-block:: python

   ...
   PREDEFINED_POSES = {

       'pre_pick': {
           'x': 0.35661, 
           'y': -0.258, 
           'z': 0.7011,
           'roll': 0.0, 
           'pitch': -10.0, 
           'yaw': 0.0
       },

       'pick': {
           'x': 0.58661, 
           'y': -0.258, 
           'z': 0.6711,
           'roll': 0.0, 
           'pitch': -10.0, 
           'yaw': 0.0
       },

       'nav_with_tray': {
           'x': 0.30661, 
           'y': -0.258, 
           'z': 0.466,
           'roll': 0.0, 
           'pitch': -10.0, 
           'yaw': 0.0,
       },

   }
   ...
   async def setup(self):
       self.arms: ArmsController = await self.enable_controller('arms')
       name = 'nav_with_tray'
       plan = False
   ...

   async def loop(self):
       if plan:
               res = await self.arms.is_pose_valid(
                   'right_arm', 
                   **(PREDEFINED_POSES[name]),
                   use_obstacles=True,
                   update_obstacles=True,
                   cartesian_path=False,
                   tilt_constraint=constraints,
                   save_trajectory=True,
                   name_trajectory=name,
                   wait=True)

       await self.arms.execute_predefined_trajectory(
           name,
           wait=True,
       )
   ...
