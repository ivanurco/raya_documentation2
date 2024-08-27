============
Simple FSM
============

.. raw:: html

    <hr/>


1. Overview
-----------

Finite States Machines (FSM from now on) allow you to easily control the
flow of an application. Ra-Ya Python library includes a module to easily
create FSMs.

The module embeds everything inside the ``FSM`` class, that can be
imported as:

.. code-block:: python

   from raya.tools.fsm import FSM

This document will use the pyRa-Ya example called ``fsm_simple`` to
explain the working of the module (example available
`here <https://github.com/Unlimited-Robotics/pyraya_examples/tree/devel/fsm_simple>`__).

2. FSM to implement
-------------------

Consider the FSM below

.. figure:: /_static/Simple_FSM.svg
   :alt: FSM Example.drawio
   :align: center

   
We want the application to start its logic from a specific location on
the map, so we create a state to get localized (``LOCALIZING``) and
another one to navigate to the desired starting point in the map
(``NAV_TO_HOME``). After that, the robot gets aware of receiving new
commands in the state ``IDLE``.

When the robot gets the ``IDLE`` state, shows a menu on the screen and
waits for commands from the user. There are four behaviors to perform
from this state:

2.1. High-temperature alarm
~~~~~~~~~~~~~~~~~~~~~~~~~~~

If during the ``IDLE`` state, the environment temperature increases
above a defined value, an alarm is shown on the screen and it’s not
possible to perform other actions (``HOT`` state).

When the temperature comes back to the normal range, a message is shown
on the screen for a while (``FRESH`` state), and then the robot gets the
``IDLE`` state again.

