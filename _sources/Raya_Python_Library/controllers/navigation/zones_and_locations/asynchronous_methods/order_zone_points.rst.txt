=======================
order_zone_points()
=======================

.. raw:: html

    <hr/>

Orders the points of a zone in a list. It will not be returned, it will
be stored internally to be obtained with the get_sorted_zone_point
method().

Reference
============

Arguments
-----------------

=================== ========== ============== ========================================================================================= 
Arguments           Type       Default value                                                                                            
=================== ========== ============== ========================================================================================= 
zone_name           ``str``                     The requested zone on the map.                                                           
from_current_pose   ``bool``   False            If ``True``, sort from the current pose, if ``False`` sort from the center of the zone.  
=================== ========== ============== ========================================================================================= 


Return
---------

``Dict`` with a bool if the points was sorted and the number of points.

+--------------------+----------+------------------------------------+
| Key                | Type     | Info                               |
+====================+==========+====================================+
| ``ordered_points`` | ``bool`` | ``True`` if the points were sorted |
|                    |          | successfully.                      |
+--------------------+----------+------------------------------------+
| ``num_points``     | ``int``  | Number of sorted points.           |
+--------------------+----------+------------------------------------+

.. raw:: html

    <div class="warning-box">

    <p class="title warning-box"> Important note! </p>

    <p class="text warning-box">
    This function does not return the points,
    it only orders and stores them to be obtained with the function
    <strong>get_sorted_zone_point</strong>
    </p>

    </div>

Exceptions
--------------

-  ``RayaNavNotLocated``
-  ``RayaNavZonesNotFound``
-  ``RayaWrongArgument``
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
           await self.nav.order_zone_points(
                       zone_name=kitchen, 
                       from_current_pose=True
                   )
           ...

See the `nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__,
`nav_get_info <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_get_info>`__ to check some valid uses.
