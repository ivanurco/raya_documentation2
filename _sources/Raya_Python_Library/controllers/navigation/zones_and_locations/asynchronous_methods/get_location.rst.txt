=============================
get_location()
=============================

.. raw:: html

    <hr/>

Retrieve information about an existing location.

Reference
==============

Arguments
-----------

=============== =================== ========================== ======================================================== 
Arguments       Type                Default value                                                                      
=============== =================== ========================== ======================================================== 
location_name   ``str``                                        The requested location on the map.                      
map_name        ``str``                                        Map in which location resides.                          
pos_unit        ``POSITION_UNIT``   ``POSITION_UNIT.PIXELS``   Unit of measurement for the points (PIXELs or METERS).  
=============== =================== ========================== ======================================================== 

Return
---------

Tuple in the form of x, y, yaw.

Exceptions
-------------

-  ``RayaNavNotLocated``
-  ``RayaNavLocationNotFound``
-  ``RayaWrongArgument``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
================

Code:

.. code-block:: python

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.navigation = await self.enable_controller('navigation')
           ...

       async def loop(self):
           await self.navigation.get_location( 
                       location_name='new_location01', 
                       map_name='unity_apartment'
                   )
           self.log.info(f'Location deleted')
           ...

       async def finish(self):
            ...

See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid uses.
