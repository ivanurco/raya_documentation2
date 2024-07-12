the end effector of multiple arms to the goal poses at the same time.

Reference
---------

Arguments
~~~~~~~~~

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default value   | Description     |
+=================+=================+=================+=================+
| group           | ``str``         |                 | The group of    |
|                 |                 |                 | arms to set the |
|                 |                 |                 | pose for.       |
+-----------------+-----------------+-----------------+-----------------+
| arms            | ``list``        |                 | List of arms to |
|                 |                 |                 | set the pose    |
|                 |                 |                 | for.            |
+-----------------+-----------------+-----------------+-----------------+
| goal_poses      | ``list``        |                 | List of goal    |
|                 |                 |                 | poses for each  |
|                 |                 |                 | arm.            |
+-----------------+-----------------+-----------------+-----------------+
| cartesian_path  | ``bool``        | ``False``       | Whether to      |
|                 |                 |                 | follow a        |
|                 |                 |                 | cartesian path. |
+-----------------+-----------------+-----------------+-----------------+
| tilt_constraint | ``bool``        | ``False``       | Whether to      |
|                 |                 |                 | apply a tilt    |
|                 |                 |                 | constraint.     |
+-----------------+-----------------+-----------------+-----------------+
| use_obstacles   | ``bool``        | ``False``       | Whether to use  |
|                 |                 |                 | obstacles       |
|                 |                 |                 | during          |
|                 |                 |                 | execution.      |
+-----------------+-----------------+-----------------+-----------------+
| cameras         | ``list``        | ``[]``          | List of         |
|                 |                 |                 | cameras.        |
+-----------------+-----------------+-----------------+-----------------+
| u               | ``bool``        | ``False``       | Whether to      |
| pdate_obstacles |                 |                 | update          |
|                 |                 |                 | obstacles.      |
+-----------------+-----------------+-----------------+-----------------+
| min_bbox_       | ``list``        | ``[]``          | List of minimum |
| clear_obstacles |                 |                 | bounding boxes  |
|                 |                 |                 | for clearing    |
|                 |                 |                 | obstacles.      |
+-----------------+-----------------+-----------------+-----------------+
| max_bbox_       | ``list``        | ``[]``          | List of maximum |
| clear_obstacles |                 |                 | bounding boxes  |
|                 |                 |                 | for clearing    |
|                 |                 |                 | obstacles.      |
+-----------------+-----------------+-----------------+-----------------+
| save_trajectory | ``bool``        | ``False``       | Whether to save |
|                 |                 |                 | the trajectory. |
+-----------------+-----------------+-----------------+-----------------+
| name_trajectory | ``str``         | ``''``          | Name of the     |
|                 |                 |                 | trajectory.     |
+-----------------+-----------------+-----------------+-----------------+
| v               | ``float``       | ``0.0``         | Scaling factor  |
| elocity_scaling |                 |                 | for velocity.   |
+-----------------+-----------------+-----------------+-----------------+
| accel           | ``float``       | ``0.0``         | Scaling factor  |
| eration_scaling |                 |                 | for             |
|                 |                 |                 | acceleration.   |
+-----------------+-----------------+-----------------+-----------------+
| units           | ``ANGLE_UNIT``  | ``ANGLE         | Units for       |
|                 |                 | _UNIT.DEGREES`` | angles (DEGREES |
|                 |                 |                 | or RADIANS)     |
+-----------------+-----------------+-----------------+-----------------+
| ca              | ``Callable``    | ``None``        | Callable        |
| llback_feedback |                 |                 | function for    |
|                 |                 |                 | feedback .      |
+-----------------+-----------------+-----------------+-----------------+
| callback        | ``Callable``    | ``None``        | Callable        |
| _feedback_async |                 |                 | function for    |
|                 |                 |                 | feedback.       |
+-----------------+-----------------+-----------------+-----------------+
| callback_finish | ``Callable``    | ``None``        | Callable        |
|                 |                 |                 | function for    |
|                 |                 |                 | finish.         |
+-----------------+-----------------+-----------------+-----------------+
| callba          | ``Callable``    | ``None``        | Callable        |
| ck_finish_async |                 |                 | function for    |
|                 |                 |                 | finish.         |
+-----------------+-----------------+-----------------+-----------------+
| wait            | ``bool``        | ``False``       | Whether to wait |
|                 |                 |                 | for user        |
|                 |                 |                 | response.       |
+-----------------+-----------------+-----------------+-----------------+

Return
~~~~~~

===== ===================================
Type  Description
===== ===================================
float Fraction of the trajectory realized
===== ===================================

Exceptions
~~~~~~~~~~

-  ``RayaInvalidCallback``
-  ``RayaArmsException``
-  ``RayaArmsInvalidArmOrGroupName``
-  ``RayaArmsExternalException``

See the `complete list of arms exceptions </v2/docs/arms-exceptions>`__

Feedbacks
~~~~~~~~~

-  [1] The arm is in execution of the command
-  [3] Planning of the trajectory in progress
-  [4] Updating obstacles in progress

See the `complete list of arms feedbacks </v2/docs/arms-feedbacks>`__

Callback Arguments
~~~~~~~~~~~~~~~~~~

callback_feedback
^^^^^^^^^^^^^^^^^

+-----------------------+-----------------------+-----------------------+
| Argument              | Type                  | Description           |
+=======================+=======================+=======================+
| feedback_code         | ``int``               | Code for the type of  |
|                       |                       | feedback.             |
+-----------------------+-----------------------+-----------------------+
| feedback_msg          | ``str``               | Details regarding the |
|                       |                       | feedback code (empty  |
|                       |                       | if no error).         |
+-----------------------+-----------------------+-----------------------+
| arm                   | ``str``               | Name of the arm.      |
+-----------------------+-----------------------+-----------------------+
| percentage            | ``float``             | Percent of movement   |
|                       |                       | completed until       |
|                       |                       | target pose is        |
|                       |                       | reached.              |
+-----------------------+-----------------------+-----------------------+

callback_finish
^^^^^^^^^^^^^^^

+-----------+-----------+--------------------------------------------+
| Argument  | Type      |                                            |
+===========+===========+============================================+
| error     | ``int``   | Code for the type of error encountered (0  |
|           |           | if no error).                              |
+-----------+-----------+--------------------------------------------+
| error_msg | ``str``   | Details regarding the error (empty if no   |
|           |           | error).                                    |
+-----------+-----------+--------------------------------------------+
| fraction  | ``float`` | Fraction of the trajectory realized.       |
+-----------+-----------+--------------------------------------------+

Usage Example
-------------

See the `Arms Multi Pose Example </v2/docs/arms-set-multi-arms-pose>`__
to check some valid uses.
