.. _general_exceptions:

===============================
General Exceptions
===============================

.. raw:: html

    <hr/>

General Exceptions
~~~~~~~~~~~~~~~~~~

Inherit from ``Exception``:

+-----------------------------------+-----------------------------------+
| Exception                         | Explanation                       |
+===================================+===================================+
| ``RayaAbortException``            | Ra-Ya App/Handler was aborted,    |
|                                   | due to a system signal or an      |
|                                   | error.                            |
+-----------------------------------+-----------------------------------+
| ``RayaNotStarted``                | Ra-Ya App/Handler couldn’t start. |
+-----------------------------------+-----------------------------------+
| ``RayaAppFinished``               | Ra-Ya App/Handler was finished.   |
+-----------------------------------+-----------------------------------+
| ``RayaAppAborted``                | Ra-Ya App aborted by the user     |
+-----------------------------------+-----------------------------------+

All the exceptions raised by Raya Python library inherits from from the
exception ``RayaException``.

Complete list of exceptions:

Commands Exceptions
~~~~~~~~~~~~~~~~~~~

Inherit from ``RayaCommandException``:

====================== ========================================
Exception              Explanation
====================== ========================================
``RayaCommandTimeout`` Command response timeout reached.
``RayaCommandFrozen``  Command cancel response timeout reached.
====================== ========================================

Application exceptions
~~~~~~~~~~~~~~~~~~~~~~

Inherit from ``RayaApplicationException``:

=======================================  ==========================================================================
Exception                                Explanation
=======================================  ==========================================================================
``RayaApplicationAlreadyRegistered``     Ra-Ya application is already registered.
``RayaApplicationNotRegistered``         Ra-Ya application is not registered.
``RayaAppsAdminException``               An exception occurred in the Ra-Ya apps admin.
``RayaUnknownServerError``               An unknown Ra-Ya server error occurred.
``RayaNotAvailableServer``               Ra-Ya server is not available.
``RayaNotServerPermissions``             Ra-Ya server does not have the required permissions.
``RayaCommandAlreadyRunning``            Command is already running or hasn’t been deregistered.
``RayaCommandNotRunning``                Command is not running.
``RayaCommandNotCancelable``             Command is not cancelable.
``RayaCommandCanceled``                  Command was canceled.
``RayaGoalNotAccepted``                  Goal was not accepted.
``RayaSignalNotImplemented``             Signal not implemented.
``RayaSimulatorError``                   An error occurred in the Ra-Ya simulator.
``RayaArgumentError``                    An error occurred with an argument.
``RayaRequiredArgumentError``            A required argument is missing.
``RayaArgumentNotExists``                Argument does not exist.
``RayaOutsideSetup``                     Command is outside of the setup.
``RayaCustomCommandNotAvailable``        Custom command is not available.
``RayaCustomMissingRequiredParameter``   Required parameter is missing for the custom command.
``RayaCustomErrorParsingParameter``      An error occurred while parsing the parameter for the custom command.
=======================================  ==========================================================================

Filesystem Exceptions
~~~~~~~~~~~~~~~~~~~~~

Inherit from ``RayaFileSystemException``:

+-----------------------------------+-----------------------------------+
| Exception                         | Explanation                       |
+===================================+===================================+
| ``RayaNotValidPath``              | Path not valid.                   |
+-----------------------------------+-----------------------------------+
| ``RayaNotDataPath``               | Path is not a data path.          |
+-----------------------------------+-----------------------------------+
| ``RayaFolderDoesNotExist``        | Folder does not exist.            |
+-----------------------------------+-----------------------------------+
| ``RayaFileDoesNotExist``          | File does not exist.              |
+-----------------------------------+-----------------------------------+
| ``RayaDownloadError``             | An error occurred while           |
|                                   | downloading the requested url     |
|                                   | file.                             |
+-----------------------------------+-----------------------------------+
| ``RayaWrongFileExtension``        | Wrong extension on file.          |
+-----------------------------------+-----------------------------------+

Skills Exceptions
~~~~~~~~~~~~~~~~~

Inherit from ``RayaSkillException``:

+---------------------------------+-----------------------------------+
| Exception                       | Explanation                       |
+=================================+===================================+
| ``RayaSkillWrongType``          | Skill argument wrong type.        |
+---------------------------------+-----------------------------------+
| ``RayaSkillMissingArgument``    | Required skill argument missing.  |
+---------------------------------+-----------------------------------+
| ``RayaSkillUnknownArgument``    | An unknown skill argument was     |
|                                 | passed.                           |
+---------------------------------+-----------------------------------+
| ``RayaSkillCreationError``      | An error occurred while creating  |
|                                 | the skill.                        |
+---------------------------------+-----------------------------------+
| ``RayaSkillRunError``           | An error occurred while running   |
|                                 | the skill.                        |
+---------------------------------+-----------------------------------+
| ``RayaSkillAlreadyInitialized`` | Skill already initialized.        |
+---------------------------------+-----------------------------------+
| ``RayaSkillNotInitialized``     | Skill not initialized.            |
+---------------------------------+-----------------------------------+
| ``RayaSkillAborted``            | Skill aborted.                    |
+---------------------------------+-----------------------------------+

Task Exceptions
~~~~~~~~~~~~~~~

Inherit from ``RayaTaskException``:

============================== ==================================
Exception                      Explanation
============================== ==================================
``RayaTaskAlreadyRunning``     Task already running.
``RayaTaskNotRunning``         Task not running.
``RayaTaskWrongFunction``      Task wrong function use.
``RayaTaskNotAvailableReturn`` Task does not have a return value.
============================== ==================================

Value Exceptions
~~~~~~~~~~~~~~~~

Inherit from ``RayaValueException``:

+-----------------------------------+-----------------------------------+
| Exception                         | Explanation                       |
+===================================+===================================+
| ``RayaInvalidNumericRange``       | Invalid numeric range: low value  |
|                                   | ir greater than high value, or    |
|                                   | one of the range limits is not a  |
|                                   | number.                           |
+-----------------------------------+-----------------------------------+
| ``RayaWrongArgument``             | Invalid argument.                 |
+-----------------------------------+-----------------------------------+

Controller Exceptions
~~~~~~~~~~~~~~~~~~~~~

Inherit from ``RayaControllerException``:

=============================== ==========================
Exception                       Explanation
=============================== ==========================
``RayaNotRecognizedController`` Controller not recognized.
``RayaNeedCallback``            A callback is needed.
=============================== ==========================

Listener Exceptions
~~~~~~~~~~~~~~~~~~~

Inherit from ``RayaListenerException``:

============================== ========================================
Exception                      Explanation
============================== ========================================
``RayaListenerAlreadyCreated`` Specified listener name already created.
``RayaListenerUnknown``        Listener unknown.
``RayaInvalidCallback``        Invalid Callback.
============================== ========================================

Sensors Exceptions
~~~~~~~~~~~~~~~~~~

Inherit from ``RayaSensorsException``:

+-----------------------------------+-----------------------------------+
| Exception                         | Explanation                       |
+===================================+===================================+
| ``RayaSensorsUnknownPath``        | Selected sensor path not          |
|                                   | recognized.                       |
+-----------------------------------+-----------------------------------+
| ``RayaSensorsIncompatiblePath``   | Selected sensor path incompatible |
|                                   | with current robot.               |
+-----------------------------------+-----------------------------------+
| ``RayaSensorsInvalidPath``        | Selected sensor path not valid    |
|                                   | for current method.               |
+-----------------------------------+-----------------------------------+
