============================
check_sensor_in_range()
============================

.. raw :: html

   <hr/>

Check if the current value of a **continuous sensor** is inside/outside
a range.

Reference
===========

Arguments
-----------

+-----------------+-----------------+-----------------+---------------------------------+
| Arguments       | Type            | Default value   |                                 |
+=================+=================+=================+=================================+
| sensor_path     | ``string``      |                 | Path of the sensor to read,     |
|                 |                 |                 | see the :ref:`list of sensors   |
|                 |                 |                 | <Gary_sensors>`                 |
+-----------------+-----------------+-----------------+---------------------------------+
| lower_bound     | ``float``       | ``-inf``        | The lower bound against which   |
|                 |                 |                 | the sensor value will be        |
|                 |                 |                 | compared.                       |
+-----------------+-----------------+-----------------+---------------------------------+
| higher_bound    | ``float``       | ``inf``         | The higher bound against        |
|                 |                 |                 | which the sensor value          |
|                 |                 |                 | will be compared.               |
+-----------------+-----------------+-----------------+---------------------------------+
| inside_range    | ``bool``        | ``True``        | Boolean representing return     |
|                 |                 |                 | value when sensor is inside the |
|                 |                 |                 | range.                          |
+-----------------+-----------------+-----------------+---------------------------------+
| abs_val         | ``bool``        | ``False``       | If true, take absolute value    |
|                 |                 |                 | of sensor value before comparing|
|                 |                 |                 | it (lower and higher bound must |
|                 |                 |                 | be positive).                   |
+-----------------+-----------------+-----------------+---------------------------------+

Note that if ``abs_val`` is True, ``lower_bound`` or/and
``higher_bound`` must be positive to have effect.

Return
---------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``bool``                          | ``True`` if the value of the      |
|                                   | sensor inside                     |
|                                   | (``inside_range=True``) / outside |
|                                   | (``inside_range=False``) the      |
|                                   | specified range.                  |
+-----------------------------------+-----------------------------------+

Exceptions
------------

-  ``RayaSensorsInvalidPath``

See the :ref:`complete sensors exceptions <sensors_exceptions>`.

Examples
===============

Checking obstacle
-------------------

Check if there are any object behind the robot (using ultrasonic sensor
number 2), less than 30 centimeters:

.. code:: python

   ...
   if self.sensors.check_sensor_in_range("/sonar/2", lower_bound=0.3):
       self.log.info('Obstacle detected!')
   else:
       self.log.info('No obstacle')
   ...

Checking temperature
----------------------

Chek if ambient temperature is not between 20 and 25 degrees.

.. code:: python

   ...
   if self.sensors.check_sensor_in_range(
            "/temperature/ambient", 
            lower_bound=20.0, 
            higher_bound=25.0, 
            inside_range=False,
        ):
       self.log.info('Not good temperature!!')
   ...