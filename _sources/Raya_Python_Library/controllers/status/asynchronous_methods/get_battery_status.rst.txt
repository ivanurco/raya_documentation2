===========================
get_battery_status()
===========================

.. raw:: html

    <hr/>


Get current battery status.

Reference
===========

Arguments
-----------

``None``

Return
---------

======== ========================================
Type     Description
======== ========================================
``dict`` Dictionary with all battery information.
======== ========================================

Usage example
=================

.. code:: python

   battery_status = await self.status.get_battery_status()
   self.log.info(battery_status)

Output:

::

    {
        'voltage': nan,
        'temperature': nan,
        'current': nan,
        'charge': nan,
        'capacity': nan,
        'design_capacity': nan,
        'percentage': 0.6,
        'present': False,
        'cell_voltage': array('f', [nan]),
        'cell_temperature': array('f', [nan]),
        'location': 'slot1',
        'serial_number': 'sim01',
        'health': <STATUS_BATTERY_HEALTH.UNKNOWN: 0>,
        'status': <STATUS_BATTERY.DISCHARGING: 2>,
        'technology': <STATUS_BATTERY_TECHNOLOGY.UNKNOWN: 0> 
    }

