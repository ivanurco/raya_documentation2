================================
place_object_with_tag()
================================

.. raw:: html

    <hr/>

Places the currently held object using a tag.

Reference
============

Arguments
-------------

=================== ============== =============== ====================================================== 
Arguments           Type           Default value                                                         
=================== ============== =============== ====================================================== 
tag_family          ``str``                        tag family                                            
tag_id              ``int``                        tag ID                                                
tag_size            ``float``                      size of the tag                                       
source              ``str``                        source of the object                                  
arm                 ``str``                        arm to perform the placement                          
callback_feedback   ``callable``   ``None``        callable function for feedback (optional)             
callback_finish     ``callable``   ``None``        callable function for finish (optional)               
wait                ``bool``       ``False``       boolean indicating whether to wait for user response  
=================== ============== =============== ====================================================== 


Return
-------------

``None``

Exceptions
-------------

``None`` 

See the :ref:`complete list of manipulation exceptions. <manipulation_exceptions>`
