========================
disable_color_camera()
========================

.. raw:: html

    <hr/>

Disable an specific camera.

Reference
===========

Arguments
-----------

+-----------------------+-----------------------+-----------------------+
| Argument              | Type                  | Explanation           |
+=======================+=======================+=======================+
| camera_name           | ``str``               | Name of the camera to |
|                       |                       | disable               |
+-----------------------+-----------------------+-----------------------+

Return
--------

``None``

Exceptions
-------------

-  ``RayaCameraInvalidName``
-  ``RayaCameraNotEnabled``

See the :ref:`complete list of cameras exceptions. <cameras_exceptions>`

Usage Example
===================

1. Disabling the 'chest' camera
-----------------------------------

.. code-block:: python

      ...
      self.cameras = await self.enable_controller('cameras')
      ...
      await self.cameras.enable_color_camera(camera_name='chest')
      ...
      await self.cameras.disable_color_camera(camera_name='chest')
