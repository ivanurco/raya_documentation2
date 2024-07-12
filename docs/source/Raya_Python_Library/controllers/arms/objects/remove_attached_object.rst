===============================
remove_attached_object()
===============================

.. raw:: html

    <hr/>

Removed attached object from the arm.

Reference
================

Arguments
------------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   | Description     |
+=================+=================+=================+=================+
| id              | ``str``         | ``''``          | ID of the       |
|                 |                 |                 | attached object |
|                 |                 |                 | to remove       |
|                 |                 |                 | (optional).     |
+-----------------+-----------------+-----------------+-----------------+
| rem             | ``bool``        | ``True``        | Whether to      |
| ove_all_objects |                 |                 | remove all      |
|                 |                 |                 | attached        |
|                 |                 |                 | objects (if     |
|                 |                 |                 | True).          |
+-----------------+-----------------+-----------------+-----------------+

Return
------------

``None``

Exceptions
------------

-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsExternalException``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage Example
================

Remove Specific ID
--------------------

.. code:: python

   from raya.enumerations import SHAPE_TYPE
   ...

   self.types_tool = [SHAPE_TYPE.BOX]
   self.poses_tool = [{'position': {'x': 0.0,
                                    'y': 0.0,
                                    'z': -0.05},
                       'orientation': {'x': 0, 'y': 0, 'z': 0, 'w': 1}}]
   self.dimensions_tool = [[self.width_tool,
                            self.width_tool,
                            0.02]]
   await self.arms.add_attached_object(arm=self.arm_name, id="cleaning_tool",
                                                   types=self.types_tool,
                                                   dimensions=self.dimensions_tool,
                                                   shapes_poses=self.poses_tool)
   await self.arms.remove_attached_object( id = "cleaning_tool",
                                           remove_all_objects = False)

Remove All attached
--------------------

.. code:: python

   from raya.enumerations import SHAPE_TYPE
   ...

   self.types_tool = [SHAPE_TYPE.BOX]
   self.poses_tool = [{'position': {'x': 0.0,
                                    'y': 0.0,
                                    'z': -0.05},
                       'orientation': {'x': 0, 'y': 0, 'z': 0, 'w': 1}}]
   self.dimensions_tool = [[self.width_tool,
                            self.width_tool,
                            0.02]]
   await self.arms.add_attached_object(arm=self.arm_name, id="cleaning_tool",
                                                   types=self.types_tool,
                                                   dimensions=self.dimensions_tool,
                                                   shapes_poses=self.poses_tool)
   await self.arms.remove_attached_object()
