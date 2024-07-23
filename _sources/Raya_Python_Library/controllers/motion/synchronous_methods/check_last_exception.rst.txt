=============================
check_last_exception()
=============================

.. raw:: html

    <hr/>


Check if motion command has exceptions. If an exception occurs, it is
raised.

Reference
===========

Arguments
-----------

``None``

Return
----------

``None``

Exceptions
---------------

See the :ref:`complete list of motion exceptions <motion_exceptions>`.

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
           self.motion.check_last_exception() # Raise if exception happened
         ...
         
       async def finish(self):
         ...
