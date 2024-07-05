====================
get_sensors_list()
====================

Synchronously get a list of sensors.

Reference
===========

Arguments
-----------

``None``

Return
----------

======== ================================
Type     Description
======== ================================
``dict`` Dictionary with sensors as keys.
======== ================================

Exceptions
------------

See the :ref:`complete sensors exceptions <sensors_exceptions>`.

-  ``RayaSensorsInvalidPath``

Usage example
===============

Reading sensors list
------------------------

   Get sensors list from :ref:`Gary <Gary_sensors>`.

.. code:: python

   ...
   self.sensors:SensorsController = await self.enable_controller('sensors')
   self.log.info('AVAILABLE SENSORS:')
   self.log.info(json.dumps(
           obj=self.sensors.get_sensors_list(), indent=2
           ))
   ...

Output:

::

   "version_name": " V_1.8",
     "accelerometer": [
       "x",
       "y",
       "z"
     ],
     "gyro": [
       "x",
       "y",
       "z"
     ],
     "nicla_temp": 34.0,
     "gas_value": 81021.0,
     "rotation": [
       "x",
       "y",
       "z",
       "w"
     ],
     "temperature": [
       "0",
       "1",
       ...
     ],
     "srf": [
       "0",
       "1",
       ...
     ],
     "emergency_button": true,
     "chest_button": 0.0,
     "buttons_state": 0