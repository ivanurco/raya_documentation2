==================================
update_current_nav_goal()
==================================

.. raw:: html

    <hr/>

This function allows you to change the desired goal destination of a
current navigation.

Reference
============

Arguments
-----------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   | Description     |
+=================+=================+=================+=================+
| x               | float           |                 | X coordinate on |
|                 |                 |                 | the map.        |
+-----------------+-----------------+-----------------+-----------------+
| y               | float           |                 | Y coordinate on |
|                 |                 |                 | the map.        |
+-----------------+-----------------+-----------------+-----------------+
| yaw             | float           |                 | Specifies the   |
|                 |                 |                 | angle on        |
|                 |                 |                 | radians for the |
|                 |                 |                 | goal            |
|                 |                 |                 | orientation     |
|                 |                 |                 | (determines     |
|                 |                 |                 | direction the   |
|                 |                 |                 | robot should    |
|                 |                 |                 | face after      |
|                 |                 |                 | reaching the    |
|                 |                 |                 | goal).          |
+-----------------+-----------------+-----------------+-----------------+

Return
--------

``None``

Exceptions
------------

-  ``RayaNavNotLocated``
-  ``RayaNavNoMapLoaded``
-  ``RayaNavNotNavigating``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Usage Example
================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

   async def loop(self):
   ...
       await self.nav.update_current_nav_goal(
                   x = goal_x,
                   y = goal_y,
                   yaw = goal_yaw)
           ...
