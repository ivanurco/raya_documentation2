===========================
add_constraints()
===========================

.. raw:: html

    <hr/>

Add a constraint to the arm.

Reference
============

Arguments
------------

+----------------+--------------+----------------+----------------+
| Arguments      | Type         | Default value  | Description    |
+================+==============+================+================+
| arm            | ``str``      |                | The arm to add |
|                |              |                | constraints    |
|                |              |                | for.           |
+----------------+--------------+----------------+----------------+
| joi            | ``list``     | ``[]``         | List of joint  |
| nt_constraints |              |                | constraints.   |
+----------------+--------------+----------------+----------------+
| orientati      | ``list``     | ``[]``         | List of        |
| on_constraints |              |                | orientation    |
|                |              |                | constraints.   |
+----------------+--------------+----------------+----------------+
| positi         | ``list``     | ``[]``         | List of        |
| on_constraints |              |                | position       |
|                |              |                | constraints.   |
+----------------+--------------+----------------+----------------+
| units          | ``ANG_UNIT`` |``ANG_UNIT.DEG``| Unit for       |
|                |              |                | angles (DEG or |
|                |              |                | RAD).          |
+----------------+--------------+----------------+----------------+

Return
------------

``None``

Exceptions
------------

-  ``RayaWrongArgument``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage Example
===============

.. code-block:: python

   async def setup(self):
       self.arms: ArmsController = await self.enable_controller('arms')
       self.constraints_1 = {
               'joint_constraints': [
                   {
                       'position': 0,
                       'joint_name': 'arm_right_shoulder_FR_joint',
                       'tolerance_above': 15,
                       'tolerance_below': 15,
                       'weight': 1.0,
                   },
                   {
                       'position': 0,
                       'joint_name': 'arm_right_shoulder_rail_joint',
                       'tolerance_above': 0.1,
                       'tolerance_below': 0,
                       'weight': 1.0,
                   }
               ],
               'orientation_constraints': [
                   {
                       'orientation': {'roll': 90},
                       'weight': 1.0,
                       'absolute_x_axis_tolerance': 20.0,
                       'absolute_y_axis_tolerance': 20.0,
                       'absolute_z_axis_tolerance': 180.0
                   }
               ],
               'position_constraints': [
                   {
                       'constraint_region': {
                           'types': [SHAPE_TYPE.BOX],
                           'shapes_poses': [{'position': {'x': 0,
                                                          'y': -1.02,
                                                          'z': 0.5},
                                             'orientation': {'pitch': 90}}],
                           'dimensions': [[2.0,
                                           1.0,
                                           0.95]]
                       },
                       'target_point_offset': {'x': 0.1, 'y': 0, 'z': 0},
                       'weight': 1.0,
                   }
               ],
           }
   ...    
   async def loop(self):
       await self.arms.add_constraints(arm='right_arm', **self.constraints_1)

See the `add constraints Example <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/arms_add_constraints/src/app.py>`__ to
see how to use this function.
