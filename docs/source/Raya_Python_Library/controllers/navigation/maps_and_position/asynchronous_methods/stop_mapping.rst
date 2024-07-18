==========================
stop_mapping()
==========================

.. raw:: html

    <hr/>

This method will stop current mapping progress saving or discarting the
map.

Reference
==============

Arguments
--------------

+-----------+----------+---------------+--------------------------------------------+
| Arguments | Type     | Default value |                                            |
+===========+==========+===============+============================================+
| save_map  | ``bool`` | ``True``      | True to save the map, False to discard it. |
+-----------+----------+---------------+--------------------------------------------+

Return
--------------

``None``

Exceptions
--------------

-  ``RayaNavNotMapping``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
=================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.navigation = await self.enable_controller('navigation')
           self.map_name = "newmap01"
           ...

       async def loop(self):
           await self.navigation.start_mapping(self.map_name)
           self.log.info(f'Using map \'{self.map_name}\'')
           ...

       async def finish(self):
           await self.navigation.stop_mapping(save_map = True)
            ...


See the `map_tags <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/map_tags>`__,
`map <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/map>`__ to check some valid uses.
