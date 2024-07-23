==============================
get_groups_list()
==============================

.. raw:: html

    <hr/>

Get list of available groups ``(set of arms)`` on the current robotic
device.

Reference
===========

Arguments
----------

``None``

Return
---------

======== ==============================
Type     Description
======== ==============================
``List`` The names of available groups.
======== ==============================

Exceptions
-------------

``None``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
================

.. code:: python

   ...
   self.arms = self.enable_controller('arms')
   ...
   arms_list = self.arms.get_groups_list()
   self.log.info(arms_list)
   ...

Output

.. code:: python

   ['both']
