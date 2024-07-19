================
Fleet
================

.. raw:: html

   <hr/>

   <div class="hidden-block">

.. toctree::
   :maxdepth: 1

   Synchronous methods <synchronous_methods/index>
   Asynchronous methods <asynchronous_methods/index>   
   Exceptions <exceptions>   
   Enumerations <enumerations>

.. raw :: html

    </div>


1. Overview
================

This controller allows to use a Fleet manager that will control a group
of robots, it will determine the areas where a robot can operate and
even have some aditional features to program a time to execute an app

2. Using the Controller
==========================

Creating the controller in your app:

.. code-block:: python

   from raya.application_base import RayaApplicationBase

   class RayaApplication(RayaApplicationBase):
      async def setup(self):
          ...
          self.fleet = self.enable_controller('fleet')

The robot have to be already configured on the fleet client.
