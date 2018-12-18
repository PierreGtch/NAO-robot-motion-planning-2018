.. _cpp-examples-alvisualcompass:

Using ALVisualCompass
=====================

:ref:`\<\< return to examples index <example-index>`

The following example demonstrates how to use ALVisualCompass.

The whole example is available here
:download:`alvisualcompass.zip <../alvisualcompass.zip>`.

The full documentation of this module can be found
:ref:`here <alvisualcompass>`.

Principle
---------

This example enables you to choose your reference image, from which the
deviation will be computed, and then displays the angle deviation between the
current image and the reference one.

Run it with the robot's IP adress as an argument.

The executable will display two windows, one for the reference image and one
for the current one taken by ALVisualCompass. The current deviation will by
displayed in the "Current image" window, in degrees: Wz is the rotation along
the vertical Z axis, and Wy is the rotation along the horizontal Y axis.

To use the example:

* Press **r** to start the compass. The reference image will be the current
  image at startup.
* Press **p** to pause / unpause the compass.
* Press **s** to stop the compass (for example to set another reference).
* Press **Esc** to exit the program. Use this instead of interrupting the program
  to unsubscribe to the compass properly.

Source file
-----------

:download:`alvisualcompass_example.cpp <alvisualcompass_example.cpp>`

.. literalinclude:: alvisualcompass_example.cpp
   :language: cpp

CMakeLists.txt:
---------------

The corresponding CMakeLists.txt file is the following:

:download:`CMakeLists.txt <CMakeLists.txt>`

.. literalinclude:: CMakeLists.txt
   :language: cmake


