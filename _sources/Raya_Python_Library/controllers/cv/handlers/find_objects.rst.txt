==================
find_objects()
==================

.. raw:: html

    <hr/>

This method, available in certain handlers, allows for the search of a
specific class within the received predictions. It can be used in a
non-blocking manner by setting up a callback that will be triggered when
the desired class is found, or it can be used in a blocking mode, where
the method will return the prediction when the desired class is found.
If **callback_async** is defined, the **callback** is ignored. If
**wait** is False, one of the callbacks must be defined.

Reference
===============

Arguments
------------

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   | Description     |
+=================+=================+=================+=================+
| objects         | ``list``        |                 | List of objects |
|                 |                 |                 | to be found.    |
+-----------------+-----------------+-----------------+-----------------+
| callback        | ``callable``    | ``None``        | Callback that   |
|                 |                 |                 | will be invoked |
|                 |                 |                 | when an object  |
|                 |                 |                 | in the objects  |
|                 |                 |                 | list will be    |
|                 |                 |                 | found.          |
+-----------------+-----------------+-----------------+-----------------+
| callback_async  | ``callable``    | ``None``        | Asynchronous    |
|                 |                 |                 | callback that   |
|                 |                 |                 | will be invoked |
|                 |                 |                 | when an object  |
|                 |                 |                 | in the objects  |
|                 |                 |                 | list will be    |
|                 |                 |                 | found.          |
+-----------------+-----------------+-----------------+-----------------+
| wait            | ``bool``        | ``False``       | If set to       |
|                 |                 |                 | ``true``, the   |
|                 |                 |                 | method works in |
|                 |                 |                 | blocking mode   |
|                 |                 |                 | until it found  |
|                 |                 |                 | the objects.    |
+-----------------+-----------------+-----------------+-----------------+
| timeout         | ``float``       | ``0.0``         | It is only used |
|                 |                 |                 | when **wait**   |
|                 |                 |                 | is set to       |
|                 |                 |                 | ``true``. If    |
|                 |                 |                 | the specified   |
|                 |                 |                 | timeout is      |
|                 |                 |                 | reached without |
|                 |                 |                 | finding the     |
|                 |                 |                 | object, it will |
|                 |                 |                 | return an empty |
|                 |                 |                 | result.         |
+-----------------+-----------------+-----------------+-----------------+
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

Return
------------

if **as_dict** is ``True`` and **wait** is ``True``:

======== ============================
Type     Description
======== ============================
``dict`` Dictionary with prediccions.
======== ============================

if **as_dict** is ``False`` and **wait** is ``True``:

======== ======================
Type     Description
======== ======================
``list`` List with prediccions.
======== ======================

if **wait** is ``False``:

``None``

Exceptions
------------

-  ``RayaCVNotValidLabel``

See the :ref:`complete list of cv exceptions. <cv_exceptions>`

Examples
==============

.. code-block:: python

   ...
   resp = await self.predictor.find_objects(
           objects=['cup'], 
           wait=True, 
           timeout=10.0
       )
   ...
