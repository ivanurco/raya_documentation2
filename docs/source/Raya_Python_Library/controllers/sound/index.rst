================
Sound
================

.. raw:: html

    <hr/>

.. raw:: html

    <div class="hidden-block">

.. toctree::
   :maxdepth: 1

   Synchronous methods <synchronous_methods/index>
   Asynchronous methods <asynchronous_methods/index>
   Handlers <handlers/index>
   Exceptions <exceptions>
   Feedbacks <feedbacks>

.. raw:: html

    </div>


1. Overview
===========

Sounds controller allows playing predefined and custom sounds in the robot. 
It also allows recording to a file or variable.

2. List of pre-defined sounds
=================================

You can find a list of predefined sounds, including suggested use cases for 
each of them under :doc:`this section <./index>`.

3. Using the controller
==========================

Creating the controller in your app:

.. code:: python

   from raya.application_base import RayaApplicationBase

   class RayaApplication(RayaApplicationBase):
       async def setup(self):
           ...
           self.sound = await self.enable_controller('sound')
           ...

Sound controller methods:

- :doc:`get_predefined_sounds()<synchronous_methods/get_predefined_sounds>`
- :doc:`is_recording() <synchronous_methods/is_recording>`
- :doc:`is_playing() <synchronous_methods/is_playing>`
- :doc:`play_sound() <asynchronous_methods/play_sound>`
- :doc:`record_sound() <asynchronous_methods/record_sound>`
- :doc:`cancel_sound() <asynchronous_methods/cancel_sound>`

    
4. Example
=============

-  `Sound play custom <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/sound_play_custom/src/app.py>`__
-  `Sound play predefined <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/sound_play_predefined/src/app.py>`__
-  `Sound record and play <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/sound_record_and_play>`__
-  `Sound record and save <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/sound_record_save>`__

