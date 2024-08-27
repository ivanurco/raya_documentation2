==================
get_laser_info()
==================

.. raw:: html

    <hr />
    

Get the following LiDAR technical information:

-  Minimum detection angle.
-  Maximum detection angle.
-  Angle increment between measurements.

Reference
===========

Arguments
-----------

+-----------------+-----------------+-----------------+-----------------+
| Argument        | Type            | Default value   |                 |
+=================+=================+=================+=================+
| ``ang_unit``    | ``ANGLE_UNIT``  | ``DEGREES``     | `ENU            |
|                 |                 |                 | M </v2/docs/enu |
|                 |                 |                 | merations-6>`__ |
|                 |                 |                 | to select the   |
|                 |                 |                 | unit of the     |
|                 |                 |                 | angle:          |
|                 |                 |                 | (``DEGREES``)   |
|                 |                 |                 | degrees or      |
|                 |                 |                 | (``RADIANS``)   |
|                 |                 |                 | radians.        |
+-----------------+-----------------+-----------------+-----------------+

Return
--------

Dictionary ``dict`` with the following keys:

=================== =====================================
Key                 Value
=================== =====================================
``angle_increment`` Angle increment between measurements.
``angle_min``       Minimum detection angle.
``angle_max``       Maximum detection angle.
=================== =====================================

Exceptions
------------

-  ``RayaLidarInvalidAngleUnit``

See the :ref:`complete list of lidar exceptions<lidar_exceptions>`.

Usage Example
==============

Code:

.. code:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.lidar = self.enable_controller('lidar')
           ...

       async def loop(self):
         ...
         lidar_info = self.lidar.get_laser_info()
         self.log.info(lidar_info)
         ...
               
       async def finish(self):
          ...

Output

::

   { 'angle_min':-90.0, 'angle_max':90.0, 'angle_increment':1.0 }


.. raw:: html

    <hr />
    <hr />


.. raw:: html

   <div> See the 
       <a href="https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/lidar_scan/src/app.py"
          class="custom-link">
         Lidar_scan
       </a>
         example to check some valid uses.
   </div>
