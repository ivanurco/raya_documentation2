================
Interactions
================

.. raw:: html

   <hr/>

   <div class="hidden-block">

.. toctree::
   :maxdepth: 2

   Synchronous methods <synchronous_methods/index>   
   Asynchronous methods <asynchronous_methods/index>
   Exceptions <exceptions>
   Feedbacks <feedbacks>   

.. raw:: html

   </div>


1. Overview
============

Interactions are a simplified and easy-to-use way to interact with
end-users, when trying to express a message like letting the user know
that the robot is waiting for some input, that it’s processing info or
that the battery level is low.

.. figure:: /_static/interactions.png
   :alt: May 2021 Gary’s outputs
   :align: center
   :width: 100%
   :height: 460px

   

Due to the amount of communication outputs that the robot have (sound,
head leds, chest leds, movements, touch screen, etc..), it can be
complex to create a clear and simple interaction message. That’s exactly
the reason we developed the interactions controller - to use all those
communication methods together, scheduled in an optimized way to pass
the message clearly.

2. Interactions types
======================

================== ============================== ==================================================================================================================================== ================================================================================================================================================== 
interaction name   outputs involved               meaning                                                                                                                              more info                                                                                                                                         
================== ============================== ==================================================================================================================================== ================================================================================================================================================== 
task_received      head leds, sound, chest leds   the robot received an instruction (whether it is a task to perform or some other input that motivates an action on Gary’s behalf).   `Illustration of instruction received <https://documentation.unlimited-robotics.com/v1/docs/indication-of-instruction-received>`__  
task finished      head leds, sound, chest leds   indicates that the robot completed a task/command/function.                                                                          `Ilustration of task finished <https://documentation.unlimited-robotics.com/docs/finished-task>`__                                  
performing_task    head leds, chest leds          an interaction used to show that the robot is busy performing something                                                              `Illustration of performing a task <https://documentation.unlimited-robotics.com/docs/performing-task>`__                           
================== ============================== ==================================================================================================================================== ================================================================================================================================================== 


3. Using the controller
========================

.. code-block:: python

   from raya.application_base import RayaApplicationBase
   from raya.logger import create_logger as LogLevel

   class RayaApplication(RayaApplicationBase):
       async def setup(self):
           self.interactions = await self.enable_controller('interactions')
           ...

controller methods:

-  :doc:`get_interactions() <./synchronous_methods/get_interactions>`
-  :doc:`play_interaction() <./asynchronous_methods/play_interaction>`
-  :doc:`interaction_running() <./synchronous_methods/interaction_running>`
-  :doc:`wait_interaction_finished() <./asynchronous_methods/wait_interaction_finished>`

4. Example
============

-  `Using interactions <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/interactions/src/app.py>`__
