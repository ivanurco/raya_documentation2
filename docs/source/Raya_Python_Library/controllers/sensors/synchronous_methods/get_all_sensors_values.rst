===========================
get_all_sensors_values()
===========================

Synchronously get current state of all the sensors.

Reference
===========

Arguments
------------

``None``

Return
----------

+-----------------+-----------------------------------------------------+
| Type            | Description                                         |
+=================+=====================================================+
| ``dict``        | Dictionary with current values of all the sensors,  |
|                 | where keys are paths.                               |
+-----------------+-----------------------------------------------------+

Exceptions
-------------

See the :ref:`complete sensors exceptions <sensors_exceptions>`.

Usage example
================


Reading all the sensors
--------------------------

.. code:: python

   ...
   self.sensors = self.enable_controller('sensors')
   ...
   all_sensors_info = self.sensors.get_all_sensors_values()
   self.log.info(all_sensors_info)
   ...

Output:

.. code:: python

   {
       'thermometer': 18.2,
       'environment': {
           'temperature': 23.4,
           'altitude': 842.0,
           'humidity': 32.4,
           'pressure': 101.32,
       },
       'imu': {
           'lin_acc': {
               'x' : 0.0024,
               'y' : 0.0438,
               'z' : 0.9763,
           },
           'rot_vel': {
               'x': 0.0234,
               'y': 0.0031,
               'z': 0.2302,
           },
           ...
       },
       'sonar': {
           '1': 0.25,
           '2': 0.12,
           '3': 0.54,
           ...
       },
       'line_sensor': {
           '1': False,
           '2': True,
           '3': True,
           ...
       },
       ...
   }