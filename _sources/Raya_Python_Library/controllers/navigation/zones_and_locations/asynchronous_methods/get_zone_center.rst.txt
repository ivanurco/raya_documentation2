=================================
get_zone_center()
=================================

.. raw:: html

    <hr/>

Retrieve the center coordintates of a specified zone.

Reference
==============

Arguments
-----------

=========== =================== ========================== ======================================================== 
Arguments   Type                Default value                                                                      
=========== =================== ========================== ======================================================== 
zone_name   ``str``                                        The requested zone on the map.                          
pos_unit    ``POSITION_UNIT``   ``POSITION_UNIT.PIXELS``   Unit of measurement for the points (PIXELs or METERS).  
=========== =================== ========================== ======================================================== 


Return
--------

Returns x, y = zone_center.x, zone_center.y

Exceptions
--------------

-  ``RayaNavNotLocated``
-  ``RayaNavZonesNotFound``
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
           zone_center = await self.nav.get_zone_center(
                       zone_name=kitchen, 
                       pos_unit=POSITION_UNIT.PIXELS
                   )
           self.log.info(zone_center)
           ...

See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid uses.
