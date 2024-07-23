===========================
get_joint_type()
===========================

.. raw:: html

    <hr/>


Get the type of a joint in a given arm on the current robotic device.

Reference
===========

Arguments
-----------

========= ======= ==================
Arguments Type    Description
========= ======= ==================
arm       ``str`` Name of the arm.
joint     ``str`` Name of the joint.
========= ======= ==================

Return
--------

=================== ====================================
Type                Description
=================== ====================================
``ARMS_JOINT_TYPE`` enumeration value of the joint type.
=================== ====================================

Exceptions
-----------

-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsInvalidJointName``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
===============

.. code-block:: python

   ...
   self.arms = self.enable_controller('arms')
   ...
   joint_type = self.arms.get_joint_type('left_arm' , 'arm_left_shoulder_rail_joint')
   self.log.info(joint_type)
   ...

Output:

.. code-block:: bash

   ARMS_JOINT_TYPE.LINEAR
