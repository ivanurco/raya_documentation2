=================
get_map()
=================

.. raw:: html

    <hr/>

Get the data of a specific map. If map_name is not specified current map
will be used.

Reference
===============

Arguments
-------------

========= ========== ============= ===========
Arguments Type       Default value Description
========= ========== ============= ===========
map_name  ``string``               Map name.
========= ========== ============= ===========

Return
-------------

Returns an array representing the map and a dictionary describing the
map meta data (origin and resolution).

Exceptions
-------------

-  ``RayaNavUnkownError``
-  ``RayaNavNotLocated``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
================

.. code-block:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           self.map_image, self.map_info = await self.nav.get_map('unity_apartment')
           ....
           
       async def loop(self):
        ....
           cv2.imshow("map", self.map_image)
         ...
         
       async def finish(self):
         ...

See the `Navigate to click <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_to_click>`__
example to check some valid uses.
