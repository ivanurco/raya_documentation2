=========================
disable_streaming()
=========================

.. raw:: html

    <hr/>

Disable the streaming of the specified camera.

Reference
===============

Arguments
----------

+-----------------------+-----------------------+-----------------------+
| Argument              | Type                  |                       |
+=======================+=======================+=======================+
| camera_name           | ``str``               | Name of the camera    |
+-----------------------+-----------------------+-----------------------+

Return
----------

``None``

Exceptions
-------------

-  ``RayaCameraInvalidName``

See the :ref:`complete list of cameras exceptions. <cameras_exceptions>`

Usage Example
===============

1. Enabling the 'chest' camera
----------------------------------

.. code-block:: python

    ...
    self.cameras = await self.enable_controller('cameras')
    port, protocol, path = await self.cameras.enable_streaming('chest')
    ...
    await self.cameras.disable_streaming('chest')
    ...
