=============================
remove_collision_object()
=============================

.. raw:: html

    <hr/>

Remove the collision object to robot’s environment.

Reference
=============

Arguments
---------------------

 ==================== ========== =============== ==================================================== 
  Arguments            Type       Default value   Description                                         
 ==================== ========== =============== ==================================================== 
  id                   ``str``    ``''``          ID of the collision object to remove (optional)     
  remove_all_objects   ``bool``   ``True``        Whether to remove all collision objects (optional)  
 ==================== ========== =============== ==================================================== 

Return
---------------------

``None``

Exceptions
---------------------

-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsExternalException``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage Example
===============

Remove Specific ID
---------------------

.. code-block:: python

   from raya.enumerations import SHAPE_TYPE
   ...

   self.types_table = [SHAPE_TYPE.BOX]
   self.poses_table = [{'position': {'x': 0.0,
                                     'y': 0.0,
                                     'z': 0.4},
                       'orientation': {'roll':  90, 'pitch': 0, 'yaw': 0}}]

   self.dimensions_table= [[0.4, 0.3, 0.8]]

   await self.arms.add_collision_object(
                    arm=self.arm_name, id="table",
                    types=self.types_table,
                    dimensions=self.dimensions_table,
                    shapes_poses=self.poses_table,
                )

   await self.arms.remove_attached_object( 
                                id = "table",
                                remove_all_objects = False,
                            )

Remove All attached
---------------------

.. code-block:: python

    from raya.enumerations import SHAPE_TYPE 
    ...
    self.types_table= [SHAPE_TYPE.BOX]
    self.poses_table = [{'position':{'x': 0.0, 
                                     'y': 0.0, 
                                     'z': -0.05}, 
                        'orientation': {'x': 0, 'y': 0, 'z': 0, 'w': 1}}] 
    
    self.dimensions_table= [[0.4, 0.3, 0.8]]

    await self.arms.add_collision_object(
                        arm=self.arm_name, 
                        id="table", 
                        types=self.types_table, 
                        dimensions=self.dimensions_table,
                        shapes_poses=self.poses_table,
                        )
                        
    await self.arms.remove_attached_object()
