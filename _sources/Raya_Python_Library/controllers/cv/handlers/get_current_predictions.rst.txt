===============================
get_current_predictions()
===============================

.. raw:: html

    <hr/>

This method returns the model’s predictions just once at the moment it
is called. It is used when the model is activated with continues_msg in
``True``. It takes the information from the topic that are publishing.

Reference
============

Arguments
----------------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   | Description     |
+=================+=================+=================+=================+
| as_dict         | ``bool``        | ``False``       | If set to       |
|                 |                 |                 | ``true``, the   |
|                 |                 |                 | predictions     |
|                 |                 |                 | will be sent as |
|                 |                 |                 | a dictionary;   |
|                 |                 |                 | otherwise, they |
|                 |                 |                 | will be         |
|                 |                 |                 | returned as a   |
|                 |                 |                 | list.           |
+-----------------+-----------------+-----------------+-----------------+
| get_timestamp   | ``bool``        | ``False``       | If set to       |
|                 |                 |                 | ``true``, a     |
|                 |                 |                 | tuple with the  |
|                 |                 |                 | predictions and |
|                 |                 |                 | the prediction  |
|                 |                 |                 | timestamp will  |
|                 |                 |                 | be returned;    |
|                 |                 |                 | otherwise, only |
|                 |                 |                 | the predictions |
|                 |                 |                 | will be         |
|                 |                 |                 | returned.       |
+-----------------+-----------------+-----------------+-----------------+

Return
----------------

if **as_dict** is ``True`` and **get_timestamp** is ``True``:

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``tuple``                         | (``dict``, ``tuple``) Dictionary  |
|                                   | with prediccions and tuple with   |
|                                   | timestamp (sec, nanosec).         |
+-----------------------------------+-----------------------------------+

if **as_dict** is ``True`` and **get_timestamp** is ``False``:

======== ============================
Type     Description
======== ============================
``dict`` Dictionary with prediccions.
======== ============================

if **as_dict** is ``False`` and **get_timestamp** is ``True``:

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``tuple``                         | (``list``, ``tuple``) List with   |
|                                   | prediccions and tuple with        |
|                                   | timestamp (sec, nanosec).         |
+-----------------------------------+-----------------------------------+

if **as_dict** is ``False`` and **get_timestamp** is ``False``:

======== ======================
Type     Description
======== ======================
``list`` List with prediccions.
======== ======================

Exceptions
----------------

``None``

See the :ref:`complete list of cv exceptions. <cv_exceptions>`

Examples
==========

.. code-block:: python

   ...
   self.predictor = await self.cv.enable_model(
           name='predictor_name',
           continues_msg=True,
           source='chest',
       )
   ...
   last_predictions, timestamp = \
           await self.predictor.get_current_predictions(get_timestamp=True)
   ...
