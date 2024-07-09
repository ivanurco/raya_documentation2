================
Motion
================

.. raw:: html 

   <hr/>

.. raw :: html

   <div class="hidden-block">

.. toctree::
   :maxdepth: 2

   Synchronous methods <synchronous_methods/index>
   Asynchronous methods <asynchronous_methods/index>   
   Exceptions <exceptions>
   Feedbacks <feedbacks>
   Enumerations <enumerations>

.. raw:: html

   </div>


1. Overview
--------------

This controller allows you to move the robot in any direction that you
want.

This controller gives direct movement commands to the robot and it
doesn't include path planning or obstacle avoidance algorithms. Please
refer to the :ref:`Navigation controller <navigation_controller>`
if you want to navigate instead of just moving.

2. Using the controller
-------------------------

.. code-block:: python

   from raya.application_base import RayaApplicationBase

   class RayaApplication(RayaApplicationBase):
         async def setup(self):
            ...
            self.sound = await self.enable_controller('motion')
            ...

| 

The controller class includes a set of methods to control the motion of
the robot:

-  :doc:`is_moving()<./synchronous_methods/is_moving>`
-  :doc:`check_last_exception()<./synchronous_methods/check_last_exception>`
-  :doc:`get_last_result()<./synchronous_methods/get_last_result>`
-  :doc:`move_linear()<./asynchronous_methods/move_linear>`
-  :doc:`rotate()<./asynchronous_methods/rotate>`
-  :doc:`set_velocity()<./asynchronous_methods/set_velocity>`
-  :doc:`await_until_stop()<./asynchronous_methods/await_until_stop>`
-  :doc:`cancel_motion()<./asynchronous_methods/cancel_motion>`

3. Examples
--------------

.. raw:: html

   <div> See all Motion examples in the pyraya_examples
      <a href="https://github.com/Unlimited-Robotics/pyraya_examples"
      class="custom-link"
      target="_blank">
            Github
      </a>
   </div>