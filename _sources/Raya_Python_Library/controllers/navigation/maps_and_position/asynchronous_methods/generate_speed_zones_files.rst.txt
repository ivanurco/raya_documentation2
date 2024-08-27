================================
generate_speed_zones_files()
================================

.. raw:: html

    <hr/>

Generates the speedmask.yaml and speedmask.pgm files. The speed_mask.pgm
file can be modified to draw over low speed zones. White (255, 255, 255)
is considered 100% speed and black (0, 0, 0) 0% speed.

Reference
===============

Arguments
---------------

========= ========== ============= ================
Arguments Type       Default value 
========= ========== ============= ================
map_name  ``string``               Name of the map.
========= ========== ============= ================

Return
---------------

``None``

Exceptions
---------------

====================== ========================
Exception              Condition
====================== ========================
``RayaNavUnkownError`` An unknown error occurs.
====================== ========================

See the :ref:`complete list of Raya Exceptions <navigation_exceptions>`

Usage Example
=================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           self.map_name = 'map001'
           ...

       async def loop(self):
         ...
         await self.nav.generate_speed_zones_files(self.map_name)
         ...
               
       async def finish(self):
          ...


