=========================
update_map()
=========================

.. raw:: html

    <hr/>

Upload a new image from a path to a map.

Reference
============

Arguments
------------

========= ======= ============= ==========================
Arguments Type    Default value 
========= ======= ============= ==========================
map_name  ``str``               Name of the map to upload.
path      ``str``               Path to upload from.
========= ======= ============= ==========================

Return
------------

``None``

Exceptions
------------

-  ``RayaWrongArgument``
-  ``RayaNavUnknownMapName``
-  ``RayaNavCurrentlyMapping``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
===================

Code:

.. code-block:: python

   ...
   DOWNLOAD_MAP_PATH = 'dat:downloaded_map.pgm'
   UPLOAD_MAP_PATH = 'dat:to_upload_map.pgm'

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

       async def loop(self):
           ...
           self.log.info(f'Uploading \'{UPLOAD_MAP_PATH}\' map...')
           await self.nav.update_map(
                   map_name=self.map_name, 
                   path=UPLOAD_MAP_PATH,
               )
           self.log.info(f'Map updated')
           ...

See the `nav_update_map <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_update_map>`__ to check
some valid uses.
