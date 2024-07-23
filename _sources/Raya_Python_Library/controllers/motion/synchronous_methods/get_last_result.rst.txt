=========================
get_last_result()
=========================

.. raw:: html

    <hr/>


Return last motion result.

Reference
=========================

Arguments
-----------------------------------

``None``

Return
-----------------------------------

``tuple``

========= ===================
Type      Description
========= ===================
``int``   Last error code.
``str``   Last error message.
``tuple`` Last motion result.
========= ===================

Exceptions
--------------------

See the complete list of :ref:`motion exceptions <motion_exceptions>`.

Usage Example
=========================

.. code:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.motion = await self.enable_controller('motion')
           ....
           
       async def loop(self):
        ....
           ecode , emsg , result = self.motion.get_last_result()
         ...
         
       async def finish(self):
         ...
