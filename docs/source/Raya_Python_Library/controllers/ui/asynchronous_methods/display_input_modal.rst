===========================
display_input_modal()
===========================

.. raw:: html

    <hr/>


This function displays an input modal component.

The input modal component provides a dialog screen asking from the user
to enter some information. The component can be used for example to ask
the user ‘what is the robot name?’

Reference
============

.. figure:: /_static/modal_input.png
    :align: center
   

`Explore more about this component
here <https://ur-ui-kit.web.app/?path=/docs/example-input-modal--inputmodal>`__

Arguments
-----------

================== ========== ======================== ========================================================================== 
Arguments          Type       Default Value                                                                                      
================== ========== ======================== ========================================================================== 
title              string                              Title of the modal (mandatory)                                            
title_size         enum       ``UI_TITLE_SIZE.MEDIUM`` Size of the title                                                         
subtitle           string                              Subtitle of the modal (optional)                                          
submit_text        string     "Yes"                    Submit text button                                                        
cancel_text        string     "No"                     Cancel text button                                                        
placeholder        string                              Text that will appear in the input field before the user enter some data  
input_type         enum       ``UI_INPUT_TYPE.TEXT``   Enum to define the type of the input allowed, check ``UI_INPUT_TYPE``     
show_back_button   bool       False                    Show a button to go back                                                  
back_button_text   string     "Back"                   Text of the back button                                                   
button_size        int        1                        Button size (1 = SMALL, 2 = MEDIUM, 3 = LARGE)                            
languages          list       None                     List of languages to be displayed on the screen (optional)                
chosen_language    str        None                     If list given, string representing chosen language                        
theme              enum       ``UI_THEME_TYPE.DARK``   Enum to define the theme of the screen, check ``UI_THEME_TYPE``           
custom_style       dict       None                     Dictionary containing custom styles  for the modal (optional)             
wait               bool       True                     Bool indicating to wait for user response (optional)                      
callback           callable   None                     Callable function to handle the response (optional)                       
================== ========== ======================== ========================================================================== 

See the :ref:`complete list of enumerations <ui_enumerations>`.

Return
--------

Dictionary that contains the action performed by the user and the value
he entered. The action can be: canceled/confirmed/closed. 

Example:

``{"action": "confirmed", "value": "4"}``

Exceptions
------------

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
=========

.. code-block:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.UI = await self.enable_controller('ui')
           ....
           
       async def loop(self):
        ....
           response = await self.UI.display_input_modal(title="How many boxes?")
           self.log.info(response)
         ...
         
       async def finish(self):
         ...

   ...
   '''
   {"action": "confirmed", "value": "4"}
   '''
