===========================
available_color_cameras()
===========================

.. raw:: html

    <hr/>


This method returns the list of available cameras names.

Reference
============

Arguments
-----------

``None``

Return
---------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``List``                          | List of string, containing the    |
|                                   | names of the available cameras.   |
+-----------------------------------+-----------------------------------+

Exceptions
------------------

``None``

See the :ref:`complete list of cameras exceptions <cameras_exceptions>`.

Usage Example
==================

1. Get list of available cameras
-----------------------------------

Code:

.. code-block:: python

      ...

      self.cameras = await self.enable_controller('cameras')
      
      ...

      cameras_list = self.cameras.available_color_cameras()
      print(cameras_list)
      
      ...

Output:

::

      ['head_front', 'nav_bottom', 'chest']
