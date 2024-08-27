.. _navigation_exceptions:

====================
Exceptions
====================

.. raw:: html

    <hr/>


+-----------------------------------+-----------------------------------+
| Exception                         | Condition                         |
+===================================+===================================+
| ``RayaNavAlreadyNavigating``      | Robot is already navigating.      |
+-----------------------------------+-----------------------------------+
| ``RayaNavNotMapping``             | Robot is not in mapping mode.     |
+-----------------------------------+-----------------------------------+
| ``RayaNavLocationAlreadyExist``   | The requested location already    |
|                                   | exists.                           |
+-----------------------------------+-----------------------------------+
| ``RayaNavErrorReadingYaml``       | An error occurred reading a yaml  |
|                                   | file.                             |
+-----------------------------------+-----------------------------------+
| ``RayaNavErrorWritingYaml``       | An error occurred writting a yaml |
|                                   | file.                             |
+-----------------------------------+-----------------------------------+
| ``RayaNavLocationNotFound``       | The requested location does not   |
|                                   | exist.                            |
+-----------------------------------+-----------------------------------+
| ``RayaNavLocationsNotFound``      | No location found.                |
+-----------------------------------+-----------------------------------+
| ``RayaNavAlreadyNavigating``      | The robot is already browsing.    |
+-----------------------------------+-----------------------------------+
| ``RayaNavNoMapLoaded``            | No map is loaded.                 |
+-----------------------------------+-----------------------------------+
| ``RayaNavSortedPointsEmpty``      | The list of sorted points is      |
|                                   | empty.                            |
+-----------------------------------+-----------------------------------+
| ``RayaNavZoneAlreadyExist``       | The zone name already exists.     |
+-----------------------------------+-----------------------------------+
| ``RayaNavErrorSavingZone``        | Error saving zone.                |
+-----------------------------------+-----------------------------------+
| ``RayaNavZoneIsNotPolygon``       | The requested area is not a       |
|                                   | polygon.                          |
+-----------------------------------+-----------------------------------+
| ``RayaNavNotValidPointFound``     | There are no valid points to      |
|                                   | navigate to.                      |
+-----------------------------------+-----------------------------------+
| ``RayaUnableToFollowPath``        | An obstacle found, the path       |
|                                   | cannot be followed.               |
+-----------------------------------+-----------------------------------+
| ``RayaUnableToComputePath``       | No path to goal found.            |
+-----------------------------------+-----------------------------------+
| ``RayaNavNoDataFromMapTopic``     | Map information is not received.  |
+-----------------------------------+-----------------------------------+
| ``RayaNavUnableToChangeMap``      | Error changing map.               |
+-----------------------------------+-----------------------------------+
| ``RayaNavInvalidGoal``            | Invalid goal coordinate.          |
+-----------------------------------+-----------------------------------+
| ``RayaNavBadImageSize``           | The size of the new image is      |
|                                   | different from the original.      |
+-----------------------------------+-----------------------------------+
| ``RayaNavMappingDisabled``        | Mapping mode is disabled.         |
+-----------------------------------+-----------------------------------+
| ``RayaNavUnableToEnableCamera``   | Error enabling camera.            |
+-----------------------------------+-----------------------------------+
| ``RayaNavFileNotFound``           | The requested file was not found. |
+-----------------------------------+-----------------------------------+
| ``RayaNavWrongFileFormat``        | File with invalid format.         |
+-----------------------------------+-----------------------------------+
