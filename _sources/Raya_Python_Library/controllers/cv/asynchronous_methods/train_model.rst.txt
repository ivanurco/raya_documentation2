=============================
train_model()
=============================

.. raw:: html

    <hr/>

This function prepares the image data from a given list of images and
names sends it to train the model, and returns the training information
as a dictionary.

Reference
============

Arguments
------------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   | Description     |
+=================+=================+=================+=================+
| model           | ``str``         |                 | Name of the     |
|                 |                 |                 | model.          |
+-----------------+-----------------+-----------------+-----------------+
| type            | ``str``         |                 | Type of the     |
|                 |                 |                 | model.          |
+-----------------+-----------------+-----------------+-----------------+
| model_name      | ``str``         |                 | Name of the     |
|                 |                 |                 | model to be     |
|                 |                 |                 | trained.        |
+-----------------+-----------------+-----------------+-----------------+
| data_path       | ``str``         |                 | Path to the     |
|                 |                 |                 | folder          |
|                 |                 |                 | containing the  |
|                 |                 |                 | training data.  |
+-----------------+-----------------+-----------------+-----------------+
| model_params    | ``dict``        | ``{}``          | Parameters for  |
|                 |                 |                 | the model.      |
+-----------------+-----------------+-----------------+-----------------+

Return
------------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``dict``                          | Dict representing the results of  |
|                                   | the training process, converted   |
|                                   | from a JSON string.               |
+-----------------------------------+-----------------------------------+

Exceptions
------------

-  ``RayaCVInvalidModel``
-  ``RayaCVDiffImageNamesSize``
-  ``RayaCVInvalidImageFormat``

See the :ref:`complete list of cv exceptions <cv_exceptions>`.

