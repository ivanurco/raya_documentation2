================
Status
================

.. raw :: html

   <hr/>


.. raw:: html

   <div class="hidden-block">

.. toctree::
   :maxdepth: 2

   Asynchronous methods <asynchronous_methods/index>  
   Exceptions <exceptions>
   Enumerations <enumerations>

.. raw:: html

   </div>

1. Overview
================

Status controller allows you to know the current status of the battery,
location, arms, manipulation, application status and raya status.

2. Using the controller
==========================

Creating the controller in your app:

.. code:: python

   from raya.controllers.status_controller import StatusController

   class RayaApplication(RayaApplicationBase):
       async def setup(self):
           ...
           self.status: StatusController = await self.enable_controller('status')
           ...

Status controller methods:

-  :doc:`get_manipulation_status()<./asynchronous_methods/get_manipulation_status>`
-  :doc:`get_localization_status()<./asynchronous_methods/get_localization_status>`
-  :doc:`get_battery_status()<./asynchronous_methods/get_battery_status>`
-  :doc:`get_available_arms()<./asynchronous_methods/get_available_arms>`
-  :doc:`get_raya_status()<./asynchronous_methods/get_raya_status>`

Each method page includes standalone examples of their use.

3. Example
=====================

-  `Status_example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/status_example>`__
