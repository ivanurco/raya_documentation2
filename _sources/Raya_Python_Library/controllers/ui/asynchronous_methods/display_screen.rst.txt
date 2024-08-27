=================
display_screen()
=================

.. raw:: html

    <hr/>


This method shows an informative screen.

An informative screen is being used to display information about some
process/flow, without asking for feedback from the user. This component
is typically used while the program is loading, the robot is performing
a task or about to perform a task

Reference
===========

.. figure:: /_static/display_screen.png
    :align: center
    :width: 90%
    :height: 583px
      
`Explore more about this component
here <https://ur-ui-kit.web.app/?path=/docs/example-display-screen--displayscreen>`__

Arguments
------------

================== ========= ======================== ================================================================= 
Arguments          Type      Default Value                                                                             
================== ========= ======================== ================================================================= 
title              string                             Title of the screen (mandatory)                                  
title_size         enum      ``UI_TITLE_SIZE.MEDIUM``   Size of the title                                                
subtitle           string                             Subtitle of the screen (optional)                                
show_loader        boolean   ``False``                If ``True``, a loader is displayed in the center of the screen   
show_back_button   bool      False                    Show a button to go back                                         
back_button_text   string    "Back"                   Text of the back button                                          
button_size        int       1                        Button size (1 = SMALL, 2 = MEDIUM, 3 = LARGE)                   
languages          list      None                     List of languages to be displayed on the screen (optional)       
chosen_language    any       None                     the language chosen for the screen (from languages list)         
theme              enum      ``UI_THEME_TYPE.DARK``   Enum to define the theme of the screen, check ``UI_THEME_TYPE``  
custom_style       dict      None                     Dictionary containing custom styles for the screen               
================== ========= ======================== ================================================================= 


See the :ref:`complete list of numerations <ui_enumerations>`.

Return
---------

``None``

Exceptions
------------

-  ``RayaUIMissingValue``

See the :ref:`complete list of ui exceptions <ui_exceptions>` and
the :ref:`complete list of general exceptions <general_exceptions>`.

Example
==========

.. code-block:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.UI = await self.enable_controller('ui')
           ....
           
       async def loop(self):
        ....
           await self.UI.display_screen(
               title="Navigating to kitchen", 
               subtitle="will be there soon", 
               show_loader=True
           )
         ...
         
       async def finish(self):
         ...

   ...
