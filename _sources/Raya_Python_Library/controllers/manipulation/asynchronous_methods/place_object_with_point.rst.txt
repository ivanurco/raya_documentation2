==============================
place_object_with_point()
==============================

.. raw:: html

    <hr/>

Places the currently held object at a specified set of
coordinates(x,y,z).

Reference
===========

Arguments
------------

=================== ============== =============== ====================================================================================================================================================== 
Arguments           Type           Default value                                                                                                                                                         
=================== ============== =============== ====================================================================================================================================================== 
point_to_place      ``list``                       Target where to place the object. Format: [x, y, z].                                                                                                  
arm                 ``str``                        Arm to execute place                                                                                                                                  
callback_feedback   ``callable``   ``None``        Function to be called throughout the placement procedure.                                                                                             
callback_finish     ``callable``   ``None``        Function to be called once object is placed.                                                                                                          
wait                ``bool``       ``False``       If ``True``, program will wait until object is placed before continuing with other code. If ``False``, program will continue running asynchronously.  
=================== ============== =============== ====================================================================================================================================================== 


Return
--------

``None``

Exceptions
-----------

``None``

See the :ref:`complete list of manipulation exceptions. <manipulation_exceptions>`
