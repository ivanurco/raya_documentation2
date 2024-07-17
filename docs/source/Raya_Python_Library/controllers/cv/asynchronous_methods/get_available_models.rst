============================
get_available_models()
============================

.. raw:: html

    <hr/>

Return a dictionary with the available models to run. It is divided by
model function, model type and model name.

Reference
===========

Arguments
-------------

``None``

Return
-------------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``Dict``                          | Dictionary with the available     |
|                                   | models to run. It is divided by   |
|                                   | model function, model type and    |
|                                   | model name.                       |
+-----------------------------------+-----------------------------------+

Exceptions
-------------

``None``

See the :ref:`complete list of cv exceptions. <cv_exceptions>`

Usage Example
=================

.. code-block:: python

    >>> self.cv.get_available_models()

Output:

.. code-block:: json

      {
        "model_function1": {
                "model_type1": [
                    "model_name1",
                    "model_name2"
                ],
                "type_model2": [
                    "model_name1"
                ],
                "type_model3": [
                    "model_name1"
                ]
            },
        "model_function2": {
                "model_type1": [
                    "model_name1",
                    "model_name2"
                ],
                "model_type2": [
                    "model_name1"
                ]
            }
      }
