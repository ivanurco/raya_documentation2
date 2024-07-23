===================================
are_checkings_in_progress()
===================================

.. raw:: html

    <hr/>

Checks if code is in the middle of checking an arm.

Reference
============

Arguments
------------

``None``

Return
---------

======== ==========================================
Type     Description
======== ==========================================
``Bool`` ``True`` if any arm/pose is being checked.
======== ==========================================

Exceptions
------------

-  ``RayaArmsException``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage Example
================

.. code:: python

   ...
   self.arms = self.enable_controller('arms')
   ...
   checking = self.arms.are_checkings_in_progress()
   self.log.info(checking)
   ...

Output:

.. code:: python

   False
