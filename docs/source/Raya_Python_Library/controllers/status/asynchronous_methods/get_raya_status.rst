=======================
get_raya_status()
=======================

.. raw:: html

    <hr/>


Get current raya status.

Reference
===========

Arguments
-----------

``None``

Return
---------

======== ===========================================================
Type     Description
======== ===========================================================
``dict`` Return returns a dictionary with the current state of Raya.
======== ===========================================================

Usage example
================

.. code:: python

   ...
   self.status = self.enable_controller('status')
   ...
   manipulation_status = await self.status.get_raya_status()
   self.log.info(manipulation_status)
   ...

Output:

.. code:: json

   {
      "all_running":false,
      "servers_status":{
         "arms":{
            "server_status":"<STATUS_SERVER.RUNNING":3>,
            "engine_status":"<STATUS_ENGINE.RUNNING":3>,
            "server_error":"<STATUS_SERVER_ERROR.OK":0>,
            "server_error_msg":"",
            "engine_error":"<STATUS_ENGINE_ERROR.OK":0>,
            "engine_error_msg":"",
            "robot_specific_info":""
         }
      }
   }
