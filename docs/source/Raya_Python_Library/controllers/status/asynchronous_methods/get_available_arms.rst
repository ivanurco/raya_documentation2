=======================
get_available_arms()
=======================

.. raw:: html

    <hr/>

Get available arms status

Reference
============

Arguments
-----------

``None``

Return
---------

======== ========================================
Type     Description
======== ========================================
``dict`` Return a dictionary with available arms.
======== ========================================

Usage example
================

.. code-block:: python

   manipulation_status = await self.status.get_available_arms()
