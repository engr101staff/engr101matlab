.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html


   <script src="../_static/common/js/common3.js"></script>

.. include:: ../common/include_lobster_exercises.in.rst

.. raw:: html

   <style>
      .btn {
         margin: 0;
      }
      .tab-pane {
         padding: 0;
      }
   </style>

=========
Iteration
=========


^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^
.. section 1

When you run a program, the line of code that is currently executing is said to have *control* in the program. We have already seen one way to manage the **control flow** in our program - (e.g., :code:`if` and :code:`else` statements). Branching creates multiple paths that your code can take based on the results of logical expressions.

In this chapter, we will look at another technique for control flow, **iteration** (e.g., :code:`for` and :code:`while` **loops**). Iteration traverses through code systematically based on some defined order or condition.

^^^^^^^^^^^^^^^^^^^
:code:`while` Loops
^^^^^^^^^^^^^^^^^^^
The first kind of iteration we'll look at is a :code:`while` loop.

.. section 2

.. youtube:: N3W-hlUBwXk
   :divid: ch13_02_vid_while_loops
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   Here's the general syntax for a :code:`while` loop:

   .. code-block:: cpp

      while ( condition ) {
         statement1;
         statement2;
         ...
      }

   The condition may be any expression that can be interpreted as a boolean, and often expresses some limit on the value of a variable. The "body" of the :code:`while` loop may contain any number of statements, surrounded by the curly braces.

   It's very common in C++ to count starting with zero. If we start at :code:`x = 0` and count while :code:`x < N`, we iterate :code:`N` times (0, 1, ..., N-1).

-----------------------------
Exercise: :code:`while` Loops
-----------------------------

In the Lobster exercise below, write code that uses a :code:`while` loop to print out the following:

.. code-block::

  9 7 5 3 1 done!

Note that each number is followed by a space. The code to print "done!" at the end is provided for you.

|

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

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Increment and Decrement Operators
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 3

C++ provides special operators (:code:`+=`, :code:`++`, :code:`-=`, and :code:`--`) for the common tasks of increasing or decreasing a variable.

**Increment** operators increase a variable by some amount. There are two increment operators:

.. code :: cpp

   x += n; // equivalent to x = x + n
   ++x;    // equivalent to x = x + 1

|

**Decrement** operators decrease a variable by some amount. There are two decrement operators:

.. code :: cpp

   x -= n; // equivalent to x = x - n
   --x;    // equivalent to x = x - 1

.. Note::

   You can also write :code:`x++` or :code:`x--`, but those technically do something a bit different. Prefer to use the :code:`++x` and :code:`--x` versions.

-------------------------------------------
Exercise: Increment and Decrement Operators
-------------------------------------------

Modify the code below to replace the update expressions in each of the loops with an equivalent using the shorthand :code:`++` and :code:`--` operators above. The overall output of the program should not change.

.. raw:: html

   <div class="lobster-ex" style="width: 600px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch13_03_ex</div>
      <div class="lobster-ex-complete-message">
         Well done! The secret word is "boat".
      </div>
   </div>

.. fillintheblank:: ch13_03_ex_increment_and_decrement
  :casei:

  Complete the Lobster exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :boat: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.

.. admonition:: Walkthrough

  .. reveal:: ch13_03_revealwt_increment_and_decrement
  
    .. youtube:: pmtnsKfoEdY
      :divid: ch13_03_wt_increment_and_decrement
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^
:code:`for` Loops
^^^^^^^^^^^^^^^^^
.. section 4

Often, when we use iteration, we will need to initialize a loop variable, increment it, and check a condition.  A :code:`for` loop is built around these components, with a specific location for each in its syntax.

.. youtube:: hiQaIcSPJlU
  :divid: ch07_04_vid_for_loops
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

   Here's the general syntax for a :code:`for` loop:

   .. code-block:: cpp

      for ( initial; condition; increment ) {
         statement1;
         statement2;
         ...
      }

---------------------------------------------------------------
Exercise: Converting a :code:`while` loop to a :code:`for` loop
---------------------------------------------------------------

Modify the code below to use a :code:`for` loop instead of a :code:`while` loop, while still writing the same output to :code:`cout`:

.. code-block::

   1 2 4 8 16 32 done!

Think about which steps already present in the :code:`while` loop would fit into the :code:`for` loop pattern. Lobster has some checkpoints below for each piece of the loop.

.. raw:: html

   <div class="lobster-ex" style="width: 600px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch13_04_ex</div>
      <div class="lobster-ex-complete-message">
         Well done! The secret word is "coffee".
      </div>
   </div>

.. fillintheblank:: ch13_04_ex_for_loops
  :casei:

  Complete the Lobster exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :coffee: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.


