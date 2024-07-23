===============
Multiple FSM
===============

.. raw:: html

    <hr/>

Finite States Machine Module - Multiple
=======================================

1. Overview
-----------

The pyRa-Ya FSM module allows to create independent FSM objects, and
they can be executed and used in different parts of the code without
problem

This document presents the methodology to use execute FSMs inside FSMs,
so you can easily create modular applications and behaviors. We’re
modify the example in `Finite States Machine Module -
Simple <https://www.notion.so/Finite-States-Machine-Module-Simple-817862bc19344965930d02e393caed65?pvs=21>`__,
to make it modular.

This document will use the pyRa-Ya example called ``fsm_multiple`` to
explain the working of the module (example available
`here <https://github.com/Unlimited-Robotics/pyraya_examples/tree/integration/fsm_multiple>`__).

2. FSM to implement
-------------------

Consider the FSM below:

.. figure:: /_static/FSM_Multiple_1.svg
   :alt: FSM Example
   :align: center

   
The first three states keep the same, just localize and then navigate to
home, after that it gets the ``IDLE`` state. We’re going to call this
FSM the ``main_task``, and not it’s very simple and easy to read, it
just “manages” other tasks.

All the “sub-behaviors” are embedded in unique states: ``TEMPERATURE``,
``KITCHEN``, ``BEDROOM``, and ``LAUNDRY``. Our new implementation will
execute an entirely new FSM in each of those states:

.. figure:: /_static/FSM_Multiple_2.svg
   :alt: FSM Example 2
   :align: center   

3. Implementation
-----------------

Now, our application will include 5 folders inside the ``FSMs`` folder:

-  ``main_task``
-  ``temperature``
-  ``kitchen``
-  ``bedroom``
-  ``laundry``

Each of them includes the files to describe each FSM, you can check them
in the example.

Here we’re going to focus on how to include and execute the sub-FSMs
from the main FSM. First, we create them in the ``main_task``
``Helpers`` class, so we can easily access them from any transition or
action:

.. code-block:: python

   # src/FSMs/main_task/helpers.py

   ...

   def __init__(self, app: RayaApplication):        
           self.app = app
           # Vabiables
           self.last_ui_result = None
           self.fsm_temperature = FSM(app=self.app, name='temperature')
           self.fsm_kitchen = FSM(app=self.app, name='kitchen')
           self.fsm_bedroom = FSM(app=self.app, name='bedroom')
           self.fsm_laundry = FSM(app=self.app, name='laundry')

   ...

Then, we just need to start the sub-FSM in background when the main FSM
gets the corresponding state, for example:

.. code-block:: python

   # src/FSMs/main_task/actions.py

   class Actions(BaseActions):

   ...

       async def enter_KITCHEN(self):
           await self.helpers.fsm_kitchen.run_in_background()

   ...

And we leave the state when that FSM finishes its execution (capturing
the error in case the sub-FSM failed):

.. code-block:: python

   # src/FSMs/main_task/transitions.py

   class Transitions(BaseTransitions):

   ...

      async def KITCHEN(self):
           if self.helpers.fsm_kitchen.has_finished():
               if self.helpers.fsm_kitchen.was_successful():
                   self.set_state('IDLE')
               else:
                   self.abort(*self.fsm_main_task.get_error())

   ...
