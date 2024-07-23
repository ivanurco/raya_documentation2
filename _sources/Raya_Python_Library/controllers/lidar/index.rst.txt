================
LiDAR
================

.. raw :: html

   <hr/>

.. raw:: html

   <div class="hidden-block">

.. toctree::
   :maxdepth: 2
   
   Synchronous methods <synchronous_methods/index>   
   Exceptions <exceptions>
   Enumerations <enumerations>

.. raw:: html

   </div>

1. Overview
=============
This controller will allow you to access the robot's Lidar. Using the Lidar can be helpful to detect obstacles, and distance from objects.

2. Gary's LiDAR Description
=============================

.. image:: /_static/gary_lidar_description.jpg
   :height: 602px
   :width: 100%    
   :align: center
   :loading: lazy      
   :alt: Gary lidars


The LiDAR controller is making use of its own enumeration called ANGLE_UNIT to help you specify what kind of deg_info you rather work with.

3. Using the Controller
=========================

Creating the controller in your app:

.. code-block:: python

   from raya.application_base import RayaApplicationBase

   class RayaApplication(RayaApplicationBase):
      async def setup(self):
         ...
         self.lidar = await self.enable_controller('lidar')
         ...

The controller class includes a set of methods to  access the LiDAR perception information:

   * :doc:`get_laser_info()<./synchronous_methods/get_laser_info>`
   * :doc:`get_raw_data()<./synchronous_methods/get_raw_data>`
   * :doc:`check_obstacle()<./synchronous_methods/check_obstacle>`

It also includes the following methods to create listeners that trigger when different events are detected:

   * :doc:`create_obstacle_listener()<./synchronous_methods/create_obstacle_listener>`

4. Examples
=============


See all Lidar examples in the pyraya_examples `Github <https://github.com/Unlimited-Robotics/pyraya_examples>`_.

.. raw:: html

   <div>See all Lidar examples in the pyraya_examples 
      <a href="https://github.com/Unlimited-Robotics/pyraya_examples" 
      class="custom-link"
      target="_blank"
      >
         Github 
      </a>
   </div>