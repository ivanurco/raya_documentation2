================================
go_to_angle()
================================

.. raw:: html

    <hr/>

Rotate to a specific angle.

Reference
======================

Arguments
----------------------

=================== ================ ======================== ================================================================== 
Arguments           Type             Default value                                                                              
=================== ================ ======================== ================================================================== 
angle_target        ``float``                                 Target angle to reach.                                            
angular_velocity    ``float``                                 Angular velocity for the movement.                                
ang_unit            ``ANGLE_UNIT``   ``ANGLE_UNIT.DEGREES``   Unit of measurement of angles (DEGREES or RADIANS).               
callback_feedback   ``Callable``     ``None``                 Callable function for feedback (optional).                        
callback_finish     ``Callable``     ``None``                 Callable function for finish (optional).                          
wait                ``bool``         ``False``                Coolean indicating whether to wait for user response (optional).  
=================== ================ ======================== ================================================================== 


Return
----------------------

``None``

Exceptions
----------------------

-  ``RayaNavNotLocated``
-  ``RayaNavAlreadyNavigating``
-  ``RayaUnableToFollowPath``
-  ``RayaUnableToComputePath``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Callback Arguments
----------------------

callback_feedback
^^^^^^^^^^^^^^^^^

+---------------+---------+------------------------------------------+
| Argument      | Type    |                                          |
+===============+=========+==========================================+
| feedback_code | ``int`` | Code for the type of feedback.           |
+---------------+---------+------------------------------------------+
| feedback_msg  | ``str`` | Details regarding the feedback code      |
|               |         | (empty if no error).                     |
+---------------+---------+------------------------------------------+

For a complete list of feedbacks see the :ref:`complete list of navigation feedbacks <navigation_feedbacks>`.


callback_finish
^^^^^^^^^^^^^^^

========== =======
Argument   Type    
========== =======
error_code ``int`` 
error_msg  ``str`` 
========== =======

Usage Example
================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.navigation = await self.enable_controller('navigation')
           ...

       async def loop(self):
           ...
           await self.navigation.go_to_angle( 
                   angle_target=180, 
                   angular_velocity=1.0, 
                   ang_unit=ANGLE_UNIT.DEGREES,
                   callback_feedback=self.cb_go_to_angle_feedback,
                   callback_finish=self.cb_go_to_angle_finish,
                   wait=True,
               )
           ...

       async def finish(self):
          ...

See the
`nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__
example to check some valid uses.
