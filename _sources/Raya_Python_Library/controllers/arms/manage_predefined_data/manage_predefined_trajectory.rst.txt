===============================
manage_predefined_trajectory()
===============================

.. raw:: html

    <hr/>

This function manages predefined trajectories.

Reference
============

Arguments
-----------

+-----------------+-------------------------+----------------------------------------+-----------------+
| Arguments       | Type                    | Default value                          | Description     |
+=================+=========================+=================+======================+=================+
| name            | ``str``                 |                                        | Name of the     |
|                 |                         |                                        | predefined      |
|                 |                         |                                        | trajectory .    |
+-----------------+-------------------------+----------------------------------------+-----------------+
| action          | ``ARMS_MANAGE_ACTIONS`` | ``ARMS_MANAGE_ACTIONS.GET_INFORMATION``| Action to       |
|                 |                         |                                        | perform on the  |
|                 |                         |                                        | predefined      |
|                 |                         |                                        | trajectory.     |
+-----------------+-------------------------+----------------------------------------+-----------------+

Return
---------

ARMS_MANAGE_ACTIONS.REMOVE
^^^^^^^^^^^^^^^^^^^^^^^^^^

``None``

ARMS_MANAGE_ACTIONS.GET_INFORMATION
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``dict``                          | information relevant for the      |
|                                   | trajectory ``'arm'``,             |
|                                   | ``'joint_names'``,                |
|                                   | ``'start_position'``,             |
|                                   | ``'end_position'``.               |
+-----------------------------------+-----------------------------------+

Exceptions
------------

-  ``RayaArmsException``
-  ``RayaArmsPredefinedPoseEmptyName``
-  ``RayaArmsPredefinedTrajectoryNameAlreadyExist``
-  ``RayaArmsPredefinedPoseNameNotExist``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage Example
===============

.. _arms_manage_actions.get_information-1:

ARMS_MANAGE_ACTIONS.GET_INFORMATION
----------------------------------------

.. code-block:: python

   ...
   self.arms = self.enable_controller('arms')
   ...
   predefined_trajectories = self.arms.get_list_predefined_trajectories()
   info_predefined_trajectory = self.arms.manage_predefined_trajectory(name= predefined_trajectories[-1])
   self.log.info(json.dumps(info_predefined_trajectory, indent=2))

Output:

.. code-block:: json

   {
     "arm": "left_arm",
     "joint_names": [
       "arm_left_shoulder_rail_joint",
       "arm_left_shoulder_FR_joint",
       "arm_left_shoulder_RL_joint",
       "arm_left_bicep_twist_joint",
       "arm_left_bicep_FR_joint",
       "arm_left_elbow_twist_joint",
       "arm_left_elbow_FR_joint",
       "arm_left_wrist_joint"
     ],
     "start_position": [
       8.972426575377501e-05,
       -0.03173527054583321,
       -0.01080285341023765,
       -0.004505780251340769,
       -1.93396395910474,
       3.129114916800413,
       -0.3950002210519359,
       -1.569905172255493
     ],
     "end_position": [
       9.318329645320773e-05,
       -1.715935603715571e-05,
       -7.1511113084853e-05,
       3.277424164116247e-06,
       3.495145821888216e-06,
       3.19550953340686e-05,
       -4.061059248634819e-05,
       5.566391581624267e-06
     ]
   }

.. _arms_manage_actions.remove-1:

ARMS_MANAGE_ACTIONS.REMOVE
------------------------------

.. code-block:: python

   ...
   self.arms = self.enable_controller('arms')
   ...
   predefined_trajectories = self.arms.get_list_predefined_trajectories()
   self.log.info(f'before remove: {predefined_trajectories}')
   info_predefined_trajectory = self.arms.manage_predefined_trajectory(name= predefined_trajectories[-1],
                                                           action = ARMS_MANAGE_ACTIONS.REMOVE)
   predefined_trajectories = self.arms.get_list_predefined_trajectories()
   self.log.info(f'after remove: {predefined-trajectories}) 

Output:

.. code-block:: bash

   before remove: ['pre_grasping_bottle', 'grasping_bottle',  'post_grasping_bottle']
   after remove: ['pre_grasping_bottle', 'grasping_bottle']
