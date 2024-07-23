============================
clean_arms_status()
============================

.. raw:: html

    <hr/>


Clean the status of the arms.

Reference
============

Arguments
-------------

========= ======== ============= ===========================
Arguments Type     Default value 
========= ======== ============= ===========================
arms      ``list``               List of arms names to clean
========= ======== ============= ===========================

Return
-------------

``None``

Exceptions
-------------

``None``

See the :ref:`complete list of manipulation exceptions. <manipulation_exceptions>`

Examples
==========

.. code-block:: python

   ...
   self.manip = self.enable_controller('manipulation')
   ...
   self.manip.clean_arms_status(arms = ['left_arm', 'right_arm'])
   ...
