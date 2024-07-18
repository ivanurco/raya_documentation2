==============================
get_current_map()
==============================

.. raw:: html

    <hr/>

Get current map name.

Reference
=============

Arguments
-------------

``None``

Return
-------------

``string``: Current map name.

Exceptions
-------------

-  ``RayaNavUnkownError``

See the `complete list of navigation
exceptions </v2/docs/exceptions-2>`__.

Usage Example
==================

.. raw:: html

    <div class="warning-box">

        <p class="title warning-box">Important note!</p>

        <p class="text warning-box">
        
        Please pay attention to the setup
        functions. Without them, navigation controller will not be allowed.

        </p>

    </div>

|

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

   async def loop(self):
   ...
       map_name = await self.nav.get_current_map()
       self.log.info(f'Map in use: {map_name}.')
           ...
