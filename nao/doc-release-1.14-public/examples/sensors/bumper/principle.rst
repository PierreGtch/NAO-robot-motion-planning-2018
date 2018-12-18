Principle
=========

.. _cpp-tutos-intermediate-events:

Event subscription
------------------

To react to a particular event, you first have to subscribe to it. To do so, you
must first create a proxy to ALMemory, then call the subscribeToEvent method to
subscribe to the desired event. If you want to stop calling the callback, use the
unsubscribeToEvent method. Each event has a particular name.

To create the memory proxy, you can use the module's broker directly instead of
the IP adress (this only works if you are inside a module). You then indicate
to which event you want to subscribe, and the callback function that will be called
somewhere. ::

  AL::ALMemoryProxy memProxy = AL::ALMemoryProxy(getBroker());
  memProxy.subscribeToEvent("eventName", "ModuleForCallback", "callbackFunctionName");

Callback function
-----------------

When subscribing to the event, you specify the callback function and the module
from where it comes. This means the callback function has to be bound somewhere.
You cannot give any argument to the callback function.

Thread considerations
---------------------

You must be particularly careful when using a callback function. The callback
function processing time could be greater than the time between two event raising.
In that case, you could be trying for example to read and modify the same variable
in two different threads.

To avoid that, you have to ensure that your callback function is thread-safe. To
do so, you can use the critical section and mutex API provided by Aldebaran, but
you can also use any other programming method (for example
`Boost.Thread <http://www.boost.org/doc/libs/1_47_0/doc/html/thread.html>`_).

To use Aldebaran mutex, you can use a mutex (AL::ALMutex), and a critical section.
Do not forget to intialize the mutex with AL::ALMutex::createALMutex. Then, you
can create critical sections in your code using this mutex as an argument: ::

  AL::ALCriticalSection section(mutex)

The corresponding includes are **<althread/almutex.h>** for the mutex, and
**<althread/alcriticalsection.h>** for the critical section.
