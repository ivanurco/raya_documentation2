=================================
enable_color_camera()
=================================

.. raw:: html

    <hr/>


Enable the specified camera.

Reference
==============

Arguments
------------

+-----------------------+-----------------------+-----------------------+
| Argument              | Type                  |                       |
+=======================+=======================+=======================+
| camera_name           | ``str``               | Name of the camera to |
|                       |                       | enable                |
+-----------------------+-----------------------+-----------------------+

Return
------------

``None``

Exceptions
~~~~~~~~~~

-  ``RayaCameraInvalidName``
-  ``RayaCameraAlreadyEnabled``

See the :ref:`complete list of cameras exceptions <cameras_exceptions>`.


Usage Example
=======================

1. Enabling the 'chest' camera
-------------------------------------

.. code-block:: python

      ...
      self.cameras = await self.enable_controller('cameras')
      ...
      await self.cameras.enable_color_camera(camera_name='chest')
      # Now you can use the 'chest' camera
      ...
