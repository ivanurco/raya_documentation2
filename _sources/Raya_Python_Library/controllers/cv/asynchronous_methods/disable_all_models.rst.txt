=================================
disable_all_models()
=================================

.. raw:: html

    <hr/>

Disable all application enable models.

Reference
=============

Arguments
------------

``None``

Return
------------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``List``                          | String list with models disabled. |
+-----------------------------------+-----------------------------------+

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

      >>> models_disabled = cv.disable_all_models()
