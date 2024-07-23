=========================
add_collision_object()
=========================

.. raw:: html

    <hr/>

Add a collision object to robot’s environment.

Reference
===============

Arguments
-----------

============== ================ ======================== ======================================================================================================================================================================================================== == 
Arguments      Type             Default value            Description                                                                                                                                                                                                
============== ================ ======================== ======================================================================================================================================================================================================== == 
id             ``str``                                   Identifier of the collision object.                                                                                                                                                                        
types          ``list``                                  List of shape types for each collision object.                                                                                                                                                             
dimensions     ``list``                                  List of dimensions for each collision object shape.                                                                                                                                                        
shapes_poses   ``list``                                  List of poses for the object's shapes, using quaternion or euler angles as representation for orientation. and the pose is the center of the object referenced to the center of the robot at the floor     
units          ``ANGLE_UNIT``   ``ANGLE_UNIT.DEGREES``   Unit  for angles (DEGREES or RADIANS).                                                                                                                                                                     
============== ================ ======================== ======================================================================================================================================================================================================== == 


Return
-----------

``None``

Exceptions
-----------

-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsExternalException``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage Example
===============

.. code:: python

   from raya.enumerations import SHAPE_TYPE
   ...

   self.types_table = [SHAPE_TYPE.BOX]
   self.poses_table = [{'position': {'x': 0.0,
                                    'y': 0.0,
                                    'z': 0.4},
                       'orientation': {'roll':  90, 'pitch': 0, 'yaw': 0}}]
   self.dimensions_table= [[0.4,
                                           0.3,
                                           0.8]]
   await self.arms.add_collision_object(arm=self.arm_name, id="table",
                                                   types=self.types_table,
                                                   dimensions=self.dimensions_table,
                                                   shapes_poses=self.poses_table)
    