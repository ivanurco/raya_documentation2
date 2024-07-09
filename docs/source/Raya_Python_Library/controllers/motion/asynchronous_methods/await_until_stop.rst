===========================
await_until_stop()
===========================

.. raw:: html

    <hr/>

Blocks the application until movement is stopped.

Reference
=============

Arguments
-----------

``None``

Return
-------------

``None``

Exceptions
--------------

-  ``RayaNotMoving``

See the complete list of :ref:`motion exceptions <motion_exceptions>`.

Usage Example
================

.. code:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.motion = await self.enable_controller('motion')
           ....
           
       async def loop(self):
        ....
           await motion.move_linear(distance = 3.0, x_velocity=1.0, wait=False)
           await motion.await_until_stop()
         ...
         
       async def finish(self):
         ...

See the `Motion example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/motion>`__ to check some valid uses.