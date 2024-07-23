==============================
cancel_manipulation()
==============================

.. raw:: html

    <hr/>

    Stops any ongoing grasping procedure.

Reference
===========

Arguments
--------------

``None``

Return
--------------

``None``

Exceptions
--------------

================= =====================================
Exception         Condition
================= =====================================
``RayaNotMoving`` No manipulation process in execution.
================= =====================================

See the :ref:`complete list of manipulation exceptions. <manipulation_exceptions>`

Examples
===========

.. code-block:: python

   ...
   self.manip = self.enable_controller('manipulation')
   ...
   await self.manip.pick_object(
           detector_model='yolov5s_coco',
    source='head_front',
    object_name='cup',
       wait=False
    )
   self.manip.cancel_grasping()
   ...
