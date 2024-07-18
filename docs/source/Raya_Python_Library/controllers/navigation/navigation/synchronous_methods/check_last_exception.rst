=========================
check_last_exception()
=========================

.. raw:: html

    <hr/>

Check if navigation command has exceptions. If an exception occurs, it
is raised.

Reference
============

Arguments
------------

``None``

Return
------------

``None``

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
           self.navigation.check_last_exception() # Raise if exception happened
         ...
         
       async def finish(self):
         ...