.. admonition:: Walkthrough

  .. reveal:: ch13_04_revealwt_for_loops
  
    .. youtube:: qRgResPUGZM
      :divid: ch13_04_wt_for_loops
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^
Nested Loops
^^^^^^^^^^^^
.. section 5

Recall that that many variables have **local scope**, also known as block scope. A **block** is a sequence of statements enclosed by curly braces :code:`{}`. Block scope applies to any block of code, including the bodies of control flow structures like :code:`if`, :code:`for`, and :code:`while`.

When we're working with loops, for scoping purposes, the top of a :code:`for` loop is treated as if it were inside the loop body.

.. code:: cpp

   int main() {
      for(int x = 0; x < 10; ++x) {
         cout << x << endl;
      }
      cout << "Final value of x: " << x << endl; // ERROR! x used out of scope
   }

|

If you need to use a variable after the loop, you need to declare it outside the loop. Take some time to appreciate the difference between the block of code below and the previous version.

.. code:: cpp

   int main() {
      int x;
      for(x = 0; x < 10; ++x) {
         cout << x << endl;
      }
      cout << "Final value of x: " << x << endl; // Ok. The scope of x extends throughout the body of main
   }

|

Make sure that you keep scope in mind when you use loops in more complicated patterns, such as nested loops.

.. youtube:: Gvg99nU4oks
  :divid: ch07_05_vid_nested_loops
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

   Just like :code:`if` statements, loops can be nested. Branching and iteration can be combined to make more complex programs.

----------------------
Exercise: Nested Loops
----------------------

Write code below to print out a "triangle" of :code:`'X'` characters with a size specified by the variable :code:`N`. For example, if :code:`N` is set to :code:`5`, the program should print out five rows of X's, each row with an increasing number of X's up to 5:

.. code-block::

   X
   XX
   XXX
   XXXX
   XXXXX

Remember that you can use the "Simulate" button to run your code. If you're not getting quite the right output, it can be really useful to take a look at what is going on at a fine-grained level!

.. raw:: html

   <div class="lobster-ex" style="width: 600px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch13_05_ex</div>
      <div class="lobster-ex-complete-message">
         Well done! The secret word is "snail".
      </div>
   </div>

.. fillintheblank:: ch13_05_ex_nested_loops
  :casei:

  Complete the Lobster exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :snail: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.

.. admonition:: Walkthrough

  .. reveal:: ch13_05_revealwt_nested_loops
  
    .. youtube:: drtMOUOLShA
      :divid: ch13_05_wt_nested_loops
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
:code:`break` and :code:`continue`
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 6

You may encounter a situation where you need to end your loop early, or "skip a loop". In those cases, you can use :code:`break` or :code:`continue`.

.. youtube:: jKMyjpCu0LU
  :divid: ch07_06_vid_break_continue
  :height: 315
  :width: 560
  :align: center
  
.. admonition:: Video Recap

   :code:`break` allows you to end a loop early. :code:`continue` ends the loop at the point and goes back to the top of the loop for the next iteration (it allows you to "skip a loop").

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Application: DNA Pattern Matching
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 7

Let's look at an application of nested loops - DNA pattern matching. DNA sequencing uses technology to look at a DNA molecule and determine the order of the four chemical building blocks that make up DNA (A, T, C, and G). In 2003, the `Human Genome Project <https://www.genome.gov/human-genome-project>`_ determined the DNA sequence of the entire human genome! Since then, sequencing has gotten faster and cheaper. Now, individual genes are sequenced routinely and `an entire genome can be sequenced for a few thousand dollars <https://www.genome.gov/about-genomics/fact-sheets/DNA-Sequencing-Fact-Sheet>`_.

Once the DNA has been extracted and sequenced, the computational work comes in. One important analysis is to be able to identify patterns in DNA. Being able to pick out patterns can help scientists learn about the role of inheritance in certain diseases, as well as develop new medical diagnostics and therapies. For example, the `Undiagnosed Diseases Program <https://www.genome.gov/Current-NHGRI-Clinical-Studies/Undiagnosed-Diseases-Program-UDN>`_ uses DNA analysis to search for genetic information about rare diseases.

.. figure:: img/dna.jpg
   :width: 500
   :align: center

   ..

|

We are going to write a program that searches for a specific pattern in a DNA sequence. Both the DNA sequence and the pattern that we're looking for are going to be stored as strings. Let's take a look at how to work with strings in C++.

Similar to MATLAB, a **string** is a sequence of characters (in our case, the characters A, T, C, and G). In order to use strings in C++, we must include the string library at the top of our program. Here's a simple example of a program that declares a string variable:

.. code-block:: cpp

    #include <iostream>
    #include <string>                   // Include the string library
    using namespace std;

    int main() {
        string dna = "AGACTGGGACT";    // Declare a string variable
        cout << dna << endl;
    }

