============================
save_zone()
============================

.. raw:: html

    <hr/>


Add a permanent new zone area in robotic device. This function will
allow later to use ``navigate_to_zone()`` function instead ``navigate_to_position()``.

Reference
============

Arguments
-------------

=================== =================== ========================== ================================================================== 
Arguments           Type                Default value              Description                                                       
=================== =================== ========================== ================================================================== 
zone_name           ``str``                                        Name of the zone to save.                                         
points              ``list``                                       List of points defining the zone, must have 2 positions.          
map_name            ``str``                                        Name of the map where the zone will be saved.                     
pos_unit            ``POSITION_UNIT``   ``POSITION_UNIT.PIXELS``   Unit of measurement for the points (PIXELs or METERS).            
callback_feedback   ``Callable``        ``None``                   Callable function for feedback (optional).                        
callback_finish     ``Callable``        ``None``                   Callable function for finish (optional).                          
wait                ``bool``            ``False``                  Coolean indicating whether to wait for user response (optional).  
=================== =================== ========================== ================================================================== 

Return
----------

``True`` if the whole function finished with no errors.

Exceptions
---------------------

-  ``RayaNavNoMapLoaded``
-  ``RayaWrongArgument``
-  ``RayaNavCurrentlyMapping``
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

Usage Example
==============

Code:

.. code:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

       async def loop(self):
           ...
             await self.nav.save_zone( 
                   zone_name='kitchen', 
                   points=[[0, 1],[1, 1],[1, 0],[0, 0]], 
                   pos_unit = POSITION_UNIT.METERS
                   )
               ...
               
       async def finish(self):
          ...

See the `nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/nav_get_info/src/app.py>`__ examples to
check some valid uses.
