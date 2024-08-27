.. _motion_exceptions:

=====================
Exceptions
=====================

.. raw:: html   

    <hr/>

+-----------------------------------+-----------------------------------+
| Exception                         | Condition                         |
+===================================+===================================+
| ``RayaAlreadyMoving``             | The robot is already moving and   |
|                                   | another movement request was      |
|                                   | made.                             |
+-----------------------------------+-----------------------------------+
| ``RayaNotValidMotionCommand``     | Invalid request, for example      |
|                                   | speed 0 or negative time.         |
+-----------------------------------+-----------------------------------+
| ``RayaInvalidMinDistance``        | Requested distance is 0.          |
+-----------------------------------+-----------------------------------+
| ``RayaRobotNotMoving``            | A request was made to cancel the  |
|                                   | movement but the robot is not     |
|                                   | moving.                           |
+-----------------------------------+-----------------------------------+
| ``RayaMotionUnableToMove``        | The robot could not move.         |
+-----------------------------------+-----------------------------------+
| ``RayaMotionObstacleDetected``    | Obstacle detected in the robot’s  |
|                                   | path.                             |
+-----------------------------------+-----------------------------------+
| ``RayaUnableToEnableCamera``      | Error trying to enable the        |
|                                   | cameras.                          |
+-----------------------------------+-----------------------------------+
