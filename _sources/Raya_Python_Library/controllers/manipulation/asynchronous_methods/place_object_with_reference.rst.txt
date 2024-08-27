=================================
place_object_with_reference()
=================================

.. raw:: html

    <hr/>

Places the currently held object at a specified distance from a
reference object.

Reference
===========

Arguments
------------

=================== ============== =============== ====================================================================================================================================================== 
Arguments           Type           Default value                                                                                                                                                         
=================== ============== =============== ====================================================================================================================================================== 
detector_model      ``str``                        Name of the detection model that will be used to recognize and localize the reference object.                                                         
source              ``str``                        Name of the camera that will be sourced to recognize the target object.                                                                               
object_name         ``str``                        Name of the reference, as recognizable by the detection model.                                                                                        
height_object       ``float``                      Height of the object to place, in meters.                                                                                                             
arm                 ``str``                        Arm to execute place                                                                                                                                  
distance            ``float``                      Distance to place the object from the reference object, in meters.                                                                                    
callback_feedback   ``callable``   ``None``        Function to be called throughout the placement procedure.                                                                                             
callback_finish     ``callable``   ``None``        Function to be called once object is placed.                                                                                                          
wait                ``bool``       ``False``       If ``true``, program will wait until object is placed before continuing with other code. If ``false``, program will continue running asynchronously.  
=================== ============== =============== ====================================================================================================================================================== 


Return
------------

``None``

Exceptions
------------

================= ==========================================
Exception         Condition
================= ==========================================
``RayaNotMoving`` Manipulation process already in execution.
================= ==========================================

See the :ref:`complete list of manipulation exceptions. <manipulation_exceptions>`
