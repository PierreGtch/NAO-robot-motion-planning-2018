.. _cpp-examples-loud-noise:

Reacting to an audio event: loud noise
======================================

:ref:`\<\< return to examples index <example-index>`

Principle
---------

If you want to have a sound-based reaction, you need to retrieve the sound
received by NAO's microphones. To do so, you have to implement a particular
kind of module: it must inherit from ALSoundExtractor.

ALSoundExtractor implements some key methods to help you process sound:

* **process**. This method has to be redefined by the user. It is automatically
  called each time a sound buffer is sent, and its arguments correspond to  the
  buffer information. You do not have to worry about any optimization, since it
  will automatically be called in local mode if possible.
* **startDetection**. Once this method has been called, sound buffers will be
  sent regularly with the desired preferences to the process method.
* **stopDetection**. This method stops the sound buffer sending.

The preferences for the kind of buffer to be sent are set through a proxy to
ALAudioDevice.

.. warning::

   Make sure that your sound processing function has an execution time either
   much smaller than the time between two sound buffers, or is thread-safe.


.. _example_alsoundbasedreaction:

Example: ALSoundBasedReaction module
------------------------------------

This section implements an example module. It will make NAO say "Hello there"
each time a sufficiently loud noise is detected.

The whole example is available here:
:download:`soundbasedreaction.zip <../soundbasedreaction.zip>`

Header:
+++++++

:download:`alsoundbasedreaction.h <alsoundbasedreaction.h>`

.. literalinclude:: alsoundbasedreaction.h
   :language: cpp

Source file:
++++++++++++

:download:`alsoundbasedreaction.cpp <alsoundbasedreaction.cpp>`

.. literalinclude:: alsoundbasedreaction.cpp
   :language: cpp

Main:
+++++

:download:`soundbasedreactionmain.cpp <main.cpp>`

.. literalinclude:: main.cpp
   :language: cpp

CMakeLists.txt:
+++++++++++++++

:download:`CMakeLists.txt <CMakeLists.txt>`

.. literalinclude::  CMakeLists.txt
   :language: cmake

