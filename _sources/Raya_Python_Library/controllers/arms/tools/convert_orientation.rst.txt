==========================
convert_orientation()
==========================

.. raw:: html

    <hr/>

Convert the orientation representation from either Euler angles (roll,
pitch, yaw) or quaternion (x, y, z, w) to quaternion format.

Reference
=============

Arguments
-----------

============= ================ ======================== ============================================================================================================================ 
Arguments     Type             Default value            Description                                                                                                                 
============= ================ ======================== ============================================================================================================================ 
orientation   ``dict``                                  Dictionary representing the orientation. It can contain either Euler angles (roll, pitch, yaw) or quaternion (x, y, z, w).  
units         ``ANGLE_UNIT``   ``ANGLE_UNIT.DEGREES``   The unit for the Euler angles. Default is degrees.                                                                          
============= ================ ======================== ============================================================================================================================ 


Return
-----------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``Dict``                          | the keys are (``x``, ``y``, ``z`` |
|                                   | , ``w``) and the items are the    |
|                                   | respective value for the          |
|                                   | quaternion representation.        |
+-----------------------------------+-----------------------------------+

Exceptions
-----------

-  ``RayaWrongArgument``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage Example
===============

.. code-block:: python

   ... 
   async def setup(self):
       self.arms: ArmsController = self.enable_controller('arms')
      
    ...
    async def loop(self):
       orientation= {
           'roll': 90.0,
           'pitch': 90.0
       }
       print(self.arms.convert_orientation(
               orientation=orientation))
   ...
       self.finish_app()

Output

.. code-block:: python

   {'x': 0.5, 'y': 0.5, 'z': -0.5, 'w': 0.5}

