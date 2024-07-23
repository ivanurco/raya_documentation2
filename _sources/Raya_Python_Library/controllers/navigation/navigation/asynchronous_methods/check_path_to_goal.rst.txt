============================
check_path_to_goal()
============================

.. raw:: html

    <hr/>

Check if there is a path to a given coordinate.

Reference
============

Arguments
--------------

==================== =========== ============== =========================================================== 
Arguments            Type        Default value   Description                                                
==================== =========== ============== =========================================================== 
x                    ``float``                  X-coordinate of the goal.                                  
y                    ``float``                  Y-coordinate of the goal.                                  
in_map_coordinates   ``bool``    ``False``      Whether the coordinates are in map coordinates or pixels.  
==================== =========== ============== =========================================================== 

Return
--------------

======== ===============================================
Type     Description
======== ===============================================
``bool`` Value indicating whether there is path to goal.
======== ===============================================

Exceptions
--------------

-  ``RayaNavNotLocated``
-  ``RayaNavNoMapLoaded``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Usage Example
==================

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.nav = await self.enable_controller('navigation')
           self.costmap_image, self.map_info = await self.nav.get_costmap()
           ....
           
       async def loop(self):
        ....
           path_to_zero_position = await self.navigation.check_path_to_goal(
                   x=0.0, 
                   y=0.0, 
                   in_map_coordinates=True
               )
           self.log.info((
                   'Exists path to zero coordinate =' 
                   f'{path_to_zero_position}'
               ))
         ...
         
       async def finish(self):
         ...

See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__
to check some valid uses.
