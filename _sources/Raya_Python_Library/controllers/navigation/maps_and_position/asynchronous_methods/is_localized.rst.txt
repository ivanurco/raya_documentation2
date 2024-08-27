=======================
is_localized()
=======================

.. raw:: html

    <hr/>

Check if the robot is localized.

Reference
============

Arguments
------------

``None``

Return
------------

``Boolean``: ``True`` if robot is localized.

Exceptions
------------

-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
=================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

   async def loop(self):
   ...
       robot_localized = await self.nav.is_localized()
       if robot_localized:
           self.log.info("ROBOT IS LOCALIZED.")
           ...
