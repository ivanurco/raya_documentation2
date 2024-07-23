======================
get_list_of_maps()
======================

.. raw:: html

    <hr/>
    

Get a list of all the existing maps in the robotic device. For the
simulator, it will retrieve the maps of all the available scenes.

Reference
=============

Arguments
-------------

``None``

Return
-------------

Returns a list of all the available maps.

Exceptions
-------------

-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.

Usage Example
=================

Code:

.. code-block:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.navigation = await self.enable_controller('navigation')
           self.maps_list = await self.navigation.get_list_of_maps()
           ....
       async def loop(self):
            self.log.info(self.maps_list)
         ...
           

Console output:

.. code-block:: bash

   ['unity_apartment', 'lab', 'unity_showroom']

See the `Navigate to click <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_to_click>`__ ,
`nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid
uses.
