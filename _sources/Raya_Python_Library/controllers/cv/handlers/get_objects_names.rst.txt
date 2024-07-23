=============================
get_objects_names()
=============================

.. raw:: html

    <hr/>

This method returns the names of the classes that the activated model
can predict.

Reference
=============

Arguments
------------

``None``

Return
------------

======== ==================
Type     Description
======== ==================
``List`` List with classes.
======== ==================

Exceptions
------------

``None``

See the :ref:`complete list of cv exceptions. <cv_exceptions>`

Examples
==========

.. code-block:: python

   ...
   classes = self.predictor.get_objects_names()
   ...
