================
Comunication
================

.. raw:: html

   <hr/>

.. raw:: html

   <div class="hidden-block">

.. toctree::
   :maxdepth: 2

   Synchronous methods <synchronous_methods/index>   
   Asynchronous methods <asynchronous_methods/index>
   Exceptions <exceptions>

.. raw:: html

   </div>


1. Overview
==============

Communication controllers allows sharing data between a Python
application running on the robot (‘server code’), and an external
application that uses the `RESTful API <https://unlimited-robotics.com>`__
(‘client code’).

Let’s imagine an application where you show a screen asking from the
user to choose which object the robot should pick. Once the user makes a
choice, you need to send that data to the Python app, that is in charge
of looking for that object, sending the robot to the position of that
object and picking it. Of course that you can create a local server and
handle the entire communication. But it can be much faster and easy with
this controller.

Let’s examine the following diagram:

.. figure:: /_static/communication_controller_overview.png
   :height: 492px
   :width: 671px  
   :align: center
   :loading: lazy      
   :alt: Communication Controller Overview   

1. On our server code we are creating a listener that will be triggered
   when client side will send a message.
2. On the client side, after the user selects an object, we are sending
   a message with the relevant data using our Restful API endpoint.
3. This listener on our server code is being triggered, we read the data
   and get the selected object and continue with the business logic of
   the application.

This flow works also when we want to send a message from the server code
to the client code. In that case, we will create a listener on our
client code, and send a message from the server code using send_msg()
function.

.. raw:: html

   <div class="warning-box">
      <p class="title warning-box"> value of app_id </p>
      <p class="text warning-box">
         When you use the API to send/receive
         messages, you need to send the app_id. The value appears on file
         <code class="custom-code">exec_settings.json</code> in your Python app directory.
      </p>
   </div>

2. Using the controller
==========================

Creating the controller in your app:

.. code:: python

   from raya.application_base import RayaApplicationBase

   class RayaApplication(RayaApplicationBase):
       async def setup(self):
           ...
           self.comm = self.enable_controller('communication')
           ...

The controller class includes two methods to communicate:

-  :doc:`mqtt_publish_message()<./asynchronous_methods/mqtt_publish_message>`
-  :doc:`mqtt_create_subscription() <./asynchronous_methods/mqtt_create_subscription>`
-  :doc:`mqtt_remove_subscription() <./synchronous_methods/mqtt_remove_subscription>`

3. Examples
===============

-  `Communication to
   Server <https://github.com/Unlimited-Robotics/pyraya_examples/blob/main/communication_server/src/app.py>`__
-  `Communication to
   Client <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/communication_client>`__
