==============================
mqtt_publish_message()
==============================

.. raw:: html

    <hr/>


Pubish data to topic.

Reference
==========

Arguments
-----------

======== ========== ======================
Argument Type       
======== ========== ======================
topic    ``string`` Topic name to publish.
data     ``dict``   Data to publish.
======== ========== ======================

Return
----------

``None``

Usage example
================

.. code:: python

   self.communication.mqtt_remove_subscription(topic="/topic_name", callback_async=self.cb_topic)
