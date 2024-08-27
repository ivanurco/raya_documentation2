.. _lidar_exceptions:

======================
Exceptions
======================

.. raw :: html

    <hr/>


+-----------------------------------+-----------------------------------+
| Exception                         | Condition                         |
+===================================+===================================+
| ``RayaInvalidNumericRange``       | ‘At least one of both             |
|                                   | lower_distance or upper_distance  |
|                                   | must be defined’.                 |
+-----------------------------------+-----------------------------------+
| ``RayaLidarInvalidAngleUnit``     | Angle unit must be                |
|                                   | ANGLE_UNIT.RADIANS or             |
|                                   | ANGLE_UNIT.DEGREES.               |
+-----------------------------------+-----------------------------------+
| ``RayaNeedCallback``              | Lidar listener require at least   |
|                                   | one callback or callback_async.   |
+-----------------------------------+-----------------------------------+
| ``RayaLidarNotDataReceived``      | Timeout reached and no lidar data |
|                                   | received.                         |
+-----------------------------------+-----------------------------------+