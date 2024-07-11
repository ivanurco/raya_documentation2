================
Arms
================

.. raw:: html

   <hr/>

.. raw:: html

   <div class="hidden-block">

.. toctree::
   :maxdepth: 1
    
   General Methods<general_methods/index>
   Get Arm/Joint Information<get_arm_joint_information/index>
   Arm/Joint Checking Methods<arm_joint_checking_methods/index>
   Manage Predefined Data<manage_predefined_data/index>
   Execute Arm Movements<execute_arm_movements/index>
   Gripper<gripper/index>
   Cancel Execution<cancel_execution/index>
   Objects<objects/index>
   Constraints<constraints/index>
   Tools<tools/index>   
   Exceptions <exceptions>
   Feedbacks <feedbacks>
   Enumerations <enumerations>

.. raw:: html

   </div>


1. Overview
=================

The controller for this specific robotic device offers a versatile range
of methods to effectively manipulate its arms. It enables access to
essential information, including groups of arms, individual arms, and
the respective joints of each arm. Details such as joint types, limits,
current joint states, and the present pose of the end effector for each
arm are readily available. This functionality facilitates seamless
verification and trajectory planning by specifying desired positions for
joints or end effector poses.

Additionally, the controller empowers users to manage various aspects,
including creating, removing, editing, retrieving, and gathering
information on predefined poses and trajectories. It encompasses a
comprehensive set of commands to precisely position the joints or set
the end effector to specific poses detecting obstacles from cameras if
it's desired. Furthermore, the controller supports the incorporation of
constraints into trajectories and allows the inclusion of obstacles or
attaching them to the end effector.

For example, Gary's arms are identified by the following names:

+-------+-----------+
| Group | Arms      |
+=======+===========+
| both  | left_arm  |
+       +-----------+
|       | right_arm |
+-------+-----------+

| 

in order to get the list of available joints, please run ``get_joints_list()``.

2. Using the Controller
===============================

Creating the controller in your app:

.. code-block:: python

      from raya.application_base import RayaApplicationBase

      class RayaApplication(RayaApplicationBase):
          async def setup(self):
              ...
              self.arms = self.enable_controller('arms')
              ...


The controller class includes a large set of methods to allow you to
interact or get state of the arms or joints.

You can find all the methods divided into these groups:

2.1 Get Arm/Joint Information
--------------------------------

| 

-  :doc:`get_arms_list() <./get_arm_joint_information/synchronous_methods/get_arms_list>`
-  :doc:`get_groups_list() <./get_arm_joint_information/synchronous_methods/get_groups_list>`
-  :doc:`get_joints_list() <./get_arm_joint_information/synchronous_methods/get_joints_list>`
-  :doc:`get_joints_limits() <./get_arm_joint_information/synchronous_methods/get_joints_limits>`
-  :doc:`get_joint_type() <./get_arm_joint_information/synchronous_methods/get_joint_type>`
-  :doc:`get_arm_state() <./get_arm_joint_information/synchronous_methods/get_arm_state>`
-  :doc:`get_predefined_poses_list() <./get_arm_joint_information/asynchronous_methods/get_predefined_poses_list>`
-  :doc:`get_predefined_trajectories_list() <./get_arm_joint_information/asynchronous_methods/get_predefined_trajectories_list>`
-  :doc:`get_current_joints_position() <./get_arm_joint_information/asynchronous_methods/get_current_joints_position>`
-  :doc:`get_current_pose() <./get_arm_joint_information/asynchronous_methods/get_current_pose>`
-  :doc:`get_current_joint_position() <./get_arm_joint_information/asynchronous_methods/get_current_joint_position>`

2.2  Arm/Joint checking methods
----------------------------------

| 

