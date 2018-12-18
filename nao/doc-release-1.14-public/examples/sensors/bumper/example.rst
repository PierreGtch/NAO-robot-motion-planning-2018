Example code: Bumper module
===========================

This is an example of a module subscribing to an event.
It implements a callback function that makes NAO speak every time its right
bumper is pressed.

The whole example is available here: :download:`bumper.zip <../bumper.zip>`

Here are the sources of the module:

Header:
-------

:download:`bumper.h <bumper.h>`

.. literalinclude:: bumper.h
   :language: cpp

Source:
-------

:download:`bumper.cpp <bumper.cpp>`

.. literalinclude:: bumper.cpp
   :language: cpp

Main:
-----

:download:`main.cpp <main.cpp>`

.. literalinclude:: main.cpp
   :language: cpp

CMakeLists.txt:
---------------

The corresponding CMakeLists.txt file is:

:download:`CMakeLists.txt <CMakeLists.txt>`

.. literalinclude:: CMakeLists.txt
   :language: cmake

