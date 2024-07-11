======================
get_last_result()
======================

.. raw:: html

    <hr/>

Return last arms result.

Reference
==============

Arguments
-----------

``None``

Return
-----------

``tuple``

========= ===================
Type      Description
========= ===================
``int``   Last error code.
``str``   Last error message.
``tuple`` Last arms result.
========= ===================

Exceptions
-----------

See the :ref:`complete list of arms exceptions <arms_exceptions>`.

Usage Example
===================

.. code:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.arms = await self.enable_controller('arms')
           ....
           
       async def loop(self):
        ....
           ecode , emsg , result = self.arms.get_last_result()
         ...
         
       async def finish(self):
         ...
