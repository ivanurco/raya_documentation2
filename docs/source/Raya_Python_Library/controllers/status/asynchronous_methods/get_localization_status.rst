=================================
get_localization_status()
=================================

.. raw:: html

    <hr/>

Get current localization status.

Reference
===========

Arguments
-------------

+--------------+-------------------+---------------------------------+
| Arguments    | Type              |                                 |
+==============+===================+=================================+
| ``ang_unit`` | ``ANGLE_UNIT``    | :ref:`ENUM<status_enumerations>`|
|              |                   | (0 Degrees, 1 Radians)          |
+--------------+-------------------+---------------------------------+
| ``pos_unit`` | ``POSITION_UNIT`` | :ref:`ENUM<status_enumerations>`|
|              |                   | (0 Pixels, 1 Meters)            |
+--------------+-------------------+---------------------------------+

Return
--------

======== ======================================
Type     Description
======== ======================================
``dict`` Return dictionary with angle, x and y.
======== ======================================

Exceptions
-------------

-  ``RayaStatusServerProviderDown``

See the :ref:`complete status exceptions. <status_exceptions>`.

Usage example
================

Code:

.. code:: python

   localization_status = await self.status.get_localization_status(
                       ang_unit=ANGLE_UNIT.DEGREES,
                       pos_unit=POSITION_UNIT.METERS,
                   )
   self.log.info(localization_status)

Output:

``{'angle': 87.56, 'x': 398.0, 'y': 809.0}``
