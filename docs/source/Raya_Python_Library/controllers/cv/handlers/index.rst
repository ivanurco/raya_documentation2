.. _cv_handlers:

=========
Handlers
=========


.. raw:: html

   <hr/>

   <div class="hidden-block">

.. toctree::
   :maxdepth: 1

   find_tags
   get_current_predictions
   get_predictions_once
   set_predictions_callback
   set_img_predictions_callback
   find_objects
   cancel_find_objects
   get_objects_names 

.. raw:: html

   </div>

Overview
===========

A computer vision handler is the object returned upon enabling a model,
enabling users to access various common and specific methods. For
instance, it facilitates tasks such as obtaining predictions and
performing simple tasks like searching for an object or class within the
predictions.

Common Methods
======================

The common methods that can be invoked from any handler, regardless of
its type, are as follows:

``cancel_finds()``

Handlers List
======================

As mentioned earlier, each available model type has its own unique
handler, which may vary depending on its functionalities. Below is a
list of the available handlers:

Detection handlers
---------------------

-  Faces detector
-  Objects detector
-  Tags detector

Segmention handlers
---------------------

-  Objects segmentator
-  Planes segmentator

Recognition Handlers
---------------------

-  Faces recognizer

Estimation Handlers
---------------------

-  Hand position estimator

Classification Handlers
-----------------------------

-  Object classificator