2.2. Take a photograph in the kitchen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If during the ``IDLE`` state, the **KITCHEN**
option is selected on the screen, the robot will navigate to the kitchen
(``NAV_TO_KITCHEN``), take a photograph and show it on the robot’s
screen for a while (``TAKE_PHOTO``, and navigate to the home location
again (``NAV_TO_HOME``).

2.3. Wave in the bedroom
~~~~~~~~~~~~~~~~~~~~~~~~

If during the ``IDLE`` state, the **BEDROOM** option is selected on the
screen, the robot will navigate to the bedroom (``NAV_TO_BEDROOM``),
wave with one of its arms (``WAVE``), and navigate to the home location
again (``NAV_TO_HOME``).

2.4. Look for some clothes
~~~~~~~~~~~~~~~~~~~~~~~~~~

If during the ``IDLE`` state, the **LAUNDRY** option is selected on the
screen, the robot will navigate to the laundry (``NAV_TO_LAUNDRY``),
“think about what to wear” (wait for a while) (``LOOK_FOR_PANTS``), and
navigate to the home location again (``NAV_TO_HOME``).

3. Implementation of the FSM
----------------------------

3.1. Files organization
~~~~~~~~~~~~~~~~~~~~~~~

For the use of the FSM module, it’s mandatory to follow the following
folders structure inside the application:

.. code-block:: bash

   <app_id>
   ├── ...
   ├── src
   │   ├── ...
   │   ├── FMSs
   │   │   ├── <fsm1_name>
   │   │   │   ├── __init__.py
   │   │   │   ├── actions.py
   │   │   │   ├── helpers.py
   │   │   │   ├── states.py
   │   │   │   └── trantitions.py
   │   │   ├── <fsm2_name>
   │   │   │   ├── __init__.py
   │   │   │   ├── actions.py
   │   │   │   ├── helpers.py
   │   │   │   ├── states.py
   │   │   │   └── trantitions.py
   │   │   └── ...
   │   ├── ...
   │   ├── app.py
   │   └── ...
   ├── __main__.py
   └── ...

There must be a folder called ``FSMs`` inside ``src``, and one folder
inside it for each FSM to implement in our application. The name of that
folder is the identifier of that FSM from the application.

Each FSM folder contains the files that describe the desired behavior:

-  ``__init__.py`` needed to recognize the folder as a Python module.
-  ``states.py``
-  ``actions.py``
-  ``trantitions.py``
-  ``helpers.py`` (optional)

For our example, we’re only going to implement one FSM called ``task1``,
so the folder would look like this:

.. code-block:: bash

   <app_id>
   ├── ...
   ├── src
   │   ├── ...
   │   ├── FMSs
   │   │   └── task1
   │   │       ├── __init__.py
   │   │       ├── actions.py
   │   │       ├── helpers.py
   │   │       ├── states.py
   │   │       └── trantitions.py
   │   ├── ...
   │   ├── app.py
   │   └── ...
   ├── __main__.py
   └── ...

3.2. States
~~~~~~~~~~~

The ``states.py`` file includes the description of the states that make
up the FSM. First, create the list ``STATES`` that includes the list of
states (represented as strings):

.. code-block:: python

   STATES = [
           'LOCALIZING',
           'NAV_TO_HOME',
           'IDLE',
           'HOT',
           'FRESH',
           'NAV_TO_KITCHEN',
           'TAKE_PHOTO',
           'NAV_TO_BEDROOM',
           'WAVE',
           'NAV_TO_LAUNDRY',
           'LOOK_FOR_PANTS',
           'END',
       ]

Now, define the initial state:

.. code-block:: python

   INITIAL_STATE = 'LOCALIZING'

If you don’t define the ``INITIAL_STATE`` variable, the initial state
will be the first element in the ``STATES`` list.

An FSM can have multiple end states, so you must define the
``END_STATES`` list as:

.. code-block:: python

   END_STATES = [
       'END',
   ]

In addition, you can set timeout to states. That implies that if the FSM
keeps for more than a specific period of time in the same state, it’ll
finish with a specific error.

In this case, we’lll define a timeout of 10 seconds for the
``LOCALIZING`` state. If it takes more than 10 seconds to localize, the
FSM will finish with error. To define states timeouts, add this to the
``states.py`` file:

.. code-block:: python

   STATES_TIMEOUTS = {
       'LOCALIZING' : (10.0, APPERR_COULD_NOT_LOCALIZE),
   }

It’s not mandatory to define the variable ``STATES_TIMEOUTS``.

The ``APPERR_COULD_NOT_LOCALIZE`` is a constant defined in the file
``src/static/app_errors.py`` like:

.. code-block:: python

   APPERR_COULD_NOT_LOCALIZE = (1, 'Robot could not get localized')

3.3. Actions
~~~~~~~~~~~~

The actions are the commands or tasks to perform during the different
stages of the FSM.

The file ``actions.py`` must have at least the following content:

.. code-block:: python

   from raya.tools.fsm import BaseActions

   from src.app import RayaApplication

   class Actions(BaseActions):

       def __init__(self, app: RayaApplication, helpers: Helpers):
           self.app = app
           self.helpers = helpers

The ``Actions`` class includes all the actions as methods. There are
three types of actions:

-  **Transition from STATE:**
   It’s executed when the FSM leaves a state, regardless of which state
   it goes to. Method name format: ``leave_STATE(self):``
-  **Transition to STATE:**
   It’s executed when the FSM gets a specific state, regardless of which
   state it comes from. Method name format: ``enter_STATE(self):``
-  **Transition from STATE1 to STATE2:**
   It’s executed when the FSM leaves a specific state 1 to go to another
   specific state 2. Method name format: ``SATE1_to_STATE2(self):``

Each transition must be implemented as an ASYNC method in the ``Action``
class.

For example, consider that getting into the state ``LOCALIZING`` implies
showing a message on the screen that indicates the robot is localizing,
and setting the map to start the localization process. So that action
can be implemented by adding the method below to the ``Actions`` class:

.. code-block:: python

    async def enter_LOCALIZING(self):
           await self.app.ui.display_screen(**UI_SCREEN_LOCALIZING)
           await self.app.nav.set_map(NAV_MAP_NAME)

As you can see, you can directly access the app using the ``self.app``
variable.

It’s important to remark that the methods and functions called inside
the actions must be **NOT BLOCKING**. The FSM must always keep free to
continue executing.

You can see other action implementations in the file
``src/FSMs/task1/actions.py`` file in the ``fsm_simple`` pyRa-Ya
example.

3.4. Transitions
~~~~~~~~~~~~~~~~

The ``transitions.py`` describes the flow of the FSM, and how to move
through the states.

This file must have at least the following content:

.. code-block:: python

   from raya.tools.fsm import BaseTransitions

   from src.app import RayaApplication

   class Transitions(BaseTransitions):

       def __init__(self, app: RayaApplication, helpers: Helpers):
           super().__init__()
           self.app = app
           self.helpers = helpers

All the states MUST have their transition ASYNC method in the
``Transition`` class. The name of the method is the same name as the
state.

The transition methods are basically if…else statements that control
which state to go to depending on the conditions. For example, when the
FSM is in the state ``LOCALIZING``, we know that we previously stated
the localization process (in the ``enter_LOCALIZING`` action), so now we
can evaluate if it’s already localized. If yes, just change the state
using the ``self.set_state`` method.

.. code-block:: python

       async def LOCALIZING(self):
           if await self.app.nav.is_localized():
               self.set_state('NAV_TO_HOME')

As you can see, you can directly access the app using the ``self.app``
variable.

You can see other transition implementations in the file
``src/FSMs/task1/transitions.py`` file in the ``fsm_simple`` pyRa-Ya
example.

If the FSM keeps in a specific state, its transition method will be
periodically called each time the FSM is ticked (discussed later).

3.5. Helpers
~~~~~~~~~~~~

The ``actions.py`` and ``transitions.py`` must be as clean as possible,
to make them clear, readable, and easy to compare with the FSM graph.
The ``helpers.py`` file includes the functions, methods or other stuff
that can be called from an action or transition, and can take too much
lines of code.

The ``helper.py`` file must have at least the following content:

.. code-block:: python

   from raya.exceptions import *

   from src.app import RayaApplication

   class Helpers:

       def __init__(self, app: RayaApplication):        
           self.app = app

Consider the waving with the arm when entering the state ``WAVE``. It
implies two movements, so instead of creating two states, we can just
put both commands in a helper method like:

.. code-block:: python

   # Helpers class

       async def arm_wave(self):
           await self.app.arms.execute_joint_values_array(
                   **ARMS_WAVE_SEQUENCE, 
                   wait=True
               )
           await self.app.arms.set_predefined_pose(
                   arm=ARMS_WAVE_ARM,
                   predefined_pose='home', 
                   wait=True
               )

As you can see, you can directly access the app using the ``self.app``
variable.

Then, in the ``enter_WAVE`` action, just create a task:

.. code-block:: python

   # Actions class

    async def enter_WAVE(self):
           await self.app.ui.display_screen(**UI_SCREEN_WAVING)
           self.app.create_task(
                   name='WAVE', 
                   afunc=self.helpers.arm_wave,
               )

And in the ``WAVE`` transition, just evaluate if the task finished:

.. code-block:: python

   # Transitions class

       async def WAVE(self):
           if self.app.is_task_done('WAVE'):
               self.set_state('NAV_TO_HOME')

3.6. Errors
~~~~~~~~~~~

In any of the ``Transitions``\ ’ methods (``transitions.py`` file), you
can call the ``self.abort(code, msg)`` method. That method stops the FSM
execution and set a tuple of error code and error message to be notified
to the FSM caller.

Consider the transition method of the state ``NAV_TO_BEDROOM`` in the
example:

.. code-block:: python

   # File transitions.py
   # Class Transitions

    async def NAV_TO_BEDROOM(self):
         if not self.app.nav.is_navigating():
             nav_error = self.app.nav.get_last_navigation_error()
             if nav_error[0] == 0:
                 self.set_state('WAVE')
             else:
                 self.abort(*APPERR_COULD_NOT_NAV_TO_HOME)

If the navigation goes wrong, the FSM is aborted and the error code and
message contained in ``APPERR_COULD_NOT_NAV_TO_HOME`` is set.

In the ``Actions`` class (``actions.py`` file) you can define the async
method ``aborted`` to execute a specific task when the FSM is aborted.
In our example, the error is shown in the robot’s screen and the error
sound is played:

.. code-block:: python

   # File actions.py
   # Class Actions

     async def aborted(self, error, msg):
           await self.app.ui.display_screen(
                   **UI_SCREEN_FAILED,
                   subtitle=f'ERROR {error}: {msg}'
               )
           await self.app.sound.play_sound(name='error')

4. FSM Class
------------

In your application, you can create the FSM object like:

.. code-block:: python

   self.fsm_task1 = FSM(app=self, name='task1')

It’ll take the name ``task1`` as the identifier, and it’ll look inside
the ``src/FSMs/task1`` folder to create the FSM.

You can create the FSM objects in any section of the ``app.py`` file,
and even in other modules of the application.

4.1. Tick
~~~~~~~~~

Each time the FSM is ticked, these steps are internally performed:

-  Check if the current status reached timeout
-  Execute the current status transition method
-  Execute the corresponding actions, based on the previous and new
   state

The faster the FSM is ticked, the faster the states will change, but the
more resources you use. A good tick period is 100ms (10 times a second).

4.2. Execution FSM
~~~~~~~~~~~~~~~~~~

You can manually tick the FSM like:

.. code-block:: python

   while await self.fsm_task1.tick():
       self.sleep(0.1) # Async sleep

The ``FSM.tick()`` method will return ``False`` when the FSM execution
finishes.

However, manually ticking is not recommended, instead, you should use
one of the async methods ``run_and_await`` (awaits until the execution
finishes) or ``run_in_background`` (runs the FSM in an async task in the
background).

You can then create the FSM and immediately execute in the background,
wait for its execution, and then check it final status:

.. code-block:: python

   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           ...
           # FSMs
           self.fsm_task1 = FSM(app=self, name='task1', log_transitions=True)
           self.fsm_task1.run_in_background()

       async def loop(self):
           # Do other non blocking stuff...
           await self.sleep(1.0)
           # Check if the FSM has finished
           if self.fsm_task1.has_finished():
               self.finish_app()

       async def finish(self):
           # Has the FSM finished without error?
           if self.fsm_task1.was_successfull():
               self.log.info('App correctly finished')
           else:
               # fsm_error[0]: error code, fsm_error[1]: error message
               fsm_error_code, fsm_error_msg = self.fsm_task1.get_error()
               self.log.error(
                   f'App finished with error [{fsm_error_code}]: {fsm_error_msg}'
               )

Check the example ``fsm_simple`` for full implementation.

5. Others
---------

5.1. Sending arguments to the FSM execution
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you’re using ``run_and_await`` or ``run_in_background``, you can send
the arguments you want, like:

.. code-block:: python

   self.fsm_important_task.run_in_background(temperature=34.2, person_id='martin')

If you’re manually ticking the FSM (not recommended), you can set the
arguments just before start ticking:

.. code-block:: python

   self.fsm_important_task.set_args(temperature=34.2, person_id='martin')
   while await self.fsm_important_task.tick():
       self.sleep(0.1) # Async sleepg

Inside the ``Actions``, ``Transitions`` or ``Helper`` classes, you can
get those arguments just using the ``args`` attribute:

.. code-block:: python

   # Actions, Transitions or Helpers class

       def any_method(self):
       self.args.temperature
       self.args.person_id

Optionally, you can add a ``arguments.py`` file inside the FSM folder
with the following structure:

.. code-block:: python

   OPTIONAL_ARGS = {
           'temperature': 34.2,
           'person_id': 'martin',
       }

   REQUIRED_ARGS = [
           'predictor'
       ]

pyRa-Ya automatically detects that file and sets the arguments in
``OPTIONAL_ARGS`` with their default values if they’re not defined when
running the FSM.

In addition, it throws the exception ``RayaFSMMissingRequiredArgument``
if one of the arguments in ``REQUIRED_ARGS`` is not defined when running
the FSM.
