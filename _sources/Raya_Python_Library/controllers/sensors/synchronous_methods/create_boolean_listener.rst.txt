===========================
create_boolean_listener()
===========================

.. raw :: html

   <hr/>

Create a listener triggered when the value of one (or multiple)
**boolean sensor(s)** go(es) into a specific logic state.

.. Note::

   This method only works with **boolean sensors**. Remember
   the types of sensors in the :ref:`Gary sensors<Gary_sensors>` page.

Reference
===========

Arguments
-----------

+-----------------------+-----------------------+--------------------------------------------------+
| Arguments             | Type                  |                                                  |
+=======================+=======================+==================================================+
| listener_name         | ``string``            | Unique listener                                  |
|                       |                       | identifier.                                      |
+-----------------------+-----------------------+--------------------------------------------------+
| callback              | ``callable``          | Callback function.                               |
+-----------------------+-----------------------+--------------------------------------------------+
| sensor_paths          | ``list``              | List of sensors paths, see the                   |
|                       |                       | :ref:`list of sensors<Gary_sensors>`             |
+-----------------------+-----------------------+--------------------------------------------------+
| logic_state           | ``bool``              | Logic state to                                   |
|                       |                       | trigger the listener.                            |
+-----------------------+-----------------------+--------------------------------------------------+

Return
----------

``None``

Exceptions
--------------

-  ``RayaSensorsInvalidPath``
-  ``RayaSensorsUnknownPath``
-  ``RayaListenerAlreadyCreated``
-  ``RayaNeedCallback``

See the :ref:`complete sensors exceptions <sensors_exceptions>`.

See the :ref:`general exceptions <general_exceptions>`.

Callback Arguments
---------------------

Callback does not receive any arguments.

Usage example
================

1. Line detection
--------------------

Detect a line by any of the line sensors:

.. code:: python

   async def setup(self):
       ...
       self.sensors = await self.enable_controller('sensors')
       self.sensors.create_boolean_listener(
            listener_name='line',
            callback = self.line_callback,
            sensor_paths = ['/line_sensor/1', '/line_sensor/2', '/line_sensor/3'],
            logic_state = True,
            )
       ...
       
   async def loop(self):
       # Doing other stuff
       ...
       
   def line_callback(self):
           self.log.info('line detected!')