=======================
is_linear_joint()
=======================

.. raw:: html

    <hr/>

Retrieves If a joint in a given arm on the current robotic device is
linear.

Reference
===========

Arguments
------------

========= ======= ==================
Arguments Type    Description
========= ======= ==================
arm       ``str`` Name of the arm.
joint     ``str`` Name of the joint.
========= ======= ==================

Return
--------

======== =============================
Type     Description
======== =============================
``bool`` True if it Is a linear joint.
======== =============================

Exceptions
------------

-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsInvalidJointName``

See the :ref:`complete list of arms exceptions <arms_exceptions>`

Usage example
=================

.. code-block:: python

   ...
   self.arms = self.enable_controller('arms')
   ...
   is_rotational = self.arms.is_linear_joint('left_arm' , 'arm_left_shoulder_rail_joint')
   self.log.info(is_rotational)
   ...

Output:

.. code-block:: python

   True
