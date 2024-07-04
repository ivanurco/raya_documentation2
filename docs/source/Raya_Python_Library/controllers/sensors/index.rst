====================
Sensors
====================

1. Overview
==============

This controller allows reading most of the Robot's sensors.

UR Robots have two types of sensors, according to the kind of data they output:

   * **Continuous sensors**: Read variable is a continuous decimal value.
   * **Boolean sensors**: Read variable is a binary state.

2. Using the Controller
=========================

Creating the controller in your app:


.. code-block:: python   

   from raya.application_base import RayaApplicationBase

   class RayaApplication(RayaApplicationBase):
      async def setup(self):
         ...
         self.sensors = await self.enable_controller('sensors')
         ...

The controller class includes a set of methods to synchronously access the sensors:

* get_all_sensors_value().
* get_sensors_list()
* get_sensor_value()
* check_sensor_in_range()

It also includes the following methods to create listeners that trigger when different events are detected:

* create_threshold_listener()
* create_boolean_listener()

Each method page includes standalone examples of how to use them.

3. Full examples
=================

The following full examples use this controller:

* sensors_chest_button_listener
* sensors_listener
* sensors_list
* sensors_print



.. raw:: html

   <div class="hidden-block">

.. toctree::
   :maxdepth: 3
   
   Synchronous methods <synchronous_methods/index>   
   Handlers <handlers/index>
   Exceptions <exceptions>
   Feedbacks <feedbacks>
   Enumerations <enumerations>

.. raw:: html

   </div>

