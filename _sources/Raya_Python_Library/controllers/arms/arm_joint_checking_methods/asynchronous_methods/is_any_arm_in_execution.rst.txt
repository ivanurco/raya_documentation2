====================================
is_any_arm_in_execution()
====================================

.. raw:: html

    <hr/>

Checks if any arm is in the middle of a process.

Reference
===========

Arguments
-----------

``None``

Return
--------

======== ===========================================
Type     Description
======== ===========================================
``bool`` ``True`` if any arm is operating currently.
======== ===========================================

Exceptions
------------

-  ``RayaArmsException``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
================

.. code-block:: python

   ...
   self.arms = self.enable_controller('arms')
   ...
   running = self.arms.is_any_arm_in_execution()
   self.log.info(running)
   ...

Output:

.. code:: python

   False
