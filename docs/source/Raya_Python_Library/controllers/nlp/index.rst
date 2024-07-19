================
NLP
================

.. raw :: html

   <hr/>

   <div class="hidden-block">

.. toctree::
   :maxdepth: 2

   Asynchronous methods <asynchronous_methods/index>
   Exceptions <exceptions>
   Feedbacks <feedbacks>   

.. raw:: html

    </div>

1. Overview
==============

Natural Language Processing controller allows playing speech from text
and convert speech to text.

2. Using the controller
==========================

Creating the controller in your app:

.. code-block:: python

   from raya.application_base import RayaApplicationBase

   class RayaApplication(RayaApplicationBase):
       async def setup(self):
           ...
           self.nlp = await self.enable_controller('nlp')
           ...
