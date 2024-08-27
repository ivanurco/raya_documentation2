===================================
get_locations()
===================================

.. raw:: html

    <hr/>

Retrieve all saved locations in a specific map.

Reference
============

Arguments
-----------

========= ======= ============= ==================
Arguments Type    Default value 
========= ======= ============= ==================
map_name  ``str``               The requested map.
========= ======= ============= ==================

Return
---------

``Dict`` with zone name as key and ``Dict`` with data of the zone as
value.

==================== ======== =============================
Key                  Type     Info
==================== ======== =============================
``$location_name_0`` ``Dict`` x: x position, y: y position.
``$location_name_1`` ``Dict`` x: x position, y: y position.
``...``              ``...``  ``...``
``$location_name_n`` ``Dict`` x: x position, y: y position.
==================== ======== =============================

Exceptions
---------------

-  ``RayaNavNotLocated``
-  ``RayaNavZonesNotFound``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Usage Example
================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

       async def loop(self):
           ...
           locations = await self.nav.get_locations(map_name='unity_apartment')
           self.log.info(locations)
           ...


See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid uses.

