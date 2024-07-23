===============================
get_sorted_zone_point()
===============================

.. raw:: html

    <hr/>

Retrieve the points sorted by ``order_zone_points`` function.

Reference
============

Arguments
-------------

=========== =================== ========================== ======================================================== 
Arguments   Type                Default value                                                                      
=========== =================== ========================== ======================================================== 
pos_unit    ``POSITION_UNIT``   ``POSITION_UNIT.PIXELS``   Unit of measurement for the points (PIXELs or METERS).  
=========== =================== ========================== ======================================================== 


Return
--------

Returns an array of two positions with the X coordinate and the Y
coordinate.

Exceptions
----------------

-  ``RayaNavNoMapLoaded``
-  ``RayaNavNotLocated``
-  ``RayaNavZonesNotFound``
-  ``RayaWrongArgument``
-  ``RayaNavCurrentlyMapping``
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
           zone_sorted = await self.nav.get_sorted_zone_point(
                       pos_unit = POSITION_UNIT.PIXELS
                   )
            self.log.info(zone_sorted)
           ...

Console output

.. code-block:: bash

   [125.0, 59.0]


See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid uses.
