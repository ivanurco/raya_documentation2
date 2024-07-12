================================
manage_predefined_pose()
================================

.. raw:: html

    <hr/>

This function manages predefined poses.

Reference
============

Arguments
----------

+-----------------+------------------------------+--------------------------------+---------------------------+
| Arguments       | Type                         | Default value                  | Description               |
+=================+==============================+================================+===========================+
| arm             | ``str``                      |                                | The arm to manage         |
|                 |                              |                                | predefined pose for.      |
+-----------------+------------------------------+--------------------------------+---------------------------+
| name            | ``str``                      |                                | Name of the predefined    |
|                 |                              |                                | pose.                     |
+-----------------+------------------------------+--------------------------------+---------------------------+
| position        | ``list``                     | ``[]``                         | Position values for the   |
|                 |                              |                                | predefined pose (joint    |
|                 |                              |                                | values).                  |
+-----------------+------------------------------+--------------------------------+---------------------------+
| action          |``ARMS_MANAGE_ACTIONS.CREATE``| ``ARMS_MANAGE_ACTIONS.CREATE`` | Action to perform on the  |
|                 |                              |                                | predefined pose           |
|                 |                              |                                | (CREATE, EDIT, REMOVE,    |
|                 |                              |                                | or GET).                  |
+-----------------+------------------------------+--------------------------------+---------------------------+
| units           | ``ANGLE_UNIT.DEGREES``       | ``ANGLE_UNIT.DEGREES``         | Unit of measurement for   |
|                 |                              |                                | angles (DEGREES or        |
|                 |                              |                                | RADIANS).                 |
+-----------------+------------------------------+--------------------------------+---------------------------+


Return
---------

ARMS_MANAGE_ACTIONS.(CREATE,EDIT or REMOVE)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

``None``

ARMS_MANAGE_ACTIONS.GET
^^^^^^^^^^^^^^^^^^^^^^^

======== =======================
Type     Description
======== =======================
``list`` Joints Position values.
======== =======================

Exceptions
~~~~~~~~~~

-  ``RayaArmsException``
-  ``RayaArmsPredefinedPoseEmptyName``
-  ``RayaArmsPredefinedPoseNameAlreadyExist``
-  ``RayaArmsPredefinedPoseNameNotExist``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage Example
-------------

See the `Manage Predefined Pose Examples <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_manage_predefined_poses>`__ to see how to use
this function.
