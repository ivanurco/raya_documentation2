.. _arms_enumerations:

========================
Enumerations
========================

.. raw:: html

    <hr/>

SHAPE_TYPE
=============

Enumeration to define the type of shape for obstacles.

-  ``SHAPE_TYPE.BOX`` : Box.
-  ``SHAPE_TYPE.SPHERE`` : Sphere.
-  ``SHAPE_TYPE.CYLINDER`` : Cylinder.
-  ``SHAPE_TYPE.CONE`` : Cone.

SHAPE_DIMENSION
=====================

Enumeration to define the array position to define the shape obstacles
dimensions.

--------------

-  ``SHAPE_DIMENSION.BOX_X`` : Box width.
-  ``SHAPE_DIMENSION.BOX_Y`` : Box large.
-  ``SHAPE_DIMENSION.BOX_Z`` : Box height.

--------------

-  ``SHAPE_DIMENSION.SPHERE_RADIUS`` : Sphere radius.

--------------

-  ``SHAPE_DIMENSION.CYLINDER_HEIGHT`` : Cylinder height.
-  ``SHAPE_DIMENSION.CYLINDER_RADIUS`` : Cylinder radius.

--------------

-  ``SHAPE_DIMENSION.CONE_HEIGHT`` : Cone height.
-  ``SHAPE_DIMENSION.CONE_RADIUS`` : Cone radius.

ARMS_JOINT_TYPE
=====================

Enumeration to define the type of arm joint.

-  ``ARMS_JOINT_TYPE.ROTATIONAL`` : Rotational joint.
-  ``ARMS_JOINT_TYPE.LINEAR`` : Linear joint.

ARMS_MANAGE_ACTIONS
=====================

Enumeration to set the action to take when the user wants to manage
predefined data.

-  ``ARMS_MANAGE_ACTIONS.GET`` : Getting the predefined data.
-  ``ARMS_MANAGE_ACTIONS.EDIT``: Editing the predefined data.
-  ``ARMS_MANAGE_ACTIONS.REMOVE``: Removing the predefined data.
-  ``ARMS_MANAGE_ACTIONS.GET_INFORMATION``: Getting informartion related
   to the predefined data.
-  ``ARMS_MANAGE_ACTIONS.CREATE``: Creating a new predefined data.

