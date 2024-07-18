===================
start_mapping()
===================

.. raw:: html

    <hr/>

Start creating a new map with the specified map_name as its name.

Reference
==============

Arguments
~~~~~~~~~

========= ========== ============= ===============================
Arguments Type       Default value 
========= ========== ============= ===============================
options   ``object``               Additional options for mapping.
map_name  ``string``               Name of the map to be created.
========= ========== ============= ===============================

.. raw:: html

    <div class="warning-box">

        <p class="title warning-box">Important note!</p>

        <p class="text warning-box">
        Check the “Gary Options” section for an
        example of options that are valid for Gary.
        </p>
    </div>

Gary options
--------------

+------------------+--------+----------------------------------------+
| Options          | Type   | Description                            |
+==================+========+========================================+
| use_tags         | bool   | Enable apriltags detection in the      |
|                  |        | mapping process.                       |
+------------------+--------+----------------------------------------+
| marker_length    | float  | Apriltags size (all tags must be the   |
|                  |        | same size).                            |
+------------------+--------+----------------------------------------+
| marker_family    | string | Family of apriltags for example        |
|                  |        | “36h10” or “36h11”.                    |
+------------------+--------+----------------------------------------+
| marker_max_range | float  | Maximun range to detect tags.          |
+------------------+--------+----------------------------------------+

Return
------------

``None``

Exceptions
------------

-  ``RayaNavMapAlreadyExist``
-  ``RayaNavAlreadyNavigating``
-  ``RayaNavAlreadyMapping``

See the :ref:`complete list of navigation
exceptions <navigation_exceptions>`.

Usage Example
==================

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
           await self.navigation.stop_mapping(True)

See the `map_tags <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/map_tags>`__,
`map <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/map>`__ to check some valid uses.
