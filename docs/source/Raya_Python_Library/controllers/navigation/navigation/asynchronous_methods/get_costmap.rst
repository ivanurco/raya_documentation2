================================
get_costmap()
================================

.. raw:: html

    <hr/>

Get cost map of current map.

Reference
==============

Arguments
------------

``None``

Return
------------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``list``                          | Returns an array representing the |
|                                   | cost map and a dictionary         |
|                                   | describing the map meta data      |
|                                   | (like origin resolution of the    |
|                                   | map). See example more more       |
|                                   | specific formatting.              |
+-----------------------------------+-----------------------------------+

Exceptions
------------

-  ``RayaNavNotLocated``
-  ``RayaNavNoMapLoaded``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
===============

In this example, we are showing the position of the robot over the
chosen map.

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           self.costmap_image, self.map_info = await self.nav.get_costmap()
           ....
           
       async def loop(self):
        ....
           cv2.imshow("map", self.costmap_image)
         ...
         
       async def finish(self):
         ...
