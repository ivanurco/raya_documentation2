========================
tts_play_text()
========================

.. raw:: html

    <hr/>

This method converts text to sound and play it in the system speakers.

Reference
===========

Arguments
-----------

============================== ============ ============= ==================================================================
Arguments                      Type         Default value Description
============================== ============ ============= ==================================================================
text                           ``str``                    Text to play.
voice                          ``str``                    Voice to use as speaker.
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
-----------

``None``

Exceptions
------------

``None``

See the :ref:`complete list of NLP exceptions. <nlp_exceptions>`
