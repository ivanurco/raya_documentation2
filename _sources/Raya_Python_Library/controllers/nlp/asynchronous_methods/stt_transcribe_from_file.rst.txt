=================================
stt_transcribe_from_file()
=================================

.. raw:: html

    <hr/>

This method transcribe speech in a file to text.

Reference
================

Arguments
-------------

============================== ============ ============= ==================================================================
Arguments                      Type         Default value Description
============================== ============ ============= ==================================================================
file                           ``str``                    File path to the audio.
language                       ``str``                    Language to use.
callback_feedback              ``callable``               Callback to be executed when a feedback arrives.
callback_feedback_async        ``callable``               An asynchronous callback to be executed when a feedback arrives
                                                          (if callback_async is defined, callback is ignored). Allows a
                                                          callback that can use 'await', which is useful for non-blocking
                                                          operations and concurrent tasks.
callback_finish                ``callable``               Callback to be executed when the method finish.
callback_finish_async          ``callable``               An asynchronous callback to be executed when a method finish
                                                          (if callback_async is defined, callback is ignored). Allows a
                                                          callback that can use 'await', which is useful for non-blocking
                                                          operations and concurrent tasks.
wait                           ``bool``     ``False``     If true the method is executed in clocking mode
============================== ============ ============= ==================================================================

.. raw:: html    

    <div class="warning-box">

        <p class="title warning-box">Important note!</p>

        <p class="text warning-box"> If callback_async is defined, callback is ignored. </p>

    </div>

Return
-------------

+-----------------------------------+-----------------------------------+
| Type                              | Description                       |
+===================================+===================================+
| ``str``                           | String with the transcription.    |
+-----------------------------------+-----------------------------------+

Exceptions
-------------

``None``

See the :ref:`complete list of NLP exceptions. <nlp_exceptions>`


