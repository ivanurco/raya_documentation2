Enumerations
------------

STATUS_BATTERY
~~~~~~~~~~~~~~

Enumeration to indicate the status of the battery.

-  ``STATUS_BATTERY.UNKNOWN`` : Unknown status
-  ``STATUS_BATTERY.CHARGING`` : Charging battery
-  ``STATUS_BATTERY.DISCHARGING`` : Discharging battery
-  ``STATUS_BATTERY.NOT_CHARGING`` : Battery not charging
-  ``STATUS_BATTERY.FULL`` : Battery full
-  ``STATUS_BATTERY.NO_BATTERY`` : No battery
-  ``STATUS_BATTERY.LOW_BATTERY`` : Low battery
-  ``STATUS_BATTERY.CRITICAL_BATTERY`` : Critical battery

STATUS_BATTERY_HEALTH
~~~~~~~~~~~~~~~~~~~~~

Enumeration to indicate the health of the battery.

-  ``STATUS_BATTERY_HEALTH.UNKNOWN`` : Unknown status
-  ``STATUS_BATTERY_HEALTH.GOOD`` : Good battery
-  ``STATUS_BATTERY_HEALTH.OVERHEAT`` : Overheat battery
-  ``STATUS_BATTERY_HEALTH.DEAD`` : Dead battery
-  ``STATUS_BATTERY_HEALTH.OVERVOLTAGE`` : Overvoltage battery
-  ``STATUS_BATTERY_HEALTH.UNSPEC_FAILURE`` : Unspecified failure
   battery
-  ``STATUS_BATTERY_HEALTH.COLD`` : Cold battery
-  ``STATUS_BATTERY_HEALTH.WATCHDOG_TIMER_EXPIRE`` : Watchdog timer
   expire battery
-  ``STATUS_BATTERY_HEALTH.SAFETY_TIMER_EXPIRE`` : Safety timer expire
   battery

STATUS_BATTERY_TECHNOLOGY
~~~~~~~~~~~~~~~~~~~~~~~~~

Enumeration to indicate the technology of the battery.

-  ``STATUS_BATTERY_TECHNOLOGY.UNKNOWN`` : Unknown technology
-  ``STATUS_BATTERY_TECHNOLOGY.NIMH`` : Nickel Metal Hydride technology
-  ``STATUS_BATTERY_TECHNOLOGY.LION`` : Lithium Ion technology
-  ``STATUS_BATTERY_TECHNOLOGY.LIPO`` : Lithium Polymer technology
-  ``STATUS_BATTERY_TECHNOLOGY.LIFE`` : Lithium Iron Phosphate
   technology
-  ``STATUS_BATTERY_TECHNOLOGY.NICD`` : Nickel Cadmium technology
-  ``STATUS_BATTERY_TECHNOLOGY.LIMN`` : Lithium Manganese technology

STATUS_SERVER
~~~~~~~~~~~~~

Enumeration to indicate the server status.

-  ``STATUS_SERVER.NOT_AVAILABLE`` : Server not available
-  ``STATUS_SERVER.STOPPED`` : Server stopped
-  ``STATUS_SERVER.STARTING`` : Server starting
-  ``STATUS_SERVER.RUNNING`` : Server running
-  ``STATUS_SERVER.FAILED`` : Server failed

STATUS_ENGINE
~~~~~~~~~~~~~

Enumeration to indicate the engine status.

-  ``STATUS_ENGINE.NOT_AVAILABLE`` : Engine not available
-  ``STATUS_ENGINE.STOPPED`` : Engine stopped
-  ``STATUS_ENGINE.STARTING`` : Engine starting
-  ``STATUS_ENGINE.RUNNING`` : Engine running
-  ``STATUS_ENGINE.FAILED`` : Engine failed

STATUS_SERVER_ERROR
~~~~~~~~~~~~~~~~~~~

Enumeration to indicate the error code, when the server is not
available.

-  ``STATUS_SERVER_ERROR.OK`` : No error
-  ``STATUS_SERVER_ERROR.ERROR_UNKNOWN`` : Unknown error

STATUS_ENGINE_ERROR
~~~~~~~~~~~~~~~~~~~

Enumeration to indicate the error code, when the engine is not
available.

-  ``STATUS_ENGINE_ERROR.OK`` : No error
-  ``STATUS_ENGINE_ERROR.ERROR_UNKNOWN`` : Unknown error
