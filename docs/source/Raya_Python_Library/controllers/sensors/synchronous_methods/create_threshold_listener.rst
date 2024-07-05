============================
create_threshold_listener()
============================

Create a listener triggered when the value of one (or multiple)
**continuous sensor(s)** go(es) inside/outside a specific numeric range.

.. Note::
   This method only works with **continuous sensors**.
   Remember the types of sensors in the :ref:`Gary sensors<Gary_sensors>` page.

Reference
==========

Arguments
-----------

+-----------------+-----------------+-----------------+--------------------------------------+
| Arguments       | Type            | Default value   |                                      |
+=================+=================+=================+======================================+
| listener_name   | ``string``      |                 | Unique listener                      |
|                 |                 |                 | identifier.                          |
+-----------------+-----------------+-----------------+--------------------------------------+
| callback        | ``function``    |                 | Callback                             |
|                 |                 |                 | function.                            |
+-----------------+-----------------+-----------------+--------------------------------------+
| sensor_paths    | ``list``        |                 | List of sensors                      |
|                 |                 |                 | paths, see the                       |
|                 |                 |                 | :ref:`list of sensors<Gary_sensors>` |
+-----------------+-----------------+-----------------+--------------------------------------+
| lower_bound     | ``float``       | -inf            | Lower limit of                       |
|                 |                 |                 | the window.                          |
+-----------------+-----------------+-----------------+--------------------------------------+
| higher_bound    | ``float``       | inf             | Higher limit of                      |   
|                 |                 |                 | the window.                          |
+-----------------+-----------------+-----------------+--------------------------------------+
| inside_range    | ``bool``        | ``True``        | Triggers when                        |
|                 |                 |                 | sensor value                         |
|                 |                 |                 | goes inside                          |
|                 |                 |                 | (``True``) /                         |
|                 |                 |                 | outside                              |
|                 |                 |                 | (``False``) the window.              |
|                 |                 |                 | range.                               |
+-----------------+-----------------+-----------------+--------------------------------------+
| abs_val         | ``bool``        | ``False``       | If ``True``,                         |
|                 |                 |                 | uses the                             |
|                 |                 |                 | absolute value                       |
|                 |                 |                 | of the sensor                        |
|                 |                 |                 | value.                               |
+-----------------+-----------------+-----------------+--------------------------------------+

At least one of both ``lower_bound`` or ``higher_bound`` must be
speficied.

Note that if ``abs_val`` is True, ``lower_bound`` or/and
``higher_bound`` must be positive to have effect.

Return
----------

``None``

Exceptions
------------

-  ``RayaSensorsInvalidPath``
-  ``RayaSensorsUnknownPath``
-  ``RayaListenerAlreadyCreated``
-  ``RayaNeedCallback``

See the :ref:`complete sensors exceptions <sensors_exceptions>`.

See the :ref:`general exceptions <general_exceptions>`.

Callback Arguments
-----------------------

Callback does not receive any arguments.

Usage example
===============

1. Detecting fast rotation
--------------------------------

The following code detects when the robot rotates faster than 0.7rad/s
(in any direction), and executes the ``listener_rotation_callback``
function asynchronously.

.. code:: python

   async def setup(self):
       ...
       self.sensors = await self.enable_controller('sensors')
       self.sensors.create_threshold_listener(listener_name='listener_rotation',
                                              callback = self.listener_rotation_callback,
                                              sensor_paths = ['/imu/rot_vel/z'],
                                              lower_bound = 0.7,
                                              abs_val=True)
       ...
       
   async def loop(self):
       # Doing other stuff
       ...
       
   def listener_rotation_callback(self):
           self.log.info('rotating too fast!!!')

2. Obstacles from multiple ultrasonic sensors
-------------------------------------------------

The following code detects obstacles between 0.5m and 1.5m, in any of
the three ultrasonic sensors.

.. code:: python

   async def setup(self):
       ...
       self.sensors = await self.enable_controller('sensors')
       self.sensors.create_threshold_listener(listener_name='obstacles',
                                              callback = self.obstacles_callback,
                                              sensor_paths = ['/sonar/1', '/sonar/2', '/sonar/3'],
                                              lower_bound = 0.5,
                                              lower_bound = 1.5)
       ...
       
   async def loop(self):
       # Doing other stuff
       ...
       
   def obstacles_callback(self):
           self.log.info('obstacle detected!')

3. External temperature outside specified range
--------------------------------------------------

Detects when ambient temperature is not comfortable (between 20 and 25
degrees).

Chek if ambient temperature is not between 20 and 25 degrees.

.. code:: python

   ...
   self.sensors = await self.enable_controller('sensors')
   ...
   if self.sensors.check_sensor_in_range("/temperature/ambient", lower_bound=20.0, higher_bound=25.0, inside_range=False):
       self.log.info('Not good temperature!!')
   ...

.. code:: python

   async def setup(self):
       ...
       self.sensors = self.enable_controller('sensors')
       self.sensors.create_threshold_listener(listener_name='bad_temperature',
                                              callback = self.bad_tempetature_callback,
                                              sensor_paths = ['/temperature/ambient'],
                                              lower_bound = 20.0,
                                              lower_bound = 25.0,
                                              inside_range = False)
       ...
       
   async def loop(self):
       # Doing other stuff
       ...
       
   def bad_tempetature_callback(self):
           self.log.info('Temperature not comfortable!')