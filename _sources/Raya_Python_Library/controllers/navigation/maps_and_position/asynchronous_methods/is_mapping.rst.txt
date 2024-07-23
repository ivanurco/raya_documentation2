===========================
is_mapping()
===========================

.. raw:: html

    <hr/>


check if the robot is in mapping mode.

Reference
==========

Arguments
-------------

``None``

Return
-------------

``Boolean``: ``True`` if robot is in mapping mode.

Exceptions
-------------

-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
==============

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

   async def loop(self):
   ...
       mapping_status = await self.nav.is_mapping()
       if mapping_status:
           self.log.info("MAPPING MODE ON.")
           ...
