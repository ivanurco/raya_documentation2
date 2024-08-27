====================
get_sensor_value()
====================

.. raw :: html

   <hr/>
   
Synchronously get current value of a sensor.

Reference
==========

Arguments
----------

+-----------------------+-----------------------+---------------------------------------------+
| Argument              | Type                  |                                             |
+=======================+=======================+=============================================+
| sensor_path           | ``string``            | Path of the sensor to                       |
|                       |                       | read, see the                               |
|                       |                       | :ref:`list of sensors<Gary_sensors>`        |
+-----------------------+-----------------------+---------------------------------------------+

Return
--------

Curent value of the sensor or group of sensors (see the examples below).

Exceptions
------------

-  ``RayaSensorsInvalidPath``

See the :ref:`complete sensors exceptions <sensors_exceptions>`.

Usage example
==============

Reading temperature
----------------------

   Works with any continuous sensor

.. code:: python

   ...
   temp = self.sensors.get_sensor_value('/temperature')
   self.log.info(f'Temperature = {temp}C')
   self.log.info(f'Data type = {type(temp)}')
   ...

Output:

::

   Temperature = 19.4C
   Data type = <class 'float'>

Reading center line sensor
--------------------------------

   Works with any boolean sensor

.. code:: python

   ...
   center_line = self.sensors.get_sensor_value('/line_sensor/1')
   self.log.info(f'Line state = {center_line}')
   self.log.info(f'Data type = {type(center_line)}')
   ...

Output:

::

   Line state = False
   Data type = <class 'bool'>

Reading IMU Acceleration
----------------------------

   Works with any group of sensors, or any ‘incomplete’ path

.. code:: python

   ...
   imu_acc = self.sensors.get_sensor_value('/imu/lin_acc')
   self.log.info(f'IMU Acceleration = {imu_acc}')
   self.log.info(f'Data type = {type(imu_acc)}')
   ...

Output:

::

   IMU Acceleration = {
       'x' : 0.0024,
       'y' : 0.0438,
       'z' : 0.9763,
   }
   Data type = <class 'dict'>

Reading all the Sonars
--------------------------

   Works with any group of sensors, or any ‘incomplete’ path

.. code:: python

   ...
   sonars = self.sensors.get_sensor_value('/sonar')
   self.log.info(f'Sonars = {sonars}')
   self.log.info(f'Data type = {type(sonars)}')
   ...

Output:

::

   Sonars = {
       '1': 0.25,
       '2': 0.12,
       '3': 0.54,
       ...
   }
   Data type = <class 'dict'>