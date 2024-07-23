===================
CV Computer Vision
===================

.. raw:: html

   <hr/>

   <div class="hidden-block">

.. toctree::
   :maxdepth: 2

   Asynchronous methods <asynchronous_methods/index>   
   Handlers <handlers/index>
   Exceptions <exceptions>

.. raw:: html

   </div>


1. Overview
================

| As you already saw, we created a wide range of controllers that allow
  you to control and manipulate the robot in a very easy and efficient
  way.
| The goal of this controller is to provide an extra layer of
  capabilities, enabling detection and recognition of objects/faces/tags
  to leverage your applications.

Among with this controller, we are providing some ready-to-use models.

For the simulation environment, the following models are available right
now:

-  unity_apartment.
-  Coco.

In a real robotic device, you will be able to use your own predefine
model by adding it to the ``dat`` folder.

2. Using the controller
==========================

.. code-block:: python

      from raya.application_base import RayaApplicationBase

      class RayaApplication(RayaApplicationBase):
          async def setup(self):
              self.interactions = await self.enable_controller('cv')
              ...

If you want to use any CV functionality, your first need to enable the
model that you want to use, by calling ``enable_model()`` method.

3. Example
==========================

See examples starting with 'cv' in the pyraya_examples
`GitHub <https://github.com/Unlimited-Robotics/pyraya_examples>`__.
