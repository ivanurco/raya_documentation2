==============================
rotate()
==============================

.. raw:: html

    <hr/>
    

Rotate the robot (left or right).

Reference
---------

Arguments
~~~~~~~~~

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   |                 |
+=================+=================+=================+=================+
| angle           | ``float``       |                 | The angle of    |
|                 |                 |                 | movement.       |
|                 |                 |                 | Positive values |
|                 |                 |                 | will rotate the |
|                 |                 |                 | robot left, and |
|                 |                 |                 | negative values |
|                 |                 |                 | will rotate the |
|                 |                 |                 | robot to the    |
|                 |                 |                 | right           |
+-----------------+-----------------+-----------------+-----------------+
| angular_speed   | ``float``       |                 | Rotational      |
|                 |                 |                 | velocity[d/s].  |
|                 |                 |                 | Value must be   |
|                 |                 |                 | positive        |
+-----------------+-----------------+-----------------+-----------------+
| ca              | ``Callable``    | ``None``        | Callable        |
| llback_feedback |                 |                 | function for    |
|                 |                 |                 | feedback        |
|                 |                 |                 | (optional).     |
+-----------------+-----------------+-----------------+-----------------+
| callback_finish | ``Callable``    | ``None``        | Callable        |
|                 |                 |                 | function for    |
|                 |                 |                 | finish          |
|                 |                 |                 | (optional).     |
+-----------------+-----------------+-----------------+-----------------+
| wait            | ``bool``        | ``false``       | Wait until the  |
|                 |                 |                 | movement        |
|                 |                 |                 | finishes before |
|                 |                 |                 | moving to the   |
|                 |                 |                 | next line of    |
|                 |                 |                 | code.           |
+-----------------+-----------------+-----------------+-----------------+
| ang_unit        | ``ANGLE_UNIT``  | ``ANGLE         | unit of         |
|                 |                 | _UNIT.DEGREES`` | measurement for |
|                 |                 |                 | angle (DEGREES  |
|                 |                 |                 | or RADIANS).    |
+-----------------+-----------------+-----------------+-----------------+

Return
~~~~~~

``None``

Exceptions
~~~~~~~~~~

-  ``RayaWrongArgument``
-  ``RayaAlreadyMoving``

See the complete list of :ref:`motion exceptions <motion_exceptions>`.

Usage Example
-------------

Move forward 2 meters (1 meter/second velocity) and wait until it finish
moving those 2 meters before moving to the next line of code:

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
         ...
         
       async def finish(self):
         ...

See the `Motion example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/motion>`__ to check some valid uses.
