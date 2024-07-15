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
---------

.. figure:: https://cdn.document360.io/6129992e-c4ec-4e12-9225-4d2877a6cbe7/Images/Documentation/Screenshot%202023-06-20%20at%201.23.45%20PM.png
   :alt: Screenshot 2023-06-20 at 1.23.45 PM.png

   Screenshot 2023-06-20 at 1.23.45 PM.png

`Explore more about this component
here <https://ur-ui-kit.web.app/?path=/docs/example-interactive-map--interactivemap>`__

Arguments
~~~~~~~~~

+-----------------+-----------------+-----------------+-----------------+
| Arguments       | Type            | Default Value   | Description     |
+=================+=================+=================+=================+
| title           | string          |                 | Title of the    |
|                 |                 |                 | display         |
|                 |                 |                 | (mandatory)     |
+-----------------+-----------------+-----------------+-----------------+
| title_size      | enum            | ``UI_TITL       | Size of the     |
|                 |                 | E_SIZE.MEDIUM`` | title           |
+-----------------+-----------------+-----------------+-----------------+
| subtitle        | string          | None            | subtitle of the |
|                 |                 |                 | display         |
|                 |                 |                 | (optional)      |
+-----------------+-----------------+-----------------+-----------------+
| map_name        | str             | None            | name of map to  |
|                 |                 |                 | fetch           |
+-----------------+-----------------+-----------------+-----------------+
| show            | bool            | False           | Show the        |
| _robot_position |                 |                 | current robot   |
|                 |                 |                 | position        |
+-----------------+-----------------+-----------------+-----------------+
| view_only       | bool            | False           | The navigate to |
|                 |                 |                 | point modal is  |
|                 |                 |                 | disable         |
+-----------------+-----------------+-----------------+-----------------+
| s               | bool            | False           | Show a button   |
| how_back_button |                 |                 | to go back      |
+-----------------+-----------------+-----------------+-----------------+
| b               | string          | “Back”          | Text of the     |
| ack_button_text |                 |                 | back button     |
+-----------------+-----------------+-----------------+-----------------+
| button_size     | int             | 1               | Button size (1  |
|                 |                 |                 | = SMALL, 2 =    |
|                 |                 |                 | MEDIUM, 3 =     |
|                 |                 |                 | LARGE)          |
+-----------------+-----------------+-----------------+-----------------+
| languages       | list            | None            | a list of       |
|                 |                 |                 | languages to be |
|                 |                 |                 | displayed on    |
|                 |                 |                 | the screen      |
|                 |                 |                 | (optional)      |
+-----------------+-----------------+-----------------+-----------------+
| chosen_language | Any (str)       | None            | if language     |
|                 |                 |                 | list given, a   |
|                 |                 |                 | value           |
|                 |                 |                 | representing    |
|                 |                 |                 | the chosen      |
|                 |                 |                 | language        |
+-----------------+-----------------+-----------------+-----------------+
| theme           | enum            | ``UI_TH         | Enum to define  |
|                 |                 | EME_TYPE.DARK`` | the theme of    |
|                 |                 |                 | the screen,     |
|                 |                 |                 | check           |
|                 |                 |                 | ``              |
|                 |                 |                 | UI_THEME_TYPE`` |
+-----------------+-----------------+-----------------+-----------------+
| custom_style    | dict            | None            | Dictionary      |
|                 |                 |                 | containing      |
|                 |                 |                 | custom styles   |
|                 |                 |                 | for the modal   |
|                 |                 |                 | (optional)      |
+-----------------+-----------------+-----------------+-----------------+
| wait            | bool            | True            | boolean         |
|                 |                 |                 | indicating to   |
|                 |                 |                 | wait for user   |
|                 |                 |                 | response        |
|                 |                 |                 | (optional)      |
+-----------------+-----------------+-----------------+-----------------+
| callback        | callable        | None            | callable        |
|                 |                 |                 | function        |
|                 |                 |                 | handling        |
|                 |                 |                 | response        |
|                 |                 |                 | (optional)      |
+-----------------+-----------------+-----------------+-----------------+

See the `complete list of general
enumerations </v2/docs/ui-enumerations>`__.

Return
~~~~~~

Dictionary that contains the action performed by the user. For
interactive map, the second entry contains the coordinates of where the
user selected.

Example:
``{'action': 'navigate', 'coordinates': {'x': 662, 'y': 167}, 'app_id': 'APP ID’}``
or
``{'selected_option': {'id': 2, 'name': 'Red'}, 'action': 'item_selected', 'app_id': 'doctest'}``

Exceptions
~~~~~~~~~~

-  ``RayaUIMissingValue``
-  ``RayaNeedCallback``

See the `complete list of ui exceptions </v2/docs/ui-exceptions>`__ and
the `complete list of general exceptions </v2/docs/raya-exceptions>`__.

Callback Arguments
~~~~~~~~~~~~~~~~~~

callback
^^^^^^^^

======== ==== ========================================
Argument Type Description
======== ==== ========================================
data     dict Dict containing the result of the action
======== ==== ========================================

Example
-------

.. figure:: https://cdn.document360.io/6129992e-c4ec-4e12-9225-4d2877a6cbe7/Images/Documentation/Screenshot%202023-06-20%20at%201.23.45%20PM.png
   :alt: Screenshot 2023-06-20 at 1.23.45 PM.png

   Screenshot 2023-06-20 at 1.23.45 PM.png

.. code:: python

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
