============================
display_interactive_map()
============================

.. raw:: html

    <hr/>

This function displays an interactive map component.

Interactive map components display the map area of the robot and the
current location of the robot, typically used when the robot performs a
navigation task

For the example below, an informative title(s) on the top is being used
to display information about the map. A map of an apartment is shown
below, where the user might desire the robot to navigate around. The
component can fetch a map, display robot location, and handle user-map
interactions.

Reference
===========

.. figure:: /_static/display_interactive_map_1.png
    :align: center
    :width: 100%
    :height: 420px
       


`Explore more about this component
here <https://ur-ui-kit.web.app/?path=/docs/example-interactive-map--interactivemap>`__

Arguments
----------

===================== =========== ========================== ================================================================== 
Arguments             Type        Default Value              Description                                                       
===================== =========== ========================== ================================================================== 
title                 string                                 Title of the display (mandatory)                                  
title_size            enum        ``UI_TITLE_SIZE.MEDIUM``   Size of the title                                                 
subtitle              string      None                       subtitle of the display (optional)                                
map_name              str         None                       name of map to fetch                                              
show_robot_position   bool        False                      Show the current robot position                                   
view_only             bool        False                      The navigate to point modal is disable                            
show_back_button      bool        False                      Show a button to go back                                          
back_button_text      string      "Back"                     Text of the back button                                           
button_size           int         1                          Button size (1 = SMALL, 2 = MEDIUM, 3 = LARGE)                    
languages             list        None                       a list of languages to be displayed on the screen (optional)      
chosen_language       Any (str)   None                       if language list given, a value representing the chosen language  
theme                 enum        ``UI_THEME_TYPE.DARK``     Enum to define the theme of the screen, check ``UI_THEME_TYPE``   
custom_style          dict        None                       Dictionary containing custom styles  for the modal (optional)     
wait                  bool        True                       boolean indicating to wait for user response (optional)           
callback              callable    None                       callable function handling response (optional)                    
===================== =========== ========================== ================================================================== 


See the :ref:`complete list of general enumerations <ui_enumerations>`.

Return
--------

Dictionary that contains the action performed by the user. For
interactive map, the second entry contains the coordinates of where the
user selected.

Example:

.. code-block:: json

    {"action": "navigate", "coordinates": {"x": 662, "y": 167}, "app_id": "APP ID"}

or

.. code-block:: json

    {"selected_option": {"id": 2, "name": "Red"}, "action": "item_selected", "app_id": "doctest"}

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
==========

.. figure:: /_static/display_interactive_map_2.png
   :align: center
   :width: 100%
   :height: 420px


.. code-block:: python

   ...

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.UI = await self.enable_controller('ui')
           ....
           
       async def loop(self):
        ....
           response = await self.UI.display_interactive_map(
                  title = "Title goes here!",
                  subtitle =  "Here we can write a nice subtitle explaining a bit more",
                  map_name =  "unity_apartment",
                  show_robot_position = True,
                  view_only = False,
                  show_back_button = True
          )
          self.log.info(response)
         ...
         
       async def finish(self):
         ...

   ...
   """
   This shows:
   {'action': 'navigate', 'coordinates': {'x': 662, 'y': 167}, 'app_id': 'APP ID’}  when the corresponding coordinate is clicked.
   """