|


To find the length of a string, use the :code:`length()` function: :code:`dna.length()`.
    
If we want to look at individual characters in our string, we can index into the string using :code:`[]`. However, when we index into a string, C++ starts counting at zero, not one. So, if we wanted to print out the first element of our string, we would use index 0:

.. code-block:: cpp

    cout << dna[0] << endl; // The first character of our string
    cout << dna[1] << endl; // The second character of our string
    

If there are three characters in our string, then we can use indices 0, 1, and 2 (but not 3!). We'll look at strings in more detail in the next chapter.

.. tip ::
    
    There are a couple of key differences between MATLAB and C++ when we index into strings. First, MATLAB uses :code:`()` for indexing, while C++ uses :code:`[]`. Second, MATLAB starts indexing at 1, while C++ starts indexing at 0.
    
For now, let's look at how to write this program.
    
.. youtube:: 9r9Y8f-0vo4
  :divid: ch13_07_vid_dna_pattern_matching
  :height: 315
  :width: 560
  :align: center
  
.. admonition:: Video Recap

   In this video, we wrote a program to search for a specific pattern in a DNA sequence.

.. tip ::

   In the previous video, we declared the variable :code:`match` inside the first for loop, but outside the second for loop:

   .. code-block :: cpp

      // go through the dna string
      for(int i=0; i<dna.length() - PATTERN_LENGTH + 1; ++i) {
         bool match = true;

         // go through the pattern string
         for(int j=0; j < PATTERN_LENGTH); ++j) { 

            //potentially set match to false in here

         }
      }

   |

   Why do we do this? Each time we go through the outer loop, we want to compare a section of the DNA string to the pattern that we're looking for. At the top of the outer loop, we are going to set :code:`match = true`. This is basically saying, "Assume that this section of DNA matches the pattern." Then, in the inner loop, we are looking for a counterexample - two characters that don't match. If we find this counterexample, we set :code:`match = false`. 
   
   To see why we do this, stop and think about how we would need to write our loops if we started with :code:`match = false` - it leads to a much more complicated program!


What if we wanted to look for *two* patterns in our DNA sequence, instead of only one pattern? Let's modify our program so that it searches for two patterns in the DNA sequence. We'll assume that both patterns are the same number of characters. Each time the program finds a pattern, it should print out either "Pattern 1" or "Pattern 2", along with the index that the pattern begins at. For example, with the following input:

.. code-block :: cpp

    string dna = "AGACTGGGACT";
    string pattern = "GAC";
    string pattern2 = "ACT";

the program should output:

.. code-block :: none

    Pattern 1: 1
    Pattern 2: 2
    Pattern 1: 7
    Pattern 2: 8

To modify our program, we will only iterate through the DNA sequence once (so we will keep our outer loop the same). Because our patterns are the same length, we can keep the inner loop the same as well. However, inside the inner loop, we need to check two things - whether that section of the DNA string matches :code:`pattern1` *and* whether that section of the DNA string matches :code:`pattern2`. (We will also need to remove the :code:`break` statement so that the loop doesn't exit before both patterns are fully checked.)

Modify the code below to implement this behavior.

|

.. raw:: html

   <div class="lobster-ex" style="width: 600px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch13_07_ex</div>
      <div class="lobster-ex-complete-message">
         Well done! The secret word is "snowflake".
      </div>
   </div>

.. fillintheblank:: ch13_07_ex_nested_loops
  :casei:

  Complete the Lobster exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :snowflake: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.

.. admonition:: Walkthrough

  .. reveal:: ch13_08_revealwt_dna_matching

    .. youtube:: BU84FJ_EQco
      :divid: ch13_08_vid_dna_matching
      :height: 315
      :width: 560
      :align: center

|

.. tip ::

   If you're enjoying this program and want to keep exploring, here are some next steps that you could do with this program:

   * What if we had multiple pattern strings of varying lengths?
   * What if we had multiple DNA strings that we wanted to look for patterns in?
   * ... What else can you think of to improve this program??

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* **Iteration** is a form of **control flow** that traverses through code systematically based on some defined order or condition. We looked at two forms of iteration - :code:`for` loops and :code:`while` loops.
* Increment and decrement operators (:code:`+=`, :code:`++`, :code:`-=`, and :code:`--`) increase or decrease variables by some amount. They are often used in loops.
* Counting starting with zero is a common pattern in C++.
* Loops can be nested. Variables declared inside a loop only have scope within that loop.
* :code:`break` allows you to end a loop early. :code:`continue` ends the loop at the point and goes back to the top of the loop for the next iteration.
* To use strings in C++, you need to include the string library. The :code:`length()` function tells you how long a string is. You can index into strings using :code:`[]`. Unlike MATLAB, indexing starts at 0.

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
