.. _cpp-examples-helloworld:

Example: HelloWorld module
==========================

:ref:`\<\< return to examples index <example-index>`

The whole example is available here: :download:`helloworld.zip <../helloworld.zip>`

Module creation
---------------

This module is defined in the two following files:

Header
++++++

The first one is a header file, defining the HelloWorld class. Note that it is
inheriting from the ALModule class.

:download:`helloworld.h <helloworld.h>`

.. literalinclude:: helloworld.h
   :language: cpp

Source file
+++++++++++

The second one contains the implementation. Note the binding of the functions in
the constructor. This binding is imperative: else, the methods won't be available
from outside the module.

:download:`helloworld.cpp <helloworld.cpp>`

.. literalinclude:: helloworld.cpp
   :language: cpp

Main
++++

The main.cpp contains lots of boilertemplate code. You should not worrying about this file.
Just do not modify it unless you know what you are doing.


:download:`main.cpp <main.cpp>`

.. literalinclude:: main.cpp
   :language: cpp


Note: if you want to understand what this ``main.cpp`` does or want to change it, you can
read about it in the :ref:`cpp-tutos-custom-main` section.

CMakeLists.txt
++++++++++++++

The CMakeLists.txt file can generate a .sln file or a Makefile project for you.
Do not change it unless you know what you are doing.

:download:`CMakeLists.txt <CMakeLists.txt>`

.. literalinclude:: CMakeLists.txt
   :language: cmake

-------------
Module access
-------------

Here is an example on how to access or "HelloWorld" module from the outside.

:download:`testhelloworld.cpp <testhelloworld.cpp>`

.. literalinclude:: testhelloworld.cpp
   :language: cpp
