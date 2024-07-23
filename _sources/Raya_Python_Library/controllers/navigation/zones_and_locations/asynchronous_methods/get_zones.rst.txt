==========================
get_zones()
==========================

.. raw:: html

    <hr/>

Retrieve all saved zone areas in a specific map.

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

+-----------------------+-----------------------+-----------------------+
| Key                   | Type                  | Info                  |
+=======================+=======================+=======================+
| ``$zone_name_0``      | ``Dict``              | ``zone_limits``: list |
|                       |                       | of X,Y points         |
|                       |                       | limiting zone,        |
|                       |                       | ``zone_points``: list |
|                       |                       | of X,Y points inside  |
|                       |                       | zone.                 |
+-----------------------+-----------------------+-----------------------+
| ``$zone_name_1``      | ``Dict``              | ``zone_limits``: list |
|                       |                       | of X,Y points         |
|                       |                       | limiting zone,        |
|                       |                       | ``zone_points``: list |
|                       |                       | of X,Y points inside  |
|                       |                       | zone.                 |
+-----------------------+-----------------------+-----------------------+
| ``...``               | ``...``               | ``...``               |
+-----------------------+-----------------------+-----------------------+
| ``$zone_name_n``      | ``Dict``              | ``zone_limits``: list |
|                       |                       | of X,Y points         |
|                       |                       | limiting zone,        |
|                       |                       | ``zone_points``: list |
|                       |                       | of X,Y points inside  |
|                       |                       | zone.                 |
+-----------------------+-----------------------+-----------------------+

zones[zone.zone_name] = {‘zone_limits’: zone_limit_points,
‘zone_points’: zone_points_points}

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
           zones = await self.nav.get_zones(map_name='unity_apartment')
           self.log.info(zones)
           ...


See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid uses.

