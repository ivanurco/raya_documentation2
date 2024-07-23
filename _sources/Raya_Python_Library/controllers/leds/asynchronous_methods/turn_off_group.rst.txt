==================
turn_off_group()
==================

This function turns off an led’s group.

Reference
=========

Arguments
---------

========= ========== ===================================
Arguments Type       Explanation
========= ========== ===================================
group     ``string`` Name of the predefined led's group
========= ========== ===================================

Return
------

``None``


Exceptions
----------

-  ``RayaLedsWrongGroup``

See the :ref:`complete led´s exceptions <leds_exceptions>`.

Usage example
=============

Turn off the 'chest' group of leds.

Code:

.. code:: python

   self.leds.turn_off_group(group = 'chest')
