=============
get_colors()
=============

Returns a List type string with all the leds colors name.

Reference
===========

List of predefined colors
---------------------------

Refer to :ref:`this <gary_list_led_colors>` page for a complete list of colors.

Arguments
-----------

========= ========== ============= ===================================
Arguments Type       Default value Explanation
========= ========== ============= ===================================
group     ``string`` ``None``      name of the predefined led's group.
========= ========== ============= ===================================

Return
--------

``list`` 

A list type string that containes all the available colors for the LED's.

Exceptions
------------

-  ``RayaLedsWrongGroup``

See the :ref:`complete exceptions <leds_exceptions>`.

Usage example
================

Print the list of possible colors for the selected group. 

Code:

.. code:: python

   self.log.info(self.leds.get_colors(group = 'sensors'))

Console output:

.. code:: python

   [ 'ALICE_BLUE', ...]