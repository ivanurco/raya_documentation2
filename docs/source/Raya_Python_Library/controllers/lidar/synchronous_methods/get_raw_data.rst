=================
get_raw_data()
=================

.. raw:: html

    <hr/>

Get detection information from robot’s LiDAR.

Reference
============

Arguments
-----------

+-------------------------+-----------------+-----------------+----------------------------------------------+
| Argument                | Type            | Default value   |                                              |
+=========================+=================+=================+==============================================+
| ``ang_unit``            | ``ANGLE_UNIT``  | ``DEGREES``     | :ref:`ENUM<lidar_enumerations>`              |
|                         |                 |                 | to select the unit of the angle:             |
|                         |                 |                 | (``DEGREES``) degrees or (``RADIANS``)       |
|                         |                 |                 | radians.                                     |
+-------------------------+-----------------+-----------------+----------------------------------------------+

Return
----------

List with lenght
``len = 1 + round((angle_max-angle_min)/angle_increment)``.

========= =============================================
Position  Value
========= =============================================
``0``     Distance at ``angle_min``
``1``     Distance at ``angle_min + angle_increment``
``2``     Distance at ``angle_min + 2*angle_increment``
…         …
``len-1`` Distance at ``angle_max``
========= =============================================

| ``angle_min`` \| Minimum detection angle. \|
| ``angle_max`` \| Maximum detection angle. \|

Exceptions
-------------

See the :ref:`complete list of lidar exceptions<lidar_exceptions>`.


Usage Example
===================

.. code:: python

   ...
   self.lidar = self.enable_controller('lidar')
   ...
   raw_data = self.lidar.get_raw_data()
   print(f'Lenght of raw_data: {len(raw_data)}')
   print('Raw Data')
   print(raw_data)
   ...