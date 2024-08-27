=====================
is_moving()
=====================

.. raw:: html

    <hr/>

Check if the robot is moving.

Reference
===========

Arguments
------------

``None``

Return
-----------

======== =======================================
Type     Description
======== =======================================
``bool`` ``True`` if a motion is being executed.
======== =======================================

Exceptions
---------------

See the :ref:`complete list of motion exceptions <motion_exceptions>`.

Usage Example
====================

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
           moving = await self.motion.is_moving()
           if moving:
               self.log.info('Robot is moving')
         ...
         
       async def finish(self):
         ...


See the `Motion example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/motion>`__ to check some valid uses.
