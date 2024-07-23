=============
get_groups()
=============

Returns a List type string with all the leds groups name.

Reference
===========

Check the :ref:`LED's groups list <gary_list_led_colors>`.

Return
--------

``List`` 

A list types string that containes all the available groups.

Exceptions
------------

See the :ref:`complete exceptions <leds_exceptions>`.

Usage example
===============

Get all the groups of all led's:

.. code:: python

   self.log.info(self.leds.get_groups())

output:

.. code:: python

   ['head', 'sensors', 'skirt', 'chest']
