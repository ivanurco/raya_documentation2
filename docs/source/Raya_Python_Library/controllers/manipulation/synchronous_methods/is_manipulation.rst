============================
is_manipulation()
============================

.. raw:: html

    <hr/>

Checks if there is an ongoing manipulation procedure currently.

Reference
===========

Arguments
-----------

``None``

Return
---------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``Bool``                          | ``True`` if there is currently an |
|                                   | ongoing grasping procedure,       |
|                                   | otherwise ``False``.              |
+-----------------------------------+-----------------------------------+

Examples
=============

.. code-block:: python

   ...
   
   self.manip = self.enable_controller('manipulation')
   ...

   await self.manip.pick_object(
           detector_model = 'yolov5s_coco',
    source = 'head_front',
    object_name = 'cup'
    )

   self.log.info(self.manip.is_grasping())
   
   ...

Output

.. code-block:: python

   True
