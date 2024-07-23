===================================
add_attached_object()
===================================

.. raw:: html

    <hr/>

Add an attached object to the arm.

Reference
===============

Arguments
------------

============== ================ ======================== ============================================================================================================================================================================================== 
Arguments      Type             Default value            Description                                                                                                                                                                                   
============== ================ ======================== ============================================================================================================================================================================================== 
arm            ``str``                                   The arm to attach the object to.                                                                                                                                                              
id             ``str``                                   The ID of the attached object.                                                                                                                                                                
types          ``list``                                  List of types for the object's shapes.                                                                                                                                                        
dimensions     ``list``                                  List of dimensions for the object's shapes.                                                                                                                                                   
shapes_poses   ``list``                                  List of poses for the object's shapes, using quaternion or euler angles as representation for orientation. and the pose is the center of the object referenced to the center of the gripper.  
units          ``ANGLE_UNIT``   ``ANGLE_UNIT.DEGREES``   Unit  for angles (DEGREES or RADIANS).                                                                                                                                                        
============== ================ ======================== ============================================================================================================================================================================================== 


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
===============

.. code-block:: python

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
