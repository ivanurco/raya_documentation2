=================================
display_animation()
=================================

.. raw:: html

    <hr/>

This function displays an animation component.

The animation component provides an animated screen and is used to
display information about some process/flow, without asking feedback
from the user. The component can be used for example to provide a
loading screen, display a visual of the robot performing or about to
perform a task.

Reference
---------

.. figure:: /_static/display_animation.png
   :align: center
   :width: 100%
   :height: 430px   

`Explore more about this component
here <https://ur-ui-kit.web.app/?path=/docs/example-animation--animation>`__

Arguments
-----------

================== ======== ======================== ==================================================================================================================================================== 
Arguments          Type     Default Value            Description                                                                                                                                         
================== ======== ======================== ==================================================================================================================================================== 
title              string                            Title of the modal (mandatory)                                                                                                                      
title_size         enum     ``UI_TITLE_SIZE.MEDIUM`` Size of the title                                                                                                                                   
subtitle           string                            Subtitle of the modal (optional)                                                                                                                    
content            Any      None                     Data based on chosen format type. If 'LOTTIE', fill with JSON data, if GIF, JPEG, or PNG, fill with base64 string. If 'URL', fill with URL string.  
format             enum     None                     Indicates the format of the content, check ``UI_ANIMATION_TYPE``                                                                                    
show_loader        bool     False                    show loader on screen                                                                                                                               
show_back_button   bool     False                    Show a button to go back                                                                                                                            
back_button_text   string   "Back"                   Text of the back button                                                                                                                             
button_size        int      1                        Button size (1 = SMALL, 2 = MEDIUM, 3 = LARGE)                                                                                                      
languages          list     None                     List of languages to be displayed on the screen (optional)                                                                                          
chosen_language    str      None                     If list given, string representing chosen language                                                                                                  
theme              enum     ``UI_THEME_TYPE.DARK``   Enum to define the theme of the screen, check ``UI_THEME_TYPE``                                                                                     
custom_style       dict     None                     Dictionary containing custom styles  for the modal (optional)                                                                                       
================== ======== ======================== ==================================================================================================================================================== 


Return
--------

``None``

Exceptions
-------------

-  ``RayaUIMissingValue``
-  ``RayaUIInvalidValue``

See the :ref:`complete list of ui exceptions <ui_exceptions>` and
the :ref:`complete list of general exceptions <general_exceptions>`.

Example
========

How to load and display a lottie file. Note: need to have a valid lottie
file in arrow1.json.

.. code-block:: python

   ...

   IMAGE_ARROW_PATH = 'res:arrow1.json'

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.UI = await self.enable_controller('ui')
           ....
           
       async def loop(self):
        ....
           arrow_anim = json.load(open_file(IMAGE_ARROW_PATH))

           await self.UI.display_animation(
               title = 'Go there',
               subtitle='This is a Lottie file',
               content = arrow_anim, 
               format= UI_ANIMATION_TYPE.LOTTIE
           )
         ...
         
       async def finish(self):
         ...

   ...
