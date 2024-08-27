============
set_color()
============

This function sets a particular group to a color (see Check the :ref:`list <gary_list_led_colors>` of colors with get_colors).

Reference
============

Arguments
-----------

========= ========== ===================================
Arguments Type       Explanation
========= ========== ===================================
group     ``string`` Name of the predefined led's group.
color     ``string`` Name of the predefined led's color.
========= ========== ===================================

Return
---------

``None``

Exceptions
------------

-  ``RayaLedsWrongGroup``
-  ``RayaLedsWrongColor``

See the :ref:`complete exceptions <leds_exceptions>`.

Usage example
================

Sets the ``head`` group of leds to the color ``red`` (see hex values with :ref:`get_colors() <gary_list_led_colors>`). 

Code:

.. code:: python

   self.leds.set_color(group = 'head', color = 'red')
