===========================
mqtt_remove_subscription()
===========================

.. raw:: html

    <hr/>

Remove topic subscription

Reference
===========

Arguments
-----------

======== ========== =====================
Argument Type       
======== ========== =====================
topic    ``string`` Topic name to remove.
======== ========== =====================

Return
--------

``None``

Exceptions
--------------

-  ``RayaCommExistingSubscription``

See the :ref:`complete communications exceptions<communication_exceptions>`.

Usage example
=================

.. code:: python

   self.communication.mqtt_remove_subscription(topic)

