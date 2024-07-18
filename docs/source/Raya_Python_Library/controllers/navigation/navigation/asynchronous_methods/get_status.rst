==========================
get_status()
==========================

.. raw:: html

    <hr/>

Gets a dictionary representing the robot’s navigation state.

Reference
============

Arguments
------------

``None``

Return
------------

Returns a dict in the form of:

========== ========== ============= ============================
Arguments  Type       Default value Description
========== ========== ============= ============================
localized  ``bool``   ``False``     True if robot is localized.
navigating ``bool``   ``False``     True if robot is navigating.
mapping    ``bool``   ``False``     True if robot is mapping.
map_name   ``string``               Active map name.
========== ========== ============= ============================

Exceptions
------------

-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Usage Example
================

Code:

.. code-block:: python
    
    ...

    class RayaApplication(RayaApplicationBase):
    

    async def setup(self):
        self.navigation = await self.enable_controller('navigation')
        self.status = await self.navigation.get_status()
        ....
    async def loop(self):
        self.log.info(self.status)
        ...
