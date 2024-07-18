================================
is_in_zone()
================================

.. raw:: html

    <hr/>
    

Checks if the robot is inside a specific zone.

Reference
===========

Arguments
-----------

========= ====== ============= =================
Arguments Type   Default value 
========= ====== ============= =================
zone_name string               Name of the zone.
========= ====== ============= =================

Return
-----------

======== =========================================
Type     Description
======== =========================================
``bool`` ``True`` if the robot is inside the zone.
======== =========================================

Exceptions
------------

-  ``RayaNavNotLocated``
-  ``RayaNavZonesNotFound``
-  ``RayaNavNoMapLoaded``
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
           in_zone = await self.nav.is_in_zone(
                       zone_name=kitchen, 
                   )
           self.log.info(f'is robot in kitchen: {in_zone}')
           ...

See the
`nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid
uses.
