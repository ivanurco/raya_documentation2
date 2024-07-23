==============================
get_zones_list()
==============================

.. raw:: html

    <hr/>


Retrieve all saved zone areas in a specific map. The function returns
the zones name.

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

List with zone names. [ ``$zone_name_0``, ``$zone_name_1``, . . . ``$zone_name_n``]

Exceptions
----------------

-  ``RayaNavNotLocated``
-  ``RayaNavZonesNotFound``
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
           zones_list = await self.nav.get_zones_list(map_name='unity_apartment')
           self.log.info(zones_list)
           ...

See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid uses.
