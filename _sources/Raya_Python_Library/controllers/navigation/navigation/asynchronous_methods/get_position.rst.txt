=====================================
get_position()
=====================================

.. raw:: html

    <hr/>
    
Get the current position of the robot.

Reference
============

Arguments
-------------

=========== =================== ========================== ======================================================== 
Arguments   Type                Default value                                                                      
=========== =================== ========================== ======================================================== 
pos_unit    ``POSITION_UNIT``   ``POSITION_UNIT.PIXELS``   Unit of measurement for the points (PIXELs or METERS).  
ang_unit    ``ANGLE_UNIT``      ``ANGLE_UNIT.DEGREES``     Unit of measurement for angle (DEGREES or RADIANS).     
=========== =================== ========================== ======================================================== 


Return
-------------

+----------+----------------------------------------------------------+
| Type     | Description                                              |
+==========+==========================================================+
| ``dict`` | A dictionary that contains the x, y and angle position   |
|          | of the robot.                                            |
+----------+----------------------------------------------------------+

Exceptions
-------------

-  ``RayaNavNotLocated``
-  ``RayaNavAlreadyNavigating``
-  ``RayaWrongArgument``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Usage Example
===============

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

       async def loop(self):
           ...
           robot_position = await self.navigation.get_position(
                       pos_unit = POS_UNIT.PIXEL, 
                       ang_unit = ANG_UNIT.DEG
                   )
           self.log.info(robot_position)
           ...

Console output

.. code-block:: python

   {"x": 23, "y": 12, "angle":42.5}


See the `Navigate to click <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_to_click>`__ ,
`nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__ ,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid
uses.