-  :doc:`is_linear_joint() <./arm_joint_checking_methods/synchronous_methods/is_linear_joint>`
-  :doc:`is_rotational_joint() <./arm_joint_checking_methods/synchronous_methods/is_rotational_joint>`
-  :doc:`is_pose_valid() <./arm_joint_checking_methods/asynchronous_methods/is_pose_valid>`
-  :doc:`is_pose_valid_q() <./arm_joint_checking_methods/asynchronous_methods/is_pose_valid_q>`
-  :doc:`is_joints_position_valid() <./arm_joint_checking_methods/asynchronous_methods/is_joints_position_valid>`
-  :doc:`is_any_arm_in_execution() <./arm_joint_checking_methods/asynchronous_methods/is_any_arm_in_execution>`
-  :doc:`are_checkings_in_progress() <./arm_joint_checking_methods/asynchronous_methods/are_checkings_in_progress>`

2.3 Manage predefined data
------------------------------

| 

-  :doc:`manage_predefined_pose() <./manage_predefined_data/manage_predefined_pose>`
-  :doc:`manage_predefined_trajectory() <./manage_predefined_data/manage_predefined_trajectory>`

2.4 Execute arm movements
----------------------------

| 

-  :doc:`set_predefined_pose() <./execute_arm_movements/set_predefined_pose>`
-  :doc:`set_joints_position() <./execute_arm_movements/set_joints_position>`
-  :doc:`set_joint_position() <./execute_arm_movements/set_joint_position>`
-  :doc:`set_pose() <./execute_arm_movements/set_pose>`
-  :doc:`set_pose_q() <./execute_arm_movements/set_pose_q>`
-  :doc:`execute_predefined_trajectory() <./execute_arm_movements/execute_predefined_trajectory>`
-  :doc:`execute_predefined_poses_array() <./execute_arm_movements/execute_predefined_poses_array>`
-  :doc:`execute_joint_positions_array() <./execute_arm_movements/execute_joint_positions_array>`
-  :doc:`execute_poses_array() <./execute_arm_movements/execute_poses_array>`
-  :doc:`execute_poses_array_q() <./execute_arm_movements/execute_poses_array_q>`
-  :doc:`set_multi_arm_pose() <./execute_arm_movements/set_multi_arm_pose>`

2.5 Gripper
----------------

| 

-  :doc:`gripper_cmd() <./gripper/gripper_cmd>`

2.6 Cancel execution
------------------------

| 

-  :doc:`cancel_execution() <./cancel_execution/cancel_execution>`

2.7 Objects
---------------

| 

-  :doc:`add_attached_object() <./objects/add_attached_object>`
-  :doc:`remove_attached_object() <./objects/remove_attached_object>`
-  :doc:`add_collision_object() <./objects/add_collision_object>`
-  :doc:`remove_collision_object() <./objects/remove_collision_object>`

2.8 Constraints
------------------

| 

-  :doc:`add_constraints() <./constraints/add_constraints>`
-  :doc:`remove_constraints() <./constraints/remove_constraints>`

2.9 Tools
------------

| 

-  :doc:`convert_orientation() <./tools/convert_orientation>`

3. Examples
===============

-  `Arms: Check Pose <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_check_pose>`__
-  `Arms: Check Pose Obstacles <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_check_pose_obstacles>`__
-  `Arms: Check Position Joints <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_check_position_joints>`__
-  `Arms: Manage Predefined Poses <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_manage_predefined_poses>`__
-  `Arms: Set Predefined Pose <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_set_predefined_pose>`__
-  `Arms: Set Joints Position <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_set_position_joints>`__
-  `Arms: Set Pose <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_set_pose>`__
-  `Arms  Set Pose Obstacles <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_set_pose_obstacles>`__
-  `Arms: Execute Predefined Pose Array <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_execute_predefined_pose_array>`__
-  `Arms: Execute Pose Array <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_execute_pose_array>`__
-  `Arms: Set Multi Arms Pose <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_set_multi_arms_pose>`__
-  `Arms: Set Gripper <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_set_gripper>`__
-  `Arms: Add Constraints <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/arms_add_constraints>`__

| 