================================
train_model_folder_path()
================================   

.. raw:: html

    <hr/>

This function prepares the image data from the specified folder,
constructs a training request, sends it to train the model, and returns
the training information as a dictionary.

Reference
=============

Arguments
-----------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   | Description     |
+=================+=================+=================+=================+
| model           | ``str``         |                 | The name of the |
|                 |                 |                 | model to train. |
+-----------------+-----------------+-----------------+-----------------+
| type            | ``str``         |                 | The type of the |
|                 |                 |                 | model to train. |
+-----------------+-----------------+-----------------+-----------------+
| model_name      | ``str``         |                 | The name to     |
|                 |                 |                 | assign to the   |
|                 |                 |                 | trained model.  |
+-----------------+-----------------+-----------------+-----------------+
| images          | ``list``        |                 | A list of       |
|                 |                 |                 | images to use   |
|                 |                 |                 | for training.   |
+-----------------+-----------------+-----------------+-----------------+
| names           | ``list``        |                 | A list of names |
|                 |                 |                 | associated with |
|                 |                 |                 | the images.     |
+-----------------+-----------------+-----------------+-----------------+
| model_params    | ``dict``        |                 | A dictionary of |
|                 |                 |                 | parameters      |
|                 |                 |                 | specific to the |
|                 |                 |                 | model.          |
+-----------------+-----------------+-----------------+-----------------+
| encoding        | ``str``         | ``bgr8``        | The encoding    |
|                 |                 |                 | format of the   |
|                 |                 |                 | images.         |
+-----------------+-----------------+-----------------+-----------------+

Return
--------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``dict``                          | Dict representing the results of  |
|                                   | the training process, converted   |
|                                   | from a JSON string.               |
+-----------------------------------+-----------------------------------+

Exceptions
-------------

-  ``RayaCVInvalidModel``
-  ``RayaCVDiffImageNamesSize``
-  ``RayaCVInvalidImageFormat``

See the :ref:`complete list of cv exceptions <cv_exceptions>`.

