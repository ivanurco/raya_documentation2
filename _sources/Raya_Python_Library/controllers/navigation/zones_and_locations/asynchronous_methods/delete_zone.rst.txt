=============================
delete_zone()
=============================

.. raw:: html

    <hr/>


Permanently deletes a saved zone area.

Reference
============

Arguments
-------------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   |                 |
+=================+=================+=================+=================+
| location_name   | ``str``         |                 | The requested   |
|                 |                 |                 | location on the |
|                 |                 |                 | map.            |
+-----------------+-----------------+-----------------+-----------------+
| map_name        | ``str``         |                 | The requested   |
|                 |                 |                 | map. If         |
|                 |                 |                 | map_name is     |
|                 |                 |                 | empty the       |
|                 |                 |                 | current map     |
|                 |                 |                 | will assumed.   |
+-----------------+-----------------+-----------------+-----------------+

Return
---------

``True`` if the whole function finished with no errors and the zone was
deleted.

Exceptions
------------

-  ``RayaNavNotLocated``
-  ``RayaNavZonesNotFound``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Usage Example
==================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

       async def loop(self):
           ...
           zone_deleted = await self.nav.delete_zone(
                       location_name='kitchen', 
                       map_name='unity_apartment'
                   )
           if zone_deleted:
               self.log.info('Zone deleted...')
           ...

See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid uses.
