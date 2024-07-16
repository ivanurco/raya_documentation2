================
UI
================

.. raw:: html
   
    <hr/>

    <div class="hidden-block">

.. toctree::
   :maxdepth: 2

   Asynchronous methods <asynchronous_methods/index>   
   Exceptions <exceptions>   
   Enumerations <enumerations>

.. raw:: html

   </div>


1. Overview
==============

In order for the user to communicate with the robotic device, most of
them will include an interactive screen or even a remote mobile App.

For example, Gary robot has a touch screen located in Gary’s upper body.

.. figure:: /_static/touch_screen_gary.png
   :height: 285px
   :width: 272px  
   :align: center
   :loading: lazy      
   :alt: Touch screen Gary


There are two ways to develop the UI:

1. Develop your own web application (using React.js for example), and
   use the communication controller for connecting the frontend design
   to the robotic device (or develop your own server).

|      

2. Using the UI controller: Our UI controller provides ready-to-use
   screens that allow any Python developer to display an amazing UI, by
   just calling a single method! Also the communication to handle user's
   feedbacks is included in this controller.

Let’s take a look at the following diagram:

.. figure:: /_static/flow_diagram.png
   :height: 450px
   :width: 90%  
   :align: center
   :loading: lazy      
   :alt: Touch screen Gary

#. On our python code, we are calling ``display_modal()`` function,
   passing relevant data like the title of the modal and confirmation
   button text. The application will wait for a response from the user.
#. The modal UI component is displayed on the chest system.
#. Once the user performs some action (closing the modal or pressing any
   of the buttons), the information is sent back to the python code.
#. We can read the action performed by the user and continue with the
   business logic.

2. Using the controller
=========================

Creating the controller in your app:

.. code-block:: python

      from raya.application_base import RayaApplicationBase

      class RayaApplication(RayaApplicationBase):
          async def setup(self):
              ...
              self.UI = self.enable_controller('ui')
              ...

   

.. raw:: html

   <div class="warning-box">

      <p class="title warning-box"> Important Note!! </p>

      <p class="text warning-box">

      In order to visualize the UI controller components, you need to
      open a browser <strong>before you run the app</strong> with the following
      address; <a href="https://chest-web.web.app/app/" class="custom-link"> https://chest-web.web.app/app/. </a>
      </p>

   </div>

| 

3. Examples & More info
==========================

-  `UI Controller general example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/ui_controller>`__
-  `UI Controller animation example <https://github.com/Unlimited-Robotics/pyraya_examples/tree/main/ui_controller_with_animation>`__

We extremely encourage you to visit our UI-KIT website. There you will
find all the relevant information for all the components and a lot of
examples.

.. raw:: html

    <p>
        <a href="https://ur-ui-kit.web.app/?path=/story/initial-introduction--page" target="_blank">
            <button class="create_app_button"> Visit UI Kit center </button>
        </a>
    </p>

   
