======================
check_obstacle()
======================

.. raw:: html

    <hr />
    

Check the presence of an obstacle into a specified range of angles and
distances.

Reference
============

Arguments
-------------

+---------------------------+-----------------+-----------------+---------------------------------------+
| Argument                  | Type            | Default value   |                                       |
+===========================+=================+=================+=======================================+
| ``lower_angle``           | ``float``       |                 | Lower bound of                        |
|                           |                 |                 | the angles                            |
|                           |                 |                 | range.                                |
+---------------------------+-----------------+-----------------+---------------------------------------+
| ``upper_angle``           | ``float``       |                 | Upper bound of                        |
|                           |                 |                 | the angles                            |
|                           |                 |                 | range.                                |
+---------------------------+-----------------+-----------------+---------------------------------------+
| ``lower_distance``        | ``float``       | ``0.0``         | Lower bound of                        |
|                           |                 |                 | the distance                          |
|                           |                 |                 | range.                                |                   
+---------------------------+-----------------+-----------------+---------------------------------------+
| ``Upper_distance``        | ``float``       |``float('inf')`` | Upper bound of                        |
|                           |                 |                 | the distance                          |                   
|                           |                 |                 | range.                                |
+---------------------------+-----------------+-----------------+---------------------------------------+
| ``ang_unit``              | ``ANGLE_UNIT``  | ``DEGREES``     | :ref:`ENUM<lidar_enumerations>`       |
|                           |                 |                 | to select the unit of the angle:      |
|                           |                 |                 | (``DEGREES``) degrees or (``RADIANS``)|
|                           |                 |                 | radians.                              |
+---------------------------+-----------------+-----------------+---------------------------------------+



-  Both ``lower_angle`` and ``upper_angle`` must be into the range
   ``[angle_min, angle_max]`` from laser info (see
   :doc:`LidarController.get_laser_info() <get_laser_info>`)
-  ``upper_angle`` must be higher than ``lower_angle``.
-  At least one of both ``lower_distance`` or ``upper_distance`` must be
   speficied.
-  ``upper_distance`` must be higher than ``lower_distance``.

Return
---------

``bool`` Returns ``True`` if the lidar detects an obstacle between the
angles lower_angle and upper_angle, at a distance between lower_distance
and upper_distance from the robot.

Exceptions
------------

-  ``RayaLidarInvalidAngleUnit``
-  ``RayaInvalidNumericRange``

See the :ref:`complete list of lidar exceptions <lidar_exceptions>`.

Usage Example
================

Check if obstacle in front of the robot (angle range:
``[-15.0°, 15.0°]``), at less than a meter and a half.

Code:

.. code:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.lidar = self.enable_controller('lidar')
           ...

       async def loop(self):
         ...
         detection = self.lidar.check_obstacle(
                   lower_angle=-15.0, 
                   upper_angle=15.0, 
                   lower_distance=1.5, 
                   and_unit=ANG_UNIT.DEG
               )
         ...
               
       async def finish(self):
          ...


.. raw:: html

    <hr />
    <hr />


.. raw:: html

    <div> See the
        <a href="https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/lidar_listener/src/app.py"
        class="custom-link">
            Lidar_listener
        </a>
            example to check some valid uses.
    </div>