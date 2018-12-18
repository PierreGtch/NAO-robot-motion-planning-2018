.. _cpp-tutos-optimized-access-images:

Optimized access to images
==========================

:ref:`\<\< return to examples index <example-index>`

Principle
---------

This section explains how to implement an optimized access to NAO's images when
the module is remote.

This idea is that a remote call is less efficient, so we make a direct call to
retrieve the images: the buffer containing the current image is taken directly.

To retrieve the images, subscribe as usual using a proxy to ALVideoDevice, and
specify the framerate, resolution etc.

To prevent NAO from erasing the buffer we want to use, we have to lock it.
That means that after processing the image, the buffer has to be released.
So it is important to check that the image processing does not take too long
compared to the framerate to avoid blocking the frame grabbing process.


Example: OptimizedImage module
------------------------------

This example implements a module retrieved images optimally. No
further processing is done.

The whole example is available here: :download:`optimizedimage.zip <../optimizedimage.zip>`

Header:
+++++++

:download:`optimizedimage.h <optimizedimage.h>`

.. literalinclude:: optimizedimage.h
   :language: cpp

Source:
+++++++

:download:`optimizedimage.cpp <optimizedimage.cpp>`

.. literalinclude:: optimizedimage.cpp
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
