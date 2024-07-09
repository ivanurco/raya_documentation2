================
cancel_sound()
================

.. raw:: html

    <hr/>

Cancel current sound.

Reference
===========

Arguments
-----------

``None``

Return
-----------

``None``

Exceptions
------------

-  ``RayaCommandNotRunning``
-  ``RayaSoundErrorPlayingAudio``


See the :ref:`complete exceptions <sound_exceptions>`.

See the :ref:`general exceptions. <general_exceptions>`.


Usage example
===============

.. code-block:: python

    ...
    await self.sound.cancel_sound()
