=============================
pick_object()
=============================

.. raw:: html

    <hr/>

Uses an arm’s gripper to pick up a nearby target object.

Reference
============

Arguments
-----------

=================== ============== =============== ==================================================================== 
Arguments           Type           Default value                                                                       
=================== ============== =============== ==================================================================== 
detector_model      ``string``                     The detector model used for object. detection                       
object_name         ``string``                     The name of the object to pick.                                     
source              ``string``                     The source of the object (e.g., camera name or sensor identifier).  
pressure            ``float``      ``0.5``         The pressure value for picking the object.                          
arms                ``list``       ``[]``          The list of arms to use for picking.                                
timeout             ``float``      ``10.0``        The timeout value in seconds for the picking process.               
method              ``str``        ``""``          The picking method to use.                                          
options             ``dict``       ``{}``          Additional options for the picking process.                         
callback_feedback   ``callable``   ``None``        Callable function for feedback.                                     
callback_finish     ``callable``   ``None``        Callable function for finish.                                       
wait                ``bool``       ``False``       Boolean indicating whether to wait for user response.               
=================== ============== =============== ==================================================================== 


Return
---------

``None``

Exceptions
------------

See the :ref:`complete list of manipulation exceptions. <manipulation_exceptions>`
