=============================
open_link()
=============================

.. raw:: html

    <hr/>

This function creates a component that is used to display iframe with
title.

The open link component provides a window of an internet url(appears as
it would on a search engine) by taking it as an argument. It provides a
title to display information about the url. Users are able to interact
with the url and view animations as they would be able to on a browser.

Reference
===========

.. figure:: /_static/open_link.png
   :align: center
   :width: 100%
   :height: 600px

`Explore more about this component
here <https://ur-ui-kit.web.app/?path=/docs/example-open-link--open-link>`__

Arguments
----------

================== =========== ========================== ================================================================= 
Arguments          Type        Default Value              Description                                                      
================== =========== ========================== ================================================================= 
url                Any (str)                              provided valid URL, usually in string format (mandatory)         
title              string                                 Title of the screen (mandatory)                                  
title_size         enum        ``UI_TITLE_SIZE.MEDIUM``   Size of the title                                                
show_back_button   bool        False                      Show a button to go back                                         
back_button_text   string      "Back"                     Text of the back button                                          
button_size        int         1                          Button size (1 = SMALL, 2 = MEDIUM, 3 = LARGE)                   
languages          list        None                       List of languages to be displayed on the screen (optional)       
chosen_language    str         None                       If list given, string representing chosen language               
theme              enum        ``UI_THEME_TYPE.DARK``     Enum to define the theme of the screen, check ``UI_THEME_TYPE``  
custom_style       dict        None                       Dictionary containing custom styles  for the modal (optional)    
wait               bool        True                       Bool indicating to wait for user response (optional)             
callback           callable    None                       Callable function to handle the response (optional)              
================== =========== ========================== ================================================================= 


See the :ref:`complete list of enumerations <ui_enumerations>`.

Return
-------

Dictionary that contains the action performed by the user 

Example:

``{'action': 'back_pressed', 'app_id': 'doctest'}``

Exception
-----------

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
==========

.. code-block:: python

   ...


   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.UI = await self.enable_controller('ui')
           ....
           
       async def loop(self):
        ....
           await self.UI.open_link(
               title="Open Link title", 
               url = "https://www.unlimited-robotics.com/"
           )
         ...
         
       async def finish(self):
         ...

   ...
