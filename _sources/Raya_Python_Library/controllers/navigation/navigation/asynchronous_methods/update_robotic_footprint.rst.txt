============================
update_robotic_footprint()
============================

.. raw:: html

    <hr/>

This function allows to update the size of the robot while navigating.

Reference
===========

Arguments
-------------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   | Description     |
+=================+=================+=================+=================+
| points          | ``list``        |                 | List of points  |
|                 |                 |                 | defining the    |
|                 |                 |                 | robot           |
|                 |                 |                 | footprint. Must |
|                 |                 |                 | be a list of    |
|                 |                 |                 | two coordinate  |
|                 |                 |                 | points.         |
+-----------------+-----------------+-----------------+-----------------+

Return
-------------

``None``

Exceptions
-------------

-  ``RayaWrongArgument``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Usage Example
=================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           self.FOOTPRINT1 = [[-0.28,0.37],[0.60,0.37],[0.60, -0.37],[-0.28, -0.37]]
           self.FOOTPRINT2 = [[-0.25,0.35],[0.25,0.35],[0.25, -0.35],[-0.25, -0.35]]
           ...

       async def loop(self):
           ...
             await self.nav.update_robot_footprint(self.FOOTPRINT1)
             await self.sleep(5.0)
             await self.nav.update_robot_footprint(self.FOOTPRINT2)
               ...
               
       async def finish(self):
          ...

See the `Navigate to click <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_to_click>`__
example to check some valid uses.
