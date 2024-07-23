==============================
delete_location()
==============================

.. raw:: html

    <hr/>

Permanently deletes a saved location.

Reference
============

Arguments
------------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   |                 |
+=================+=================+=================+=================+
| map_name        | ``str``         |                 | The requested   |
|                 |                 |                 | map. If         |
|                 |                 |                 | map_name is     |
|                 |                 |                 | empty the       |
|                 |                 |                 | current map     |
|                 |                 |                 | will assumed.   |
+-----------------+-----------------+-----------------+-----------------+
| location_name   | ``str``         |                 | The requested   |
|                 |                 |                 | name of the     |
|                 |                 |                 | location on the |
|                 |                 |                 | map.            |
+-----------------+-----------------+-----------------+-----------------+

Return
------------

``True`` if the whole function finished with no errors and the location
was deleted.

Exceptions
------------

-  ``RayaNavNotLocated``
-  ``RayaNavLocationNotFound``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
===================

Code:

.. code-block:: python

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.navigation = await self.enable_controller('navigation')
           ...

       async def loop(self):
           await self.navigation.delete_location( 
                       location_name='new_location01', 
                       map_name='unity_apartment'
                   )
           self.log.info(f'Location deleted')
           ...

       async def finish(self):
            ...

See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid uses.
