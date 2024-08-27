===============================
wait_interaction_finished()
===============================

.. raw:: html

    <hr/>
    
Wait interaction for finish.

Arguments
============

``None``

Return
============

``None``

Exceptions
============

-  ``RayaCommandNotRunning``
-  ``RayaInteractionsNotRunning``

See the :ref:`complete interactions exceptions <interactions_exceptions>`. See the :ref:`general
exceptions <general_exceptions>`.

Usage example
==============

.. code-block:: python

    ...
    await self.interactions.wait_interaction_finished()
