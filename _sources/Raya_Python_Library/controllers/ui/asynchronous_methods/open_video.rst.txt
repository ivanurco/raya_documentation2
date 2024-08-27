============================
open_video()
============================

.. raw:: html

    <hr/>

This function creates a component that is used to display iframe with
title.

The video component provides a window that will play url of a video, it
allows the user to play, pause or skip the video.

Reference
===========

.. figure:: /_static/open_video.png
   :align: center
   :width: 100%
   :height: 430px

`Explore more about this component
here <https://ur-ui-kit.web.app/?path=/docs/example-open-video--open-video>`__

Arguments
----------

====================== =========== ========================== ================================================================= 
Arguments              Type        Default Value              Description                                                      
====================== =========== ========================== ================================================================= 
url                    Any (str)                              provided valid URL, usually in string format (mandatory)         
close_after_finished   bool        False                      Sends an action when the video is finished                       
title                  string                                 Title of the screen (mandatory)                                  
title_size             enum        ``UI_TITLE_SIZE.MEDIUM``   Size of the title                                                
show_back_button       bool        False                      Show a button to go back                                         
back_button_text       string      "Back"                     Text of the back button                                          
button_size            int         1                          Button size (1 = SMALL, 2 = MEDIUM, 3 = LARGE)                   
width                  str         '85%'                      Relative width of the video window                               
height                 str         '75%'                      Relative height of the video window                              
languages              list        None                       List of languages to be displayed on the screen (optional)       
chosen_language        str         None                       If list given, string representing chosen language               
theme                  enum        ``UI_THEME_TYPE.DARK``     Enum to define the theme of the screen, check ``UI_THEME_TYPE``  
custom_style           dict        None                       Dictionary containing custom styles  for the modal (optional)    
wait                   bool        True                       Bool indicating to wait for user response (optional)             
callback               callable    None                       Callable function to handle the response (optional)              
====================== =========== ========================== ================================================================= 

See the :ref:`complete list of enumerations <ui_enumerations>`.


Return
----------

Dictionary that contains the action performed by the component or the
user.

Example: 

``{'action': 'video_ended', 'app_id': 'doctest'}``

Exception
----------

-  ``RayaUIMissingValue``
-  ``RayaNeedCallback``

See the :ref:`complete list of ui exceptions <ui_exceptions>` and
the :ref:`complete list of general exceptions <general_exceptions>`.

Callback Arguments
--------------------

callback
^^^^^^^^

======== ==== ========================================
Argument Type Description
======== ==== ========================================
data     dict Dict containing the result of the action
======== ==== ========================================

Example
========

.. code-block:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.UI = await self.enable_controller('ui')
           ....
           
       async def loop(self):
        ....
           await self.UI.open_link(
               title="Video Title", 
               url = "https://www.youtube.com/watch?v=OFY-_saNaqs"
           )
         ...
         
       async def finish(self):
         ...

   ...
