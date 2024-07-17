================================
set_img_predictions_callback()
================================

.. raw:: html

    <hr/>

This method allows you to configure a callback to receive predictions
and, additionally, it enables you to receive the image procesed. In
addition to the callback, this method requires the camera controller
that will perform image processing to be provided. If **callback_async**
is defined, the **callback** is ignored. One of the callbacks must be
defined.

Reference
==========

Arguments
------------------

========================== ============== =============== ===================================================================================================================================================================================== 
Arguments                  Type           Default value   Description                                                                                                                                                                          
========================== ============== =============== ===================================================================================================================================================================================== 
callback                   ``callable``   ``None``        Callback that will be invoked when a prediction arrives.                                                                                                                             
callback_async             ``callable``   ``None``        Async callback that will be invoked when a prediction arrives.                                                                                                                       
as_dict                    ``bool``       ``False``       If set to ``true``, the predictions will be returned as a dictionary; otherwise, they will be returned as a list.                                                                    
call_without_predictions   ``bool``       ``False``       If it is set to ``true``, the callback will be called even when there are no predictions. If it is set to ``false``, the callback will not be called when there are no predictions.  
cameras_controller         ``callable``   ``None``        Cameras controller                                                                                                                                                                   
========================== ============== =============== ===================================================================================================================================================================================== 

Return
------------------

``None``

Exceptions
------------------

-  ``RayaCVNeedController``

See the :ref:`complete list of cv exceptions. <cv_exceptions>`

Examples
===========

.. code:: python

   def callback_prediction(self, msg, image):
       if msg:
           image = draw_on_image(
                   image=image, 
                   last_predictions=msg
               )
       show_image(img=image, title='Video from Gary\'s camera')
   ...
   self.cameras: CamerasController = \
           await self.enable_controller(ctlr_name='cameras')
   self.predictor.set_img_predictions_callback(
           callback=self.callback_prediction,
           as_dict=True,
           call_without_classifications=True,
           cameras_controller=self.cameras
       )
   ...
   ...
