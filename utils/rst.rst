Disable and delete a previously created frame listener, see
`create_color_frame_listener() </v2/docs/controller-cameras-create-frame-listener>`__.

Reference
---------

Arguments
~~~~~~~~~

+-----------------------+-----------------------+-----------------------+
| Arguments             | Type                  |                       |
+=======================+=======================+=======================+
| camera_name           | ``str``               | Camera name           |
+-----------------------+-----------------------+-----------------------+

Return
~~~~~~

``None``

Exceptions
~~~~~~~~~~

-  ``RayaCameraInvalidName``\ ````

See the `complete list of cameras
exceptions. </v2/docs/cameras-exceptions>`__

Usage Example
-------------

1. Delete listener
~~~~~~~~~~~~~~~~~~

.. container:: section html-code-block active
   :name: section-1692984831354

   .. container:: code-language

      .. container:: span-wrapper

         PythonPython

      .. container:: action-items

   ::

      ...
      self.cameras = await self.enable_controller('cameras')
      self.camera_name = 'chest'
      self.cameras.enable_camera(self.camera_name)
      self.cameras.create_color_frame_listener(camera_name=self.camera_name, callback=self.camera_frame_callback)
      ...
      self.cameras.delete_listener(camera_name=self.camera_name)
      ...
