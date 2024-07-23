===================
Leds
===================

.. raw :: html

   <hr/>

.. raw:: html

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
=============

This controller allows you to manipulate all the leds groups that exist in the 
robotic device. For example, Gary has leds in the head area, around the button,
next to the sensors and in the bottom of the skirt.

Please notice that if you set animation repetition to zero, it will continue to
play indefinitely.

2. Main arguments:
===================

========= ==========================================================================
Name      Description
========= ==========================================================================
Group     groups represent the area of leds that you want to manipulate. 
          For example, “head” group will be used to play a led interaction 
          in the head area.
Color     the LEDS can be displayed in different colors. In order to see the 
          entire list of possible colors, please visit this
          :ref:`doc <gary_list_led_colors>`.
Animation For each group area, there are several animations that can be used in
          order to interact with the end-users. For example, “waiting” animation
          for head group will display a line moving from left to the right of 
          the head
========= ==========================================================================

3. Using the Controller
========================

.. code:: python

   from raya.application_base import RayaApplicationBase

   class RayaApplication(RayaApplicationBase):
       async def setup(self):
       ...
           self.leds = await self.enable_controller('leds')
        ...

Leds controller methods:

- :doc:`set_color()<./asynchronous_methods/set_color>`
- :doc:`turn_off_group()<./asynchronous_methods/turn_off_group>`
- :doc:`turn_off_all()<./asynchronous_methods/turn_off_all>`
- :doc:`animation()<./asynchronous_methods/animation>`
- :doc:`get_max_speed()<./synchronous_methods/get_max_speed>`
- :doc:`get_groups()<./synchronous_methods/get_groups>`
- :doc:`get_colors()<./synchronous_methods/get_colors>`
- :doc:`get_animations()<./synchronous_methods/get_animations>`

Each method page includes standalone examples of their use.

4. Example
=============

- .. raw:: html

      <div>See all Lidar examples in the pyraya_examples 
         <a href="https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/leds/src/app.py" 
         class="custom-link"
         target="_blank"
         >
            LEDS usage example
         </a>
      </div>

