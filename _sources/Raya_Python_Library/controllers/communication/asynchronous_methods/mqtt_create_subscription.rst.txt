===========================
mqtt_create_subscription()
===========================

.. raw:: html

    <hr/>

Create new topic subscription, if there is a subscription, it generates
an error.

Reference
==========

Arguments
-----------

Only one callback function is needed (synchronous or asynchronous).

============== ============ ====================
Argument       Type         
============== ============ ====================
topic          ``string``   Topic name to remove
callback       ``function`` Synchronous method
callback_async ``function`` Asynchronous method
============== ============ ====================

Return
--------

``None``

Exceptions
--------------

-  ``RayaCommExistingSubscription``

See the :ref:`complete communications exceptions <communication_exceptions>`.

See the :ref:`general exceptions <general_exceptions>`.

Usage example
===============

.. code:: python

   self.communication.mqtt_remove_subscription(topic="/topic_name", callback_async=self.cb_topic)

