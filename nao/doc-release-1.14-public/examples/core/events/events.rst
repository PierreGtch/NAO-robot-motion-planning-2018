.. _cpp-tutos-create-events:

Creating events
===============

:ref:`\<\< return to examples index <example-index>`

This section explains how to create events.
Event creation works only for local modules.

Event creation principle
------------------------

Some events already exist in Aldebaran modules. For example, an event is
raised each time a face is detected (see :ref:`cpp-examples-face-detected`). You
might want to create your own events, to be able to use callback methods.

Event creation and raising goes through ALMemory. Once a module has declared
an event, all modules which subscribe to that event will be notified when the
value of the event changes.

To declare an event, use a proxy to ALMemory: ::

   AL::ALMemoryProxy memProxy = AL::ALMemoryProxy(getBroker())
   memProxy.declareEvent("EventName")

Every time you raise the event, use the following line: ::

   memProxy.raiseEvent("EventName", eventValue)

The event value can be any basic type.

.. note::

   This feature is only possible for a local module, since the modules are
   looking directly into the memory of the robot.


Example: Events module
----------------------

This section presents an example module. It is generating an event called
"ExampleEvent", and subscribing to it to display a message everytime the event
is generated.

The whole example is available here: :download:`events.zip <../events.zip>`

Header:
+++++++

:download:`events.h <events.h>`

.. literalinclude:: events.h
   :language: cpp

Source file:
++++++++++++

:download:`events.cpp <events.cpp>`

.. literalinclude:: events.cpp
   :language: cpp

Main:
+++++

:download:`main.cpp <main.cpp>`

.. literalinclude:: main.cpp
   :language: cpp

CMakeLists.txt:
+++++++++++++++

:download:`CMakeLists.txt <CMakeLists.txt>`

.. literalinclude:: CMakeLists.txt
   :language: cmake

