===========================
set_predictions_callback()
===========================

.. raw:: html  

    <hr/>

This method allows you to set either a synchronous or an asynchronous
callback, which will be triggered each time a new message arrives in the
predictions topic. If **callback_async** is defined, the **callback** is
ignored. One of the callbacks must be defined.

Reference
===========

Arguments
------------

========================== ============== =============== ===================================================================================================================================================================================== 
Arguments                  Type           Default value   Description                                                                                                                                                                          
========================== ============== =============== ===================================================================================================================================================================================== 
callback                   ``callable``   ``None``        Callback that will be invoked when a prediction arrives.                                                                                                                             
callback_async             ``callable``   ``None``        Async callback that will be invoked when a prediction arrives.                                                                                                                       
as_dict                    ``bool``       ``False``       If set to ``true``, the predictions will be returned as a dictionary; otherwise, they will be returned as a list.                                                                    
call_without_predictions   ``bool``       ``False``       If it is set to ``true``, the callback will be called even when there are no predictions. If it is set to ``false``, the callback will not be called when there are no predictions.  
========================== ============== =============== ===================================================================================================================================================================================== 


Return
------------

``None``

Exceptions
------------

``None``

See the :ref:`complete list of cv exceptions. <cv_exceptions>`

Examples
===========

.. code-block:: python

   def callback_prediction(self, msg):
       self.prediction_received = True
   ...
   self.predictor.set_predictions_callback(
           callback=self.callback_prediction,
           as_dict=True,
           call_without_detections=True,
       )
   ...
   ...
