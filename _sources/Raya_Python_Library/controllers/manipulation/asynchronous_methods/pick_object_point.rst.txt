============================
pick_object_point()
============================

.. raw:: html

    <hr/>
    
Uses an arm’s gripper to pick up a nearby object at a target point.
Point: list with (x,y,z).

Reference
===========

Arguments
-----------

=================== ============== =============== =============================================================== 
Arguments           Type           Default value                                                                  
=================== ============== =============== =============================================================== 
point               ``list``                       List of three positions representing the target point.         
object_height       ``float``                      Total height of the object to be picked.                       
pick_height         ``float``                      Height at which the object should be picked.                   
width               ``float``                      Width of the gripper.                                          
angles              ``list``       ``[]``          List of three angles defining the orientation of the gripper.  
arms                ``list``       ``[]``          List of arms to be used for picking.                           
pressure            ``float``      ``0.5``         Pressure applied by the gripper.                               
method              ``str``        ``""``          Method for picking the object.                                 
callback_feedback   ``callable``   ``None``        Callable function for feedback.                                
callback_finish     ``callable``   ``None``        Callable function for finish.                                  
wait                ``bool``       ``False``       Coolean indicating whether to wait for user response.          
=================== ============== =============== =============================================================== 


Return
----------

``None``

Exceptions
------------

``None``

See the :ref:`complete list of manipulation exceptions. <manipulation_exceptions>`
