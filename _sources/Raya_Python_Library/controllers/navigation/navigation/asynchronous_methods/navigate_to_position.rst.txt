========================
navigate_to_position()
========================

.. raw:: html

    <hr/>

This function allows you to navigate to the desired goal destination in
an autonomous way.

Reference
=============

Arguments
-----------

=================== =================== ========================== ================================================================== 
Arguments           Type                Default value                                                                                
=================== =================== ========================== ================================================================== 
x                   ``float``                                      X-coordinate of the position.                                     
y                   ``float``                                      Y-coordinate of the position.                                     
angle               ``float``                                      Angle of the position.                                            
pos_unit            ``POSITION_UNIT``   ``POSITION_UNIT.PIXELS``   Unit of measurement for the points (PIXELs or METERS).            
ang_unit            ``ANGLE_UNIT``      ``ANGLE_UNIT.DEGREES``     unit of measurement for angle (DEGREES or RADIANS).               
callback_feedback   ``Callable``        ``None``                   Callable function for feedback (optional).                        
callback_finish     ``Callable``        ``None``                   Callable function for finish (optional).                          
wait                ``bool``            ``False``                  Boolean indicating whether to wait for user response (optional).  
=================== =================== ========================== ================================================================== 


Callback Arguments
----------------------

callback_feedback
^^^^^^^^^^^^^^^^^

+------------------+-----------+-------------------------------------+
| Argument         | Type      |                                     |
+==================+===========+=====================================+
| feedback_code    | ``int``   | Code for the type of feedback.      |
+------------------+-----------+-------------------------------------+
| feedback_msg     | ``str``   | Details regarding the feedback code |
|                  |           | (empty if no error).                |
+------------------+-----------+-------------------------------------+
| distance_to_goal | ``float`` | Distance to goal in meters.         |
+------------------+-----------+-------------------------------------+
| speed            | ``float`` | Robot current speed.                |
+------------------+-----------+-------------------------------------+

For a complete list of feedbacks see the :ref:`complete list of navigation
feedbacks <navigation_feedbacks>`.

callback_finish
^^^^^^^^^^^^^^^

========== =======
Argument   Type    
========== =======
error_code ``int`` 
error_msg  ``str`` 
========== =======

Return
-------------

``None``, unless there is callback.

Exceptions
-------------

-  ``RayaNavNotLocated``
-  ``RayaNavAlreadyNavigating``
-  ``RayaUnableToFollowPath``
-  ``RayaUnableToComputePath``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Usage Example
===============

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.navigation = await self.enable_controller('navigation')
           ...

       async def loop(self):
           ...
           await self.navigation.navigate_to_position( 
                   x=5.0, 
                   y=20.0, 
                   angle=50.0,
                   pos_unit = POS_UNIT.PIXEL, 
                   ang_unit = ANG_UNIT.DEG
               )
           ...

       async def finish(self):
          ...

See the `Navigate to click <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_to_click>`__ ,
`nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__ ,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid
uses.
