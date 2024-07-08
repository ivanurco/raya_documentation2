===================================
create_color_frame_listener()
===================================

.. raw:: html

    <hr/>


Create a listener triggered each time that the camera generates a new
frame. You can only create **one** listener per camera.

Reference
==========

Arguments
-----------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   |                 |
+=================+=================+=================+=================+
| camera_name     | ``str``         |                 | Camera name,    |
|                 |                 |                 | see the list of |
|                 |                 |                 | cameras         |
+-----------------+-----------------+-----------------+-----------------+
| callback        | ``callable``    | ``None``        | Callback        |
+-----------------+-----------------+-----------------+-----------------+
| callback_async  | ``callable``    | ``None``        | An asynchronous |
|                 |                 |                 | callback to be  |
|                 |                 |                 | executed when a |
|                 |                 |                 | color frame is  |
|                 |                 |                 | received (if    |
|                 |                 |                 | callback_async  |
|                 |                 |                 | is defined,     |
|                 |                 |                 | callback is     |
|                 |                 |                 | ignored).       |
|                 |                 |                 | Allows a        |
|                 |                 |                 | callback that   |
|                 |                 |                 | can use         |
|                 |                 |                 | ‘await’, which  |
|                 |                 |                 | is useful for   |
|                 |                 |                 | non-blocking    |
|                 |                 |                 | operations and  |
|                 |                 |                 | concurrent      |
|                 |                 |                 | tasks.          |
+-----------------+-----------------+-----------------+-----------------+
| compressed      | ``bool``        | ``False``       | When True, the  |
|                 |                 |                 | listener sends  |
|                 |                 |                 | a jpeg          |
|                 |                 |                 | compressed      |
|                 |                 |                 | image to the    |
|                 |                 |                 | callback        |
+-----------------+-----------------+-----------------+-----------------+

| 

.. important::

    -  Camera must be previously enabled with the :ref:`enable_color_camera() <404>` method.
    -  If callback_async is defined, callback is ignored.
    -  One of the callbacks must be defined.


Return
----------

``None``

Exceptions
-------------

-  ``RayaCameraInvalidName``
-  ``RayaCameraNotEnabled``
-  ``RayaNeedCallback``

See the :ref:`complete list of cameras exceptions <cameras_exceptions>`.

Callback Arguments
--------------------

Callback must receive the following arguments.

+-----------------------+-----------------------+-------------------------------------------------+
| Arguments             | Type                  |                                                 |
+=======================+=======================+=================================================+
| frame                 | `Numpy                | Captured frame with shape ``(height, width, 3)``|
|                       | array <https:         | when ``compressed == False``, and unidimensional|
|                       | //numpy.org/doc/stabl | (jpeg) when ``compressed == True``              |
|                       | e/reference/generated |                                                 |
|                       | /numpy.array.html>`__ |                                                 |
+-----------------------+-----------------------+-------------------------------------------------+

Usage Example
==================

1. Continuously show the 'chest' camera image
------------------------------------------------

.. code-block:: python

    ...

        async def setup(self):
            ....
            self.cameras = self.enable_controller('cameras')
            self.cameras.enable_camera('chest')
            self.cameras.create_color_frame_listener(
                camera_name=self.camera_name, 
                callback=self.camera_frame_callback,
                )


        async def loop(self):
            # Do other stuff


        def camera_frame_callback(self, img):
            cv2.imshow('Gary\'s chest camera', img)
            cv2.waitKey(1)
