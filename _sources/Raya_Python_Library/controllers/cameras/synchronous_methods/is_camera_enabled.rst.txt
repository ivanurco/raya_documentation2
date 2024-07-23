====================
is_camera_enabled()
====================

.. raw:: html

    <hr/>

This method checks whether a specific camera is enabled.

Reference
===========

Arguments
-----------

+-----------------+-----------------+-----------------+-----------------+
| Argument        | Type            | Default value   | Description     |
+=================+=================+=================+=================+
| camera_name     | ``str``         |                 | Name of the     |
|                 |                 |                 | camera to       |
|                 |                 |                 | check.          |
+-----------------+-----------------+-----------------+-----------------+

Return
--------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``bool``                          | Returns a boolean indicating      |
|                                   | whether the camera is enabled or  |
|                                   | not.                              |
+-----------------------------------+-----------------------------------+

Exceptions
-----------

-  ``RayaCameraInvalidNam``\ ``e``

See the :ref:`complete list of cameras exceptions. <cameras_exceptions>`

Usage Example
=====================

1. Get camera enabled check
--------------------------------

.. code-block:: python

      ...

      self.cameras = await self.enable_controller('cameras')
      
      ...

      chest_is_enabled = self.cameras.is_camera_enabled(camera_name='chest')
      print(chest_is_enabled)
      
      ...

Output:

::

    False
