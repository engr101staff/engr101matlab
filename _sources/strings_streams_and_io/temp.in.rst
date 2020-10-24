.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/main2.css">
   <link rel="stylesheet" href="../_static/common/css/code2.css">
   <link rel="stylesheet" href="../_static/common/css/buttons2.css">
   <link rel="stylesheet" href="../_static/common/css/exercises2.css">
   <script src="../_static/common/js/common.js"></script>
   <script src="../_static/common/js/lobster-exercises2.bundle.js"></script>

.. raw:: html

   <style>
      .btn {
         margin: 0;
      }
      .tab-pane {
         padding: 0;
      }
   </style>

=========================
Strings, Streams, and I/O
=========================


^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^
.. section 1

TODO



^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The Standard Library and :code:`#include`
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 2

Much of the functionality in C++ is built into the C++ standard library. You can think of this sort of like MATLAB's wide array of toolboxes, which are additional features you can add on to use in your code. To use part of the standard library, use the :code:`#include` directive. For example, if you would like to use :code:`cout` and :code:`cin` in your code, you'll need to include the :code:`<iostream>` library at the top of your :code:`.cpp` file like this:

.. code-block:: cpp

   #include <iostream>
   using namespace std;

The :code:`using namespace std;` directive is generally used with included libraries, so that we can use shorthand names like :code:`cout` and :code:`cin`. Without it, we would need to write out :code:`std::cout` and :code:`std::cin`. So basically, the :code:`using namespace std;` line implicitly puts the :code:`std::` on everything so you don't have to.

Here are some common libraries that we will use in ENGR 101:

.. list-table:: 
    :align: left
    :widths: 15 85

    * - :code:`<cmath>`

      - Standard math library (e.g. :code:`sqrt()`, :code:`pow()`, :code:`sin()`, etc.) 

    * - :code:`<cstdlib>`

      - Common functions (e.g. :code:`rand()`)

    * - :code:`<iostream>`

      - Standard terminal input/output (:code:`cin` and :code:`cout`)

    * - :code:`<fstream>`

      - File input/output through streams

    * - :code:`<iomanip>`

      - Configure the way output is printed (e.g. floating point precision)

    * - :code:`<string>`

      - The :code:`string` datatype and associated functionality

    * - :code:`<vector>`

      - The :code:`vector` datatype (a container)

If you forget either the :code:`#include` or the :code:`using namespace std;`, you'll get a compile error where you try to use library features.

Let's take a look at one example with the :code:`rand()` function from :code:`<cstdlib>`.

TODO

.. youtube:: N3W-hlUBwXk
   :divid: ch13_02_vid_while_loops
   :height: 315
   :width: 560
   :align: center

|

^^^^^^^^^^^^^^^^^^^^^
User Input and Output
^^^^^^^^^^^^^^^^^^^^^
.. section 2

We call the person who runs or uses a program the "*user*", and sometimes we want to communicate with them by printing out messages or having them type input at the terminal and hit the *enter* key.

We've seen previously that this can be accomplished with :code:`cout` (the standard output stream) and :code:`cin` (the standard input stream).

Let's look at some more details and a few examples:

TODO

.. youtube:: N3W-hlUBwXk
   :divid: ch13_02_vid_while_loops
   :height: 315
   :width: 560
   :align: center

|

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Common Patterns for User Input
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 2

--------------------------------
Common Pattern: Validating Input
--------------------------------

When you use :code:`cout`, the here's the general syntax for a :code:`while` loop:

.. code-block:: cpp

   while ( condition ) {
     statement1;
     statement2;
     statement3;
     ...
   }

The condition may be any expression that can be interpreted as a boolean, and often expresses some limit on the value of a variable. The "body" of the :code:`while` loop may contain any number of statements, surrounded by the curly braces.

------------------------------------
Common Pattern: Detecting a Sentinel
------------------------------------

Here's another pattern - we want to read input from the user until they tell us to stop. To do this, we'll look for a special input called a **sentinel**. For example, if we're writing a program that works with strings, we could look for the word :code:`"stop"`.

.. code-block::

  9 7 5 3 1 done!

Note that each number is followed by a space. The code to print "done!" at the end is provided for you.

.. raw:: html

   <div class="lobster-ex" style="width: 600px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch13_02_ex</div>
      <div class="lobster-ex-complete-message">
         Well done! The secret word is "emoji".
      </div>
   </div>

.. fillintheblank:: ch13_02_ex_while_loops
  :casei:

  Complete the Lobster exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :emoji: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.

.. admonition:: Walkthrough

  .. reveal:: ch13_02_revealwt_while_loops
  
    .. youtube:: A6KQ-1zcNQY
      :divid: ch13_02_wt_while_loops
      :height: 315
      :width: 560
      :align: center

|



^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Reading and Writing to Files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 3



^^^^^^^^^^^^^^^^^^^
Indexing in Strings
^^^^^^^^^^^^^^^^^^^
.. section 3