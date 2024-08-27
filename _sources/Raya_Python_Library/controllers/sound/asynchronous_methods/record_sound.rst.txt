===============
record_sound()
===============

.. raw:: html

    <hr/>


This function records a sound to a path based on the duration given.

Reference
============

Arguments
-----------

+------------------------+------------------------+------------------------+------------------------+
| Arguments              | Type                   | Default Value          | Description            |
+========================+========================+========================+========================+
| duration               | ``float``              | 60.0                   | Duration of recording  |
|                        |                        |                        | (sec) in float.        |
+------------------------+------------------------+------------------------+------------------------+
| path                   | ``str``                |                        | Path to which sound is |
|                        |                        |                        | recorded.              |
+------------------------+------------------------+------------------------+------------------------+
| callback_finish        | ``function``           | ``None``               | If you define a finish |
|                        |                        |                        | callback, it will be   |
|                        |                        |                        | called when the        |
|                        |                        |                        | movement finishes or   |
|                        |                        |                        | is interrupted.        |
+------------------------+------------------------+------------------------+------------------------+
| wait                   | ``bool``               | ``True``               | If ``True``, the code  |
|                        |                        |                        | will be blocked until  |
|                        |                        |                        | the end of the sound.  |
+------------------------+------------------------+------------------------+------------------------+

Return
---------

============= ==================================================================
Type          Description
============= ==================================================================
``SoundData`` Recorded data as :ref:`SoundData <sound_data_object>` object.
============= ==================================================================

Exceptions
------------

-  ``RayaSoundErrorRecording``
-  ``RayaNeedCallback``

See the :ref:`complete exceptions <sound_exceptions>`.

See the :ref:`general exceptions <general_exceptions>`.


Usage example
===============

.. code:: python

   from raya.application_base import RayaApplicationBase
   from raya.controllers.sound_controller import SoundController


   DURATION = 10.0
   NAME_RECORD = 'dat:record.wav'


   class RayaApplication(RayaApplicationBase):

       async def setup(self):
           self.sound: SoundController = await self.enable_controller('sound')


       async def loop(self):
           self.log.warn((
                   f'Recording for {DURATION} seconds in the file {NAME_RECORD}'
               ))
           response = await self.sound.record_sound(
                   duration=DURATION,
                   path=NAME_RECORD,
                   wait=True,
               )
           print(response)
           self.finish_app()


       async def finish(self):
           self.log.info(f'Hello from finish()')
