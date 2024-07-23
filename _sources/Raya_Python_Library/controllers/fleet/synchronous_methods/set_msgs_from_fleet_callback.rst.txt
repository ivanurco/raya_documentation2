===============================
set_msgs_from_fleet_callback()
===============================

.. raw:: html

    <hr/>

The RGS or the fleet manager can send messages to the app, this function
register the callback for managing this messages.

Reference
==============

Arguments
----------------------

============== ==== ============= ====================
Arguments      Type Default value Description
============== ==== ============= ====================
callback            ``None``      Syncronous callback
callback_async      ``None``      Asyncronous callback
============== ==== ============= ====================

Return
----------------------

``None``

Exceptions
----------------------

-  ``RayaNeedCallback``

See the :ref:`complete list of fleet exceptions <fleet_exceptions>`

Callback Arguments
----------------------

======== ======== ================================
Argument Type     Description
======== ======== ================================
data     ``dict`` Dictionary with the data recieve
======== ======== ================================

Usage Example
===============

.. code-block:: python

   from raya.application_base import RayaApplicationBase
   from raya.controllers.fleet_controller import FleetController

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.fleet: FleetController = await self.enable_controller('fleet')
           self.fleet.set_msgs_from_fleet_callback(
               callback=self.cb_msg_from_fleet,
               callback_async=self.cb_async_msg_from_fleet,
           )


       async def loop(self):
           response = await self.fleet.request_action(
               title='Move to target',
               message='Gary wants to move to the target',
               timeout=120.0
           )
           self.log.info(response)
           self.finish_app()


       async def finish(self):
           pass
       
       
       def cb_msg_from_fleet(self, data):
           self.log.info('MSG from fleet:')
           self.log.info(f'  {data}')

       async def cb_async_msg_from_fleet(self, data):
           self.log.info('ASYNC: MSG from fleet:')
           self.log.info(f'  {data}')

This will output

.. code-block:: bash

   (INFO)<RayaApp.app.fleet_controller> MSG from fleet:
   (INFO)<RayaApp.app.fleet_controller>   {'data': 'fleet_sample_message'}
   (INFO)<RayaApp.app.fleet_controller> ASYNC: MSG from fleet:
   (INFO)<RayaApp.app.fleet_controller>   {'data': 'fleet_sample_message'}
