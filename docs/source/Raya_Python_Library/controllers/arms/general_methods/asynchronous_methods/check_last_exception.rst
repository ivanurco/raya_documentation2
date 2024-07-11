======================================
check_last_exception()
======================================

.. raw:: html

    <hr/>

Check if arms command has exceptions. If an exception occurs, it is raised.


Reference
===========

Arguments
-----------

``None``

Return
--------

``None``

Exceptions
-----------

See the :ref:`complete list of arms exceptions <arms_exceptions>`.

Usage Example
==============

.. code:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.arms = await self.enable_controller('arms')
           ....
           
       async def loop(self):
        ....
           self.arms.check_last_exception() # Raise if exception happened
         ...
         
       async def finish(self):
         ...
