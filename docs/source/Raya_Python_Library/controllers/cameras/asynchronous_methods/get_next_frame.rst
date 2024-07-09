===============================
get_next_frame()
===============================

.. raw:: html

    <hr/>

Take a image frame from the selected camera.

Reference
===========

Arguments
-------------

+-----------------+-----------------+-----------------+-----------------+
| Argument        | Type            | Default value   |                 |
+=================+=================+=================+=================+
| camera_name     | ``str``         |                 | Name of the     |
|                 |                 |                 | camera.         |
+-----------------+-----------------+-----------------+-----------------+
| compressed      | ``bool``        | ``False``       | When ``True``,  |
|                 |                 |                 | this method     |
|                 |                 |                 | returns a       |
|                 |                 |                 | ``jpeg``        |
|                 |                 |                 | compressed      |
|                 |                 |                 | image           |
+-----------------+-----------------+-----------------+-----------------+
| get_timestamp   | ``bool``        | ``False``       | When ``True``,  |
|                 |                 |                 | this method     |
|                 |                 |                 | returns a       |
|                 |                 |                 | returns a       |
|                 |                 |                 | timestamp with  |
|                 |                 |                 | the frame.      |
+-----------------+-----------------+-----------------+-----------------+
| time_out        | ``float``       | ``-0.1``        | The maximum     |
|                 |                 |                 | time to wait    |
|                 |                 |                 | for a frame, in |
|                 |                 |                 | seconds.        |
+-----------------+-----------------+-----------------+-----------------+

.. Important::    

    - Camera must be previously enabled with the :doc:`enable_color_camera()<./enable_color_camera>` method.

Return
----------

-  When ``compressed == False``:

   -  A `Numpy
      array <https://numpy.org/doc/stable/reference/generated/numpy.array.html>`__
      with shape ``(height, width, 3)``, where ``3`` represents RGB
      channels. ``height`` and ``width`` depend on the selected camera.

-  When ``compressed == True``:

   -  An uni dimensional `Numpy
      array <https://numpy.org/doc/stable/reference/generated/numpy.array.html>`__
      with ``jpeg`` RGB compressed image.

-  When ``get_timestamp == True``:

   -  ``Tuple (image, timestamp),`` timestamp in tuple (second,
      milliseconds).


Exceptions
-------------

-  ``RayaCameraInvalidName``
-  ``RayaCameraNotEnabled``
-  ``RayaCameraNotFrameReceived``

See the :ref:`complete list of cameras exceptions. <cameras_exceptions>`

Usage Example
====================

1. Take a image frame and show it
------------------------------------

This example takes a image frame and show it for 3 seconds.

.. code-block:: python

      from raya.application_base import RayaApplicationBase
      from raya.tools.image import show_image

      class RayaApplication(RayaApplicationBase):
          async def setup(self):
              self.cameras = await self.enable_controller('cameras')
              await self.cameras.enable_color_camera('chest')

          async def loop(self):
              img = await self.cameras.get_next_frame('chest')
              show_image(img=img, title='Chedfs')
              await self.sleep(3.0)
              self.finish_app()

.. code-block:: python

      from raya.application_base import RayaApplicationBase
      from raya.tools.image import show_image

      class RayaApplication(RayaApplicationBase):
          async def setup(self):
              self.cameras = await self.enable_controller('cameras')
              await self.cameras.enable_color_camera('chest')

          async def loop(self):
              img, timestamp = await self.cameras.get_next_frame(
                    camera_name='chest', 
                    get_timestamp=True,
                )
              print('Timestamp: ', timestamp)
              show_image(img=img, title='Chedfs')
              await self.sleep(3.0)
              self.finish_app()
