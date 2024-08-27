=========================
set_map()
=========================

.. raw:: html

    <hr/>


Activates a specific map.

In order to navigate and localize the robot, we must use this function
and set the correct map of the environment.

Reference
==============

Arguments
-------------------

=================== ============== =============== ====================================================================== 
Arguments           Type            Default value                                                                     
=================== ============== =============== ====================================================================== 
map_name            ``str``                         Name of the map.                                                  
wait_localization   ``bool``       ``False``        Whether to wait for localization before returning.                
timeout             ``float``      ``0.0``          Timeout duration for localization waiting (in seconds).           
callback_feedback   ``Callable``   ``None``         Callable function for feedback (optional).                        
callback_finish     ``Callable``   ``None``         Callable function for finish (optional).                          
wait                ``bool``       ``False``        Boolean indicating whether to wait for user response (optional).  
options             ``object``                      Additional options for setting the map.                           
=================== ============== =============== ======================================================================


Return
-------------------

If wait_location would return True if the robot is localized. If
wait_location is False it will return true if the map changed correctly.

Exceptions
-------------------

-  ``RayaWrongArgument``
-  ``RayaNavUnknownMapName``
-  ``RayaNavCurrentlyMapping``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
===================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           ...

       async def loop(self):
           ...
           robot_localized = await self.nav.set_map(
                   map_name=self.map_name, 
                   wait_localization=True, 
                   timeout=3.0,
                   callback_feedback=self.cb_set_map_feedback,
                   callback_finish=self.cb_set_map_finish
               )
           if not robot_localized:
               self.log.error(f'Robot couldn\'t localize itself')
               self.finish_app()
           ...

See the `Navigate to click <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_to_click>`__ ,
`nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid
uses.
