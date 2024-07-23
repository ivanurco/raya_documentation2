=======================
move_linear()
=======================

.. raw:: html

    <hr/>

Move the robot in linear direction, for a given distance [meters].

Reference
=============

Arguments
--------------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   |                 |
+=================+=================+=================+=================+
| distance        | ``float``       |                 | The distance of |
|                 |                 |                 | movement, in    |
|                 |                 |                 | meters [m].     |
|                 |                 |                 | Distance must   |
|                 |                 |                 | be positive.    |
+-----------------+-----------------+-----------------+-----------------+
| x_velocity      | ``float``       |                 | x velocity, in  |
|                 |                 |                 | meters per      |
|                 |                 |                 | second [m/s]    |
+-----------------+-----------------+-----------------+-----------------+
| y_velocity      | ``float``       | ``0.0``         | y velocity, in  |
|                 |                 |                 | meters per      |
|                 |                 |                 | second [m/s]    |
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

Return
---------

``None``

Exceptions
-----------

-  ``RayaWrongArgument``
-  ``RayaAlreadyMoving``
-  ``RayaNotValidMotionCommand``

See the complete list of :ref:`motion exceptions <motion_exceptions>`.

Usage Example
================

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
           await motion.move_linear(distance = 2, x_velocity=1.0, wait=True)
         ...
         
       async def finish(self):
         ...

See the `Motion example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/motion>`__ to check some valid uses.