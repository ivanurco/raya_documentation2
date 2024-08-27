========================
await_until_stop()
========================

.. raw:: html

    <hr/>

This function waits for a navigation command to complete and raises an
exception if no navigation command is currently running.

Reference
==========

Arguments
------------

None

Return
------------

``None``

Exceptions
------------

-  ``RayaNavNotLocated``
-  ``RayaNavNoMapLoaded``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`

Usage Example
===============

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

       async def loop(self):
           ...
              await self.nav.navigate_close_to_position( 
                   x=1.42, 
                   y=-2.96, 
                   min_radius=0.4,
                   max_radius=0.8,
                   pos_unit=POSITION_UNIT.METERS,
                   callback_feedback=self.cb_nav_feedback,
                   callback_finish=self.cb_nav_finish,
                   wait=False,
               )
               await self.nav.await_until_stop()
               ...
               
       async def finish(self):
          ...
