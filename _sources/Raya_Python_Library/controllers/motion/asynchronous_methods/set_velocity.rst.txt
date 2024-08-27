==========================
set_velocity()
==========================

.. raw:: html

    <hr/>


Set the linear and rotational velocities of the robot. With this
function, you can move the robot to any direction simultanously. If a
new command is launched while one is running, the old command will be
overwritten by the new one.

Reference
===========

Arguments
------------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   |                 |
+=================+=================+=================+=================+
| x_velocity      | ``float``       |                 | Forward         |
|                 |                 |                 | (positive) or   |
|                 |                 |                 | backward        |
|                 |                 |                 | (negative)      |
|                 |                 |                 | velocity, in    |
|                 |                 |                 | meters per      |
|                 |                 |                 | second [m/s].   |
+-----------------+-----------------+-----------------+-----------------+
| y_velocity      | ``float``       |                 | Lateral left    |
|                 |                 |                 | (positive) or   |
|                 |                 |                 | right           |
|                 |                 |                 | (negative)      |
|                 |                 |                 | velocity, in    |
|                 |                 |                 | meters per      |
|                 |                 |                 | second [m/s].   |
+-----------------+-----------------+-----------------+-----------------+
|angular_velocity | ``float``       |                 | Rotational      |
|                 |                 |                 | velocity.       |
|                 |                 |                 | Positive: left. |
|                 |                 |                 | Negative:       |
|                 |                 |                 | right.          |
+-----------------+-----------------+-----------------+-----------------+
| duration        | ``float``       |                 | Time (in        |
|                 |                 |                 | seconds) to     |
|                 |                 |                 | move at the     |
|                 |                 |                 | selected        |
|                 |                 |                 | velocity. The   |
|                 |                 |                 | value must be   |
|                 |                 |                 | positive        |
+-----------------+-----------------+-----------------+-----------------+
| ang_unit        | ``ANGLE_UNIT``  | ``ANGLE         | unit of         |
|                 |                 | _UNIT.DEGREES`` | measurement for |
|                 |                 |                 | angle (DEGREES  |
|                 |                 |                 | or RADIANS).    |
+-----------------+-----------------+-----------------+-----------------+
|callback_feedback| ``Callable``    | ``None``        | Callable        |
|                 |                 |                 | function for    |
|                 |                 |                 | feedback        |
|                 |                 |                 | (optional).     |
+-----------------+-----------------+-----------------+-----------------+
| callback_finish | ``Callable``    | ``None``        | Callable        |
|                 |                 |                 | function for    |
|                 |                 |                 | finish          |
|                 |                 |                 | (optional).     |
+-----------------+-----------------+-----------------+-----------------+
| wait            | ``bool``        | ``False``       | Boolean         |
|                 |                 |                 | indicating      |
|                 |                 |                 | whether to wait |
|                 |                 |                 | for user        |
|                 |                 |                 | response        |
|                 |                 |                 | (optional).     |
+-----------------+-----------------+-----------------+-----------------+

Return
----------

``None``

Exceptions
-------------

-  ``RayaWrongArgument``
-  ``RayaNotValidMotionCommand``

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
           await motion.set_velocity(
                   x_velocity=1.0, 
                   y_velocity=0.0, 
                   angular_velocity=0.0, 
                   duration=1.0, 
                   wait=True
               )
         ...
         
       async def finish(self):
         ...

See the `Motion example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/motion>`__ to check some valid uses.
