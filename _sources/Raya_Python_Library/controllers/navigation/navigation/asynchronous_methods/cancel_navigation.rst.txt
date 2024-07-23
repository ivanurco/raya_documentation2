=============================
cancel_navigation()
=============================

.. raw:: html

    <hr/>
    
Cancels the current navigation goal.

Reference
============

Arguments
--------------

``None``

Return
--------------

``None``

Exceptions
--------------

-  ``RayaNavNotNavigating``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

       async def loop(self):
           ...
              await self.navigation.navigate_to_zone(
                   zone_name='initial_zone',
                   to_center=True,
                   callback_feedback=self.cb_nav_feedback, 
                   callback_finish=self.cb_nav_finish, 
                   wait=False
               )
               await self.sleep(0.5)
               await self.nav.cancel_navigation()
               ...
               
       async def finish(self):
          ...

See the `Navigate to click <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_to_click>`__,
`nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ examples to check some
valid uses.
