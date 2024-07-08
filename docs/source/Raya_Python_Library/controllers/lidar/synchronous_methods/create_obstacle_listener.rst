===========================
create_obstacle_listener()
===========================

.. raw:: html

    <hr />

Creates a listener triggered when an obstacle is found with the selected
parameters (as in check_obstacle). The callback is called only once when
the condition meets.

Reference
===========

Arguments
------------ 

+-------------------------+-----------------+-----------------+----------------------------------------------+
| Arguments               | Type            | Default value   |                                              |
+=========================+=================+=================+==============================================+
|``listener_name``        | ``string``      |                 | Unique listener identifier.                  |
+-------------------------+-----------------+-----------------+----------------------------------------------+
| ``callback``            | ``function`` or |                 | Callback (see the :ref:`Callback section in  | 
|                         | ``tuple``       |                 | the Listeners Schema page <404>`)            |
+-------------------------+-----------------+-----------------+----------------------------------------------+
| ``lower_angle``         | ``float``       |                 | Lower bound of the angles  range.            |
+-------------------------+-----------------+-----------------+----------------------------------------------+
| ``upper_angle``         | ``float``       |                 | Upper bound of  the angles range             |
+-------------------------+-----------------+-----------------+----------------------------------------------+
|``lower_distance``       | ``float``       | ``0.0``         | Lower bound of the distance range.           |
+-------------------------+-----------------+-----------------+----------------------------------------------+
| ``upper_distance``      | ``float``       |``float('inf')`` | Upper bound of the distance range.           |
+-------------------------+-----------------+-----------------+----------------------------------------------+
| ``ang_unit``            | ``ANGLE_UNIT``  | ``DEGREES``     | :ref:`ENUM<lidar_enumerations>`              |
|                         |                 |                 | to select the unit of the angle:             |
|                         |                 |                 | (``DEGREES``) degrees or (``RADIANS``)       |
|                         |                 |                 | radians.                                     |
+-------------------------+-----------------+-----------------+----------------------------------------------+

-  Both ``lower_angle`` and ``upper_angle`` must be into the range
   ``[angle_min, angle_max]`` from laser info (see
   :doc:`LidarController.get_laser_info() <get_laser_info>`)
-  ``upper_angle`` must be higher than ``lower_angle``.
-  At least one of both ``lower_distance`` or ``upper_distance`` must be
   speficied.
-  ``upper_distance`` must be higher than ``lower_distance``.

Return
--------

``None``


Exceptions
------------- 

-  ``RayaLidarInvalidAngleUnit``
-  ``RayaInvalidNumericRange``

See the :ref:`complete list of lidar exceptions <lidar_exceptions>`.

Usage Example
================

Code:

.. code:: python

   async def setup(self):
       self.lidar.create_obstacle_listener(listener_name='obstacle',
           callback=self.callback_obstacle,
           lower_angle=260,
           upper_angle=280,
           upper_distance=2.0
       )

   async def loop(self):
           await self.sleep(1.0)
           self.log.info('Doing other (non blocking) stuff!')

   def callback_obstacle(self):
           self.log.warning('Obstacle!')
           

Output:

::

   (INFO)<RayaApp.app.app> Doing other (non blocking) stuff!
   (INFO)<RayaApp.app.app> Doing other (non blocking) stuff!
   (WARNING)<RayaApp.app.app> Obstacle!
   (INFO)<RayaApp.app.app> Doing other (non blocking) stuff!

