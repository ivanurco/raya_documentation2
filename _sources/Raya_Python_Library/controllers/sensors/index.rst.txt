====================
Sensors
====================

.. raw :: html

   <hr/>


.. raw:: html

   <div class="hidden-block">

.. toctree::   
   :maxdepth: 1
   :titlesonly:
      
   Synchronous methods <synchronous_methods/index>      
   Exceptions <exceptions>
   
.. raw:: html

   </div>


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

* :doc:`get_all_sensors_value() <synchronous_methods/get_all_sensors_values>`.
* :doc:`get_sensors_list() <synchronous_methods/get_sensors_list>`.
* :doc:`get_sensor_value() <synchronous_methods/get_sensor_value>`.
* :doc:`check_sensor_in_range() <synchronous_methods/check_sensor_in_range>`

It also includes the following methods to create listeners that trigger when different events are detected:

* :doc:`create_threshold_listener() <synchronous_methods/create_threshold_listener>`
* :doc:`create_boolean_listener() <synchronous_methods/create_boolean_listener>`

Each method page includes standalone examples of how to use them.

3. Full examples
===================

The following full examples use this controller:

* `sensors_chest_button_listener <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/sensors_chest_button_listener/src/app.py>`_
* `sensors_listener <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/sensors_listener/src/app.py>`_
* `sensors_list <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/sensors_list/src/app.py>`_
* `sensors_print <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/sensors_print/src/app.py>`_

