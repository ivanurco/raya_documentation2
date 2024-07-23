==============================
get_arms_list()
==============================

.. raw:: html

    <hr/>

Get list of available arms on the current robotic device.

Reference
=============

Arguments
----------

``None``

Return
--------

======== ============================
Type     Description
======== ============================
``List`` the names of available arms.
======== ============================

Exceptions
-------------

``None``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
==================

.. code:: python

   ...
   self.arms = self.enable_controller('arms')
   ...
   arms_list = self.arms.get_arms_list()
   self.log.info(arms_list)
   ...

Output :

.. code:: python

   ['left_arm', 'right_arm']
