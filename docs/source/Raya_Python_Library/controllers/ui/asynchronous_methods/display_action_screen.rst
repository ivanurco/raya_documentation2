===========================
display_action_screen()
===========================

.. raw:: html

    <hr/>

This function displays a call-to-action screen.

Call-to-action (CTA) component is used in your app to guide users
towards your goal conversion. It’s the perfect component when the user
needs to click in order to take the action you want them to take. Some
of the most popular usages for this component are ‘Welcome screen’ and
‘Confirmation screen’.

Reference
===========

.. figure:: /_static/display_action_screen.png
    :align: center
    :height: 580px
    :width: 100%
   

`Explore more about this component
here <https://ur-ui-kit.web.app/?path=/docs/example-call-to-action--calltoaction>`__

Arguments
------------

================== ========== ======================== ================================================================= 
Arguments          Type       Default Value                                                                             
================== ========== ======================== ================================================================= 
title              string                              Title of the screen (mandatory)                                  
title_size         enum       ``UI_TITLE_SIZE.MEDIUM`` Size of the title                                                
subtitle           string                              subtitle of the screen (optional)                                
button_text        string                              text of CTA button(mandatory)                                    
show_back_button   bool       False                    Show a button to go back                                         
back_button_text   string     "Back"                   Text of the back button                                          
button_size        int        1                        Button size (1 = SMALL, 2 = MEDIUM, 3 = LARGE)                   
languages          list       None                     list of languages available for selection on the screen          
chosen_language    any        None                     the language chosen for the screen (from languages list)         
theme              enum       ``UI_THEME_TYPE.DARK``   Enum to define the theme of the screen, check ``UI_THEME_TYPE``  
custom_style       dict       None                     Dictionary containing custom styles  for the modal (optional)    
wait               bool       True                     Bool indicating to wait for user response (optional)             
callback           callable   None                     Callable function to handle the response (optional)              
================== ========== ======================== ================================================================= 


See the :ref:`complete list of enumerations <ui_enumerations>`.

Return
-------

Dictionary that contains the action performed by the user. The first
key-value pair will be ‘action’ : ‘button_clicked’.

Exceptions
------------

-  ``RayaUIMissingValue``
-  ``RayaNeedCallback``

See the :ref:`complete list of ui exceptions <ui_exceptions>` and
the :ref:`complete list of general exceptions <general_exceptions>`.

Callback Arguments
---------------------

callback
^^^^^^^^

======== ==== ========================================
Argument Type Description
======== ==== ========================================
data     dict Dict containing the result of the action
======== ==== ========================================

Example
=========

.. code-block:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.UI = await self.enable_controller('ui')
           ....
           
       async def loop(self):
        ....
           response = await self.UI.display_action_screen(
               title="Hey there!", 
               subtitle="Good morning", 
               button_text="Let's start", 
               theme=THEME_TYPE.DARK
           )
           self.log.info(response)
         ...
         
       async def finish(self):
         ...

   ...
   """
   This shows:
   {'action': 'button clicked'}
   """
