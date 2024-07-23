==================================
get_locations_list()
==================================

.. raw:: html

    <hr/>

Retrieve the name of all saved locations in a specific map.

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
--------

List with zone names. [ ``$location_name_0``, ``$location_name_1``, . . .\ ``$location_name_n``]

Exceptions
--------------

-  ``RayaNavNotLocated``
-  ``RayaNavLocationsNotFound``
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
           locations_list = await self.nav.get_locations_list(map_name='unity_apartment')
           self.log.info(locations_list)
           ...

See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid uses.
