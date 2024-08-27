.. _navigation_controller:

================
Navigation
================

.. raw:: html

   <hr/>

.. raw:: html

   <div class="hidden-block">

.. toctree::
   :maxdepth: 1


   zones & locations <zones_and_locations/index>
   navigation <navigation/index>
   maps & position <maps_and_position/index>
   Feedbacks <feedbacks>
   Exceptions <exceptions>
   

.. raw:: html

   </div>


1. Overview
==============

Allows the robot to navigate to the desired goal destination in an
autonomous way.

This controller will take care of planning the optimal path, avoiding
obstacles, and verifying that the robot has arrived at the target
destination.

2. Using the Controller
============================

Creating the controller in your app:

.. code-block:: python

      from raya.application_base import RayaApplicationBase

      class RayaApplication(RayaApplicationBase):
          async def setup(self):
              ...
           self.navigation = await self.enable_controller('navigation') 
              ...

The controller class includes a large set of methods to allow you to
navigate easily and flexibly.

You can find all the methods divided into three groups:

2.1. maps & position
---------------------------

All the methods related to the robot's position and manipulating the
maps.

-  navigation - All the navigation methods available to order the robot
   to navigate.
-  zones & locations - Helper methods to save predefined places and make
   the entire process smoother.

3. Examples
==============

See all examples starting with 'nav' in the pyraya_examples
`Github <https://github.com/Unlimited-Robotics/pyraya_examples>`__.
