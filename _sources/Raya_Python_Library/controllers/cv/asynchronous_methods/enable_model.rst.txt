==============================
enable_model()
==============================

.. raw:: html

    <hr/>

Disable specific model.

Reference
==========

Arguments
------------

+-----------------------+-----------------------+-----------------------------------------------------------------------------+
| Arguments             | Type                  | Description                                                                 |
+=======================+=======================+=============================================================================+
| model_obj             | ``ModelHandler``      | :ref:`ModelHandler <cv_handlers>` object representing the model to disable  |
+-----------------------+-----------------------+-----------------------------------------------------------------------------+

Return
------------

``None``

Exceptions
------------

-  ``RayaCVInvalidModel``
-  ``RayaCVInvalidType``
-  ``RayaCVNotEnabledType``
-  ``RayaCVModelNotDisabled``

See the :ref:`complete list of cv exceptions <cv_exceptions>`.

Usage Example
===============

.. code-block:: python

    >>> cv.disable_model(model_obj=model)
