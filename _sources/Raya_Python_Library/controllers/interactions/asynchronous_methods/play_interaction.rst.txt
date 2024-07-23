====================
play_interaction()
====================

.. raw:: html

    <hr/>

Play a predefined interaction in the robot

Arguments
===========

========================= ============== ============================================================================================================ 
Arguments                 Type                                                                                                                       
========================= ============== ============================================================================================================ 
interaction_name          ``str``        Name of the predefined interaction.                                                                         
callback_feedback         ``callable``   Callback synchronous method.                                                                                
callback_feedback_async   ``callable``   Callback asynchronous method.                                                                               
callback_finish           ``callable``   Callback synchronous finish method.                                                                         
callback_finish_async     ``callable``   Callback asynchronous finish method.                                                                        
wait                      ``bool``       Wait until the end of the interaction before mooving to the next line of code. Default value is ``False``.  
========================= ============== ============================================================================================================ 


Return
========

``None``

Exceptions
============

-  ``RayaInteractionsWrongName``
-  ``RayaInteractionsAlreadyRunning``

See the :ref:`complete interactions exceptions <interactions_exceptions>`.

Usage example
==============

.. code-block:: python

   from raya.application_base import RayaApplicationBase

   class RayaApplication(RayaApplicationBase):
       async def setup(self):
           self.interactions = await self.enable_controller('interactions')

       async def loop(self):
           self.interactions.play_predefined_interaction(interaction_name = 'task_received')
           self.finish_app()

       async def finish(self):
           self.log.info(f'Hello from finish()')
