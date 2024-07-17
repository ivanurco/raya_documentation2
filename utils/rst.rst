Disable specific model.

Reference
---------

Arguments
~~~~~~~~~

+-----------------------+-----------------------+-----------------------+
| Arguments             | Type                  | Description           |
+=======================+=======================+=======================+
| model_obj             | ``ModelHandler``      | ```ModelHandler`` <   |
|                       |                       | /v2/docs/handlers>`__ |
|                       |                       | object representing   |
|                       |                       | the model to disable  |
+-----------------------+-----------------------+-----------------------+

Return
~~~~~~

``None``

Exceptions
~~~~~~~~~~

-  ``RayaCVInvalidModel``
-  ``RayaCVInvalidType``
-  ``RayaCVNotEnabledType``
-  ``RayaCVModelNotDisabled``

See the complete list of cv exceptions.

Usage Example

.. container:: section html-code-block active
   :name: section-1695681205665

   .. container:: code-language

      .. container:: span-wrapper

         PythonPython

      .. container:: action-items

   ::

      >>> cv.disable_model(model_obj=model)

| 

| 
