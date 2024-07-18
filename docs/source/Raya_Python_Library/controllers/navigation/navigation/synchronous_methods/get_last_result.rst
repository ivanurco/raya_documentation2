=======================
get_last_result()
=======================

.. raw:: html

    <hr/>

Return last navigation result.

Reference
============

Arguments
------------

``None``

Return
------------

``tuple``

========= =======================
Type      Description
========= =======================
``int``   Last error code.
``str``   Last error message.
``tuple`` Last navigation result.
========= =======================

Exceptions
------------

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
================

.. code-block:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.navigation = await self.enable_controller('navigation')
           ....
           
       async def loop(self):
        ....
           ecode , emsg , result = self.navigation.get_last_result()
         ...
         
       async def finish(self):
         ...
