======================
cancel_motion()
======================

.. raw:: html

    <hr/>

Cancels a not finished movement.

Reference
===========

Arguments
-----------

``None``

Return
----------

``None``

Exceptions
-------------

-  ``RayaNotMoving``

See the complete list of :ref:`motion exceptions <motion_exceptions>`.

Usage Example
=================

Move robot and cancel after 1 second.

.. code:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.motion = await self.enable_controller('motion')
           ....
           
       async def loop(self):
        ....
           await self.motion.rotate(
                   angle=-1.5708, 
                   angular_speed=0.349, 
                   ang_unit=ANG_UNIT.RAD, 
                   callback_finish=self.cb_motion_finished
               )
           await self.sleep(1.0)
           await self.motion.cancel_motion()
         ...
         
       async def finish(self):
         ...

See the `Motion example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/motion>`__ to check some valid uses.