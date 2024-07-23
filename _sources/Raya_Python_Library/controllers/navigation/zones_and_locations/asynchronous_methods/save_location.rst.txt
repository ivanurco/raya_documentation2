=================================
save_location()
=================================

.. raw:: html

    <hr/>

Add a permanent new location in robotic device. This function will allow later to use ``navigate_to_location()`` function instead
``navigate_to_position()``.

Reference
============

Arguments
----------

=============== =================== ========================== =============================================================================================================================================== 
Arguments       Type                Default value                                                                                                                                                             
=============== =================== ========================== =============================================================================================================================================== 
location_name   ``str``                                        The name of the specified location.                                                                                                            
map_name        ``str``                                        The name of the map where the location will be saved.                                                                                          
current_pose    ``bool``            False                      True if you want to save the current position where the robot is. In this case, the arguments ``x``, ``y``, ``angle`` will not be considered.  
x               ``float``                                      X coordinate on the map.                                                                                                                       
y               ``float``                                      Y coordinate on the map.                                                                                                                       
angle           ``float``                                      Target angle.                                                                                                                                  
pos_unit        ``POSITION_UNIT``   ``POSITION_UNIT.PIXELS``   Unit of measurement for the points (PIXELs or METERS).                                                                                         
ang_unit        ``ANGLE_UNIT``      ``ANGLE_UNIT.DEGREES``     Unit of measurement of angles (DEGREES or RADIANS).                                                                                            
=============== =================== ========================== =============================================================================================================================================== 


Return
---------

``True`` if the whole function finished with no errors.

Exceptions
------------

-  ``RayaNavNoMapLoaded``
-  ``RayaWrongArgument``
-  ``RayaNavCurrentlyMapping``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Usage Example
================

Code:

.. code-block:: python

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.navigation = await self.enable_controller('navigation')
           self.map_name = "newmap01"
           ...

       async def loop(self):
           await self.navigation.save_location( 
                       x=1.0, 
                       y=0.5, 
                       angle=1.0,
                       location_name='new_location01', 
                       pos_unit=POS_UNIT.METERS, 
                       ang_unit=ANG_UNIT.RAD, 
                       map_name='unity_apartment'
                   )
           self.log.info(f'Location saved')
           ...

       async def finish(self):
            ...

See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid uses.