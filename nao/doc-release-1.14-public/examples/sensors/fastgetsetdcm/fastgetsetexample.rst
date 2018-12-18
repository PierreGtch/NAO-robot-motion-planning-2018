.. _cpp-examples-fastgetsetexample:

Fast getting and setting joint angles
=====================================

:ref:`\<\< return to examples index <example-index>`

Overview
--------

**fastGetSetExample** module shows how to have quick access (every 10ms) to
joint angles values using the :ref:`dcm`.

This is a **local** module, it must be cross-compiled and sent to the robot.

.. warning::

   This example is quite advanced, and could lead to disastrous results if
   modified or used incorrectly. Do not try to edit it unless you know what
   you are doing.

Downloads
---------

Whole module
++++++++++++

:download:`fastgetsetdcm.zip <../fastgetsetdcm.zip>`

Header: fastgetsetdcm.h
+++++++++++++++++++++++++++

:download:`fastgetsetdcm.h <fastgetsetdcm.h>`

.. literalinclude:: fastgetsetdcm.h
   :language: cpp

Source: fastgetsetdcm.cpp
+++++++++++++++++++++++++++++

:download:`fastgetsetdcm.cpp <fastgetsetdcm.cpp>`

.. literalinclude:: fastgetsetdcm.cpp
   :language: cpp

Main: main.cpp
++++++++++++++

:download:`main.cpp <main.cpp>`

.. literalinclude:: main.cpp
   :language: cpp

CMakeLists.txt
++++++++++++++

:download:`CMakeLists.txt <CMakeLists.txt>`

.. literalinclude:: CMakeLists.txt
   :language: cmake

