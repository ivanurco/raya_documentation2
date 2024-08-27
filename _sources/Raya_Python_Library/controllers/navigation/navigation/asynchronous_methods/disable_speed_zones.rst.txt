===============================
disable_speed_zones()
===============================

.. raw:: html

    <hr/>


Disables the speed(limited) zones.

Reference
============

Arguments
-------------

``None``

Return
-------------

``None``

Exceptions
-------------

-  ``RayaNavNotLocated``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Usage Example
==================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

       async def loop(self):
         ...
         await self.nav.disable_speed_zones()
         ...
               
       async def finish(self):
          ...
