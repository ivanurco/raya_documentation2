============================
navigate_to_location()
============================

.. raw:: html

    <hr/>

Navigate to a specific location.

Reference
==============

Arguments
------------

=================== ============== ============== ================================================================== 
Arguments           Type           Default value                                                                     
=================== ============== ============== ================================================================== 
location_name       ``str``                         Name of the location to navigate to.                              
callback_feedback   ``Callable``   ``None``         Callable function for feedback (optional).                        
callback_finish     ``Callable``   ``None``         Callable function for finish (optional).                          
wait                ``bool``       ``False``        Coolean indicating whether to wait for user response (optional).  
=================== ============== ============== ================================================================== 


Callback Arguments
--------------------

callback_feedback
^^^^^^^^^^^^^^^^^

+------------------+-----------+-------------------------------------+
| Argument         | Type      |                                     |
+==================+===========+=====================================+
| feedback_code    | ``int``   | Code for the type of feedback.      |
+------------------+-----------+-------------------------------------+
| feedback_msg     | ``str``   | Details regarding the feedback code |
|                  |           | (empty if no error).                |
+------------------+-----------+-------------------------------------+
| distance_to_goal | ``float`` | Distance to goal in meters.         |
+------------------+-----------+-------------------------------------+
| speed            | ``float`` | Robot current speed.                |
+------------------+-----------+-------------------------------------+

For a complete list of feedbacks see the :ref:`complete list of navigation
feedbacks <navigation_feedbacks>`.

callback_finish
^^^^^^^^^^^^^^^

========== =======
Argument   Type    
========== =======
error_code ``int`` 
error_msg  ``str`` 
========== =======

Return
-------------

``None``, unless there is callback.

Exceptions
-------------

-  ``RayaNavNotLocated``
-  ``RayaNavAlreadyNavigating``
-  ``RayaUnableToFollowPath``
-  ``RayaUnableToComputePath``
-  ``RayaNavUnkownError``

See the :ref:`complete list of navigation exceptions <navigation_exceptions>`.


Usage Example
================

Code:

.. code-block:: python

   ...
   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.navigation = await self.enable_controller('navigation')
           ...

       async def loop(self):
           ...
           await self.navigation.navigate_to_location(
                       location_name='kitchen',
                       callback_feedback=self.cb_nav_feedback, 
                       callback_finish=self.cb_nav_finish, 
                       wait=True
                   )
           ...

       async def finish(self):
          ...

See the `nav_to_location <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_to_location>`__,
`nav_all_unity_apartment <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/nav_all_unity_apartment>`__
to check some valid uses.