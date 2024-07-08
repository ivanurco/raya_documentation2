============================
delete_listener()
============================

.. raw:: html

    <hr/>


Disable and delete a previously created frame listener, see
:doc:`create_color_frame_listener() <create_color_frame_listener>`.

Reference
===========

Arguments
------------

+-----------------------+-----------------------+-----------------------+
| Arguments             | Type                  |                       |
+=======================+=======================+=======================+
| camera_name           | ``str``               | Camera name           |
+-----------------------+-----------------------+-----------------------+

Return
----------------

``None``

Exceptions
--------------

-  ``RayaCameraInvalidName``

See the :ref:`complete list of cameras exceptions. <cameras_exceptions>`

Usage Example
====================

1. Delete listener
----------------------

.. code-block:: python

      ...

      self.cameras = await self.enable_controller('cameras')
      self.camera_name = 'chest'
      self.cameras.enable_camera(self.camera_name)
      self.cameras.create_color_frame_listener(camera_name=self.camera_name, callback=self.camera_frame_callback)
      
      ...

      self.cameras.delete_listener(camera_name=self.camera_name)
      
      ...
