=========================
open_interacty()
=========================

.. raw:: html

    <hr/>

This function display in a window a content using a hash as a parameter

Reference
===========

.. figure:: /_static/open_interacty.png
   :align: center
   :width: 100%
   :height: 430px

`Explore more about this component
here <https://ur-ui-kit.web.app/?path=/docs/example-interacty--interacty>`__

Arguments
-----------

================== ========== ===================================== ================================================================ 
Arguments          Type       Default Value                                                                                          
================== ========== ===================================== ================================================================ 
hash               str        Hash argument to use on the component                                                                    
url                str                                              Url argument will affect the iframe of the component             
title              string                                           Title of the modal (mandatory)                                   
show_back_button   bool       False                                 Show a button to go back                                         
back_button_text   string     "Back"                                Text of the back button                                          
button_size        int        1                                     Button size (1 = SMALL, 2 = MEDIUM, 3 = LARGE)                   
languages          list       None                                  List of languages to be displayed on the screen (optional)       
chosen_language    str        None                                  If list given, string representing chosen language               
theme              enum       ``UI_THEME_TYPE.DARK``                Enum to define the theme of the screen, check ``UI_THEME_TYPE``  
custom_style       dict       None                                  Dictionary containing custom styles  for the modal (optional)    
wait               bool       True                                  Bool indicating to wait for user response (optional)             
callback           callable   None                                  Callable function to handle the response (optional)              
================== ========== ===================================== ================================================================ 

See the :ref:`complete list of enumerations <ui_enumerations>`.

Return
----------

Dictionary that contains the action performed by the user and the value
he entered. The action can be: canceled/confirmed/closed. 

Example:

``{"action": "back_pressed"}``

Exceptions
-----------

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
           response = await self.UI.openinteracty(
               hash="hjdxihmrmvzfg28z99t24a-p6o2-sog",
               title="Interacty Title"
           )
           self.log.info(response)
         ...
         
       async def finish(self):
         ...

   ...
