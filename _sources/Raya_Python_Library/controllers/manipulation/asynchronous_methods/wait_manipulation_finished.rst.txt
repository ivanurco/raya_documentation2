==============================
wait_manipulation_finished()
==============================

.. raw:: html

    <hr/>

Pauses the rest of the program until the current grasping procedure is
finished.

Reference
=============

Arguments
-------------

``None``

Return
-------------

``None``

Exceptions
-------------

=================================== =============================
Exception                           Condition
=================================== =============================
``RayaManipulationNotManipulation`` No manipulation in execution.
=================================== =============================

See the :ref:`complete list of manipulation exceptions. <manipulation_exceptions>`

Examples
============

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
   await self.manip.wait_manipulation_finished()
   ...
