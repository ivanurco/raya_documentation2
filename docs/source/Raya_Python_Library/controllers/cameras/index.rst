================
Cameras
================

.. raw:: html
   
   <hr/>

.. raw:: html

   <div class="hidden-block">

.. toctree::
   :maxdepth: 2

   Synchronous methods <synchronous_methods/index>
   Asynchronous methods <asynchronous_methods/index>
   Exceptions <exceptions>

.. raw:: html
   
   </div>



1. Overview 
==============

The controller provides methods for managing cameras in the system. It enables 
and disables cameras, retrieves frames from them, and sets up event listeners 
for captured frames. The methods allow these operations to be performed both
synchronously and asynchronously, with options to obtain images and timestamps.
The class is versatile and can be used for both color and depth cameras,
providing an abstraction layer for controlling and accessing the available 
cameras in the robot.

For example, Gary’s cameras are identified by the following names and
could be:

+--------------+------+
| Camera  name | Type |
+==============+======+
| head_front   | RGBD |
+--------------+------+
| nav_bottom   | RGBD |
+--------------+------+
| chest        | RGB  |
+--------------+------+

2. Using the Controller 
========================

Creating the controller in your app:

.. code-block:: python

   from raya.application_base import RayaApplicationBase

   class RayaApplication(RayaApplicationBase): 
      async def setup(self): 
      ... 
      self.cameras = await self.enable_controller('cameras') 
      ...

3. Methods 
=============

The controller class includes a set of methods to access the cameras, to
obtain detailed information about each method, click on the respective
name:

.. role:: underline

:underline:`Synchronoys methods:`

- :doc:`is_camera_enabled()<./synchronous_methods/is_camera_enabled>`
- :doc:`available_color_cameras()<./synchronous_methods/available_color_cameras>`
- :doc:`create_color_frame_listener()<./synchronous_methods/create_color_frame_listener>`
- :doc:`delete_listener()<./synchronous_methods/delete_listener>`

:underline:`Asynchronoys methods:`

- :doc:`async enable_color_camera()<./asynchronous_methods/enable_color_camera>`
- :doc:`async disable_color_camera()<./asynchronous_methods/disable_color_camera>`
- :doc:`async get_next_frame()<./asynchronous_methods/get_next_frame>`
- :doc:`async enable_streaming()<./asynchronous_methods/enable_streaming>`
- :doc:`async disable_streaming()<./asynchronous_methods/disable_streaming>`

4. Full examples
==================

The following full examples use this controller:

- .. raw:: html

      <div> 
         <a href="https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/cameras_list/src/app.py" 
         class="custom-link"
         target="_blank">
               Display Cameras List Example 
         </a>
      </div>

- .. raw:: html

      <div> 
         <a href="https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/cameras_listener/src/app.py"         
         class="custom-link"
         target="_blank">
               Create Camera Listener Example 
         </a>
      </div>

- .. raw:: html

      <div> 
         <a href="https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/cameras_polling/src/app.py"
         class="custom-link"
         target="_blank">
               Create and Poll Frames from Camera Example  
         </a>
      </div>

- .. raw:: html

      <div> 
         <a href="https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/cameras_streaming/src/app.py"
         class="custom-link"
         target="_blank">
               Streaming Cameras Example
         </a>
      </div>