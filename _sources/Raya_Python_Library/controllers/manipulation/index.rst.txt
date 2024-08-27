================
Manipulation
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


Grasping
==========

1. Overview
---------------

The purpose of this controller is to allow you to perform “smart” tasks
related to the graping phase, mostly related to pick & place
functionality.

Instead of using CV controller & Arm controller to manipulate the arm
and close the gripper, while taking into consideration several dynamic
parameters like object dimensions, you can use this controller and
perform a pick command with few lines of code.

2. Using the controller
--------------------------

.. code-block:: python

   from raya.application_base import RayaApplicationBase
   from raya.controllers.manipulation_controller import ManipulationController


   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.manip:ManipulationController = \await self.enable_controller('manipulation')        
           ...

3. Example
--------------------------

`Pick
Object <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/manipulation_pick_object>`__

`Pick Object
Point <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/manipulation_pick_object_point>`__

`Place
Object <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/manipulation_place_object_point>`__

See more on the pyraya examples
`Github <https://github.com/Unlimited-Robotics/pyraya_examples>`__


