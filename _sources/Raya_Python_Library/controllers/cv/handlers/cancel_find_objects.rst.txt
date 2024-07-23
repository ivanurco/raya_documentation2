===========================
cancel_find_objects()
===========================

.. raw:: html

    <hr/>

This method will cancel the object search initiated with the
**find_objects()** method when performed in non-blocking mode.

Reference
============

Arguments
-------------

``None``

Return
-------------

``None``

Exceptions
-------------

``None``

See the :ref:`complete list of cv exceptions. <cv_exceptions>`

Examples
============

.. code-block:: python

   ...
   self.predictor.cancel_find_objects()
   ...
