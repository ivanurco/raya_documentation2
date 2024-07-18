==============================
navigate_close_to_position()
==============================

.. raw:: html

    <hr/>

This function allows you to navigate to close to a desired goal
destination based off a min and max radius.

Reference
===========

Arguments
------------

=================== =================== ========================== ================================================================== 
Arguments           Type                Default value                                                                                
=================== =================== ========================== ================================================================== 
x                   ``float``                                      X-coordinate of the target position                               
y                   ``float``                                      Y-coordinate of the target position                               
min_radius          ``float``           ``0.0``                    minimum radius from the target position                           
max_radius          ``float``           ``0.8``                    maximum radius from the target position                           
pos_unit            ``POSITION_UNIT``   ``POSITION_UNIT.PIXELS``   Unit of measurement for the points (PIXELs or METERS).            
callback_feedback   ``Callable``        ``None``                   Callable function for feedback (optional).                        
callback_finish     ``Callable``        ``None``                   Callable function for finish (optional).                          
wait                ``bool``            ``False``                  Coolean indicating whether to wait for user response (optional).  
=================== =================== ========================== ================================================================== 


Callback Arguments
---------------------

callback_feedback
^^^^^^^^^^^^^^^^^

+------------------+-----------+-------------------------------------+
| Argument         | Type      |                                     |
+==================+===========+=====================================+
| feedback_code    | ``int``   | Code for the type of feedback.      |
+------------------+-----------+-------------------------------------+
| feedback_msg     |   str     | Details regarding the feedback code |
|                  |           | (empty if no error).                |
+------------------+-----------+-------------------------------------+
| distance_to_goal | ``float`` | Distance to goal in meters.         |
+------------------+-----------+-------------------------------------+
| speed            | ``float`` | Robot current speed.                |
+------------------+-----------+-------------------------------------+

For a complete list of feedbacks see the :ref:`complete list of navigation feedbacks <navigation_feedbacks>`.

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
              await self.navigation.navigate_close_to_position( 
                   x=1.42, 
                   y=-2.96, 
                   min_radius=0.4,
                   max_radius=0.8,
                   pos_unit=POSITION_UNIT.METERS,
                   callback_feedback=self.cb_nav_feedback,
                   callback_finish=self.cb_nav_finish,
                   wait=True,
               )
               ...
               
       async def finish(self):
          ...

See the
`nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__
example to check some valid uses.
