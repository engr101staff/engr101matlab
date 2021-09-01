.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/theme-overrides.css">

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

=====================
Program Design in C++
=====================

^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^
.. section 1

.. youtube:: AhGH8kn1E9A
   :divid: ch17_01_introduction
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   A Caesar Cipher shifts letters in the alphabet by a particular (secret) offset. In this chapter, we'll design a program to decrypt Dr. Juett's encrypted notes.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Bottom-up Design
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 2

In order to recover Dr. Juett's notes, we are going to need to design a program to find out the offset used in the Caesar Cipher. Specifically, we will write a program to encrypt and decrypt a document with this cipher. We can look at program design from two general, complementary perspectives: **top-down** and **bottom-up**. As you’ll recall from Chapter 10, bottom-up design starts by identifying specific features that we’ll need in our program, and then writing functions that accomplish these specific features. Top-down design starts by looking at the big picture of what the end result will be, and then breaks it down into smaller steps after that.

We're going to look at designing our program from both perspectives in this chapter. Let's start with bottom-up design!

For bottom-up design, we need to first think of some small pieces of functionality that would be useful for our program. We can implement these pieces as functions. For example, we know we're going to need to shift letters (i.e. characters) if we want to implement a Caesar Cipher to encrypt (or decrypt!) messages.

--------------------------------------
Bottom-Up Design: Shifting a Character
--------------------------------------

Let's create a :code:`shift_letter` function that takes in an original character, shifts it by a given amount, and returns a new character.
  
.. youtube:: OA4-rNK_jxI
   :divid: ch17_02_shift_letter
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   We wrote the :code:`shift_letter` function to shift a letter by a given amount. We began by writing pseudocode, and then wrote the C++ code.

-----------------------------------
Bottom-Up Design: Encrypting a Word
-----------------------------------
.. section 3

What other functionality will we need? We will need the ability to encrypt a word using the Caesar Cipher.

Write an implementation for the :code:`encrypt_word` function below that encrypts a word according to a Caesar Cipher with the given offset. You should iterate through each character in the word and call :code:`shift_letter()` to compute a new word.

However, the parameter to :code:`encrypt_word()` is passed by const reference - you're not able to change it. Instead, we suggest you should make a local copy of the word, using a line like :code:`string copy = text;` at the beginning of your function. Then, you can modify and return that copy.

.. raw:: html

   <div class="lobster-ex" style="width: 700px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch17_ex_encrypt_word</div>
      <div class="lobster-ex-complete-message">
         Well done! The secret word is "luigi".
      </div>
   </div>

.. fillintheblank:: ch17_03_ex_encrypt_word
  :casei:

  Complete the Lobster exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :luigi: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.


.. admonition:: Walkthrough

  .. reveal:: ch17_03_revealwt_encrypt_word
  
    .. youtube:: EUlRb1_8Ep8
      :divid: ch17_03_wt_encrypt_word
      :height: 315
      :width: 560
      :align: center


----------------------------
Multi-File Program Structure
----------------------------
.. section 4

We've got some of the basics functions for our program implemented, but let's take a step back before moving on to the driver program in :code:`main()`. To keep our code more organized, let's take a look at the way C++ allows us to split our code into separate modules in different :code:`.cpp` source files. We'll also see how :code:`.h` header files are used to enable code in one file to call and use functions defined in a separate file.

.. youtube:: f-LDCdnu9EE
   :divid: ch17_04_file_structure
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   A **module** contains a specific set of functionality in your code. A module usually consists of a :code:`.cpp` file and a :code:`.h` (**header**) file. The header file will contain function prototypes, while the :code:`.cpp` file will contain the implementations of these functions. For convenience, the :code:`.cpp` file will generally include the header file at the top (e.g., :code:`#include "caesar.h"`).

   A program with multiple modules with also have a *driver file*, a :code:`.cpp` file that contains :code:`main()`.

   If a particular :code:`.cpp` file (including the driver file) needs to use functions from a module, then the header file for that module must be included at the top (e.g., :code:`#include "caesar.h"`). This gives the compiler access to the function prototypes in that module. Note that :code:`.cpp` files should *never* be used in an :code:`#include`.

   To compile a program with multiple modules, all of the :code:`.cpp` files must be specified in the compilation command. Header files are *never* specified in the compilation command. For example:

   .. code::

      g++ encryptDocument.cpp caesar.cpp -o encryptDocument

.. mchoice:: ch17_04_ex_file_structure_01

   **Exercise: Organizing Autograder Program**

   Let's say we're writing a program to help compute grades for ENGR 101. We have a whole bunch of helper functions dedicated to pulling data from the autograder, as well as a main function that calls those functions on data pulled from a variety of sources.

   Which of the following is a reasonable organization for our project?

   - Put the :code:`main()` function in a file :file:`grades.cpp`. Put the helper functions for the autograder in a file :file:`autograder.h`, and then use :code:`#include 'autograder.h'` at the top of :file:`grades.cpp` to bring in those functions.

     - Not quite. This will mostly work in the short term, but it's generally not a good idea to put actual function code in a :file:`.h` file, and can even lead to errors. :file:`.h` files should primarily contain function prototypes.

   - Put all the code in a single file, :file:`grades.cpp`, since this is the only way to ensure the compiler has access to the helper functions while it is compiling the code in :code:`main()`.

     - Nope! There are multi-file approaches that will work, for example, using :code:`#include` and a header file to let the code in :code:`main()` know about the prototypes of the other functions.

   - Put the :code:`main()` function in a file :file:`grades.cpp`. Put the helper functions for the autograder in a file :file:`autograder.cpp`, with a corresponding :file:`autograder.h` file containing prototypes for those functions. Then, use :code:`#include 'autograder.h'` at the top of :file:`grades.cpp` to ensure those functions are declared before they are used in :code:`main()`.

     + Correct!

   - Put the :code:`main()` function in a file :file:`grades.cpp`. Put the helper functions for the autograder in a file :file:`autograder.cpp`, and then use :code:`#include 'autograder.cpp'` at the top of :file:`grades.cpp` to bring those functions into :file:`grades.cpp` as well.

     - Not quite. As a general rule, you'll almost never want to :code:`#include` a :file:`.cpp` file.

.. mchoice:: ch17_04_ex_file_structure_02

   **Exercise: Compiling Autograder Program**

   In our example grading program, we have three files:

   - :file:`grades.cpp`
   - :file:`autograder.h`
   - :file:`autograder.cpp`

   Which of the following compile commands is correct?

   - :code:`g++ grades.cpp -o grades`

     - Not quite. The :file:`autograder.cpp` file is missing.

   - :code:`g++ grades.cpp autograder.cpp -o grades`

     + Correct!

   - :code:`g++ grades.cpp autograder.h autograder.cpp -o grades`

     - Not quite. In general, a :file:`.h` header file is never included in the compile command. (Instead, in this case, it would be included with :code:`#include` at the top of the other files.)

Let's go ahead and apply this structure to our Caesar Cipher program.

.. youtube:: fqbRAraFd0U
   :divid: ch17_04_file_structure_applied
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   We created a driver file :code:`encryptDocument.cpp`. We have put the functions that we've written for working with Caesar Ciphers in :code:`caesar.cpp`. We want to create a cipher module, so we created a header file :code:`caesar.h`.

   At the top of :code:`encryptDocument.cpp` and :code:`caesar.cpp`, we :code:`#include "caesar.h"`.

   To compile our program, use :code:`g++ encryptDocument.cpp caesar.cpp -o encryptDoc`.

When working with multiple modules, one question that comes up is *when do we need* :code:`using namespace std;` *at the top of the file?*

In general, you can put :code:`using namespace std;` at the top of all of the :code:`.cpp` files. However, you should *never* put :code:`using namespace std;` at the top of a header file.

If you don't have :code:`using namespace std;` at the top of the file (like header files), then you will need to preface many keywords (:code:`string`, :code:`vector`, etc.) with :code:`std::`. For example, instead of writing :code:`string`, you will need to write :code:`std::string`.

.. tip::
   :code:`std::string` is actually the full name for :code:`string`, but :code:`using namespace std;` lets you shorten the full name for convenience. When you don't have :code:`using namespace std;`, you need to write out the full name.

Here's an example function prototype using :code:`std::`:

.. code :: cpp

   void doSomething(std::string inputString);

^^^^^^^^^^^^
Unit Testing
^^^^^^^^^^^^
.. section 5

One more thing before we move on... we just made some very useful functions, but how can we be sure they work correctly? If we wait to test our code until we've got everything plugged together, it can be much harder to figure out where problems are coming from. Instead, let's write some **unit tests** for individual functions to confirm things are working correct at a small scale first.

.. youtube:: WpFO5DlsHdM
   :divid: ch17_05_vid_unit_testing
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   **Unit testing** is the practice of testing each function individually to make sure it behaves as it should according to its **interface**. We often do this using the :code:`assert` function, which ends the program with an error message if its input is not true. A good way to organize unit tests is to write them in a separate file with its own :code:`main` function.

--------------------------
Exercise: Unit Testing
--------------------------

See if you can expose the bug in the :code:`shift_letter()` function by writing some unit tests with :code:`assert`.

In particular, you should focus on writing tests for **special cases** or **edge cases** - these are sets of inputs that are in some ways trickier than normal or on the boundaries of what is allowed. For example, here's a variety of suggestions for things you might try testing:

- An offset of 0
- A negative offset
- An offset of exactly 26 (should be no change)
- An offset larger than 26
- Cases that wrap around the end or the beginning of the alphabet

However, remember that you shouldn't test inputs that don't make any sense or that violate the rules of the function. For example, the function is presumed to only work on inputs with lowercase a-z letters, so it wouldn't be fair to test it with input characters outside that range.

In the Lobster exercise below, we've given you a few test cases to start with as template for the way you should structure your asserts. Add some more test cases to see if you can find one that fails (a failed assertion means it detected the bug!). To run your tests, just click "Simulate" and then "Run". You'll see red text at the console with a specific line number if there was a failed assertion. If you don't see anything, try writing more tests!

.. raw:: html

   <div class="lobster-ex" style="width: 700px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch17_ex_unit_testing</div>
      <div class="lobster-ex-complete-message">
         Well done! The secret word is "rhubarb".
      </div>
   </div>

.. fillintheblank:: ch17_05_ex_unit_testing_01
  :casei:

  Complete the Lobster exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :rhubarb: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.

.. shortanswer:: ch17_05_ex_unit_testing__02

   Did you find an assertion that caught the bug? If so, based on the test that failed and the code in :code:`shift_letter()`, can you guess roughly why the bug occurs? If you didn't find it, what would be the next thing you would check?

.. admonition:: Walkthrough

   .. reveal:: ch17_05_revealwt_unit_testing
   
      You may have found that a test like this caught the bug:

      .. code-block:: cpp

         assert(shift_letter('a', -2) == 'y');

      If you step through the Lobster simulation for this case, you'll see the problem is that the :code:`pos = (pos + offset) % 26;` allows the position to become negative. For example, in the case above, :code:`pos + offset` yields :code:`-2`, which remains the same after modding by :code:`26`.

      We can fix this by adding a conditional after the position calculation:

      .. code-block:: cpp
      
         if (pos < 0) {
           pos = pos + 26;
         }

      That ensures that any negative number is adjusted 26 letters forward to its positive equivalent. The :code:`-2` becomes :code:`24`, which is the position of :code:`y`, as desired.

-------------------------
Unit Testing with Doubles
-------------------------

If you have a function that returns a :code:`double` as a result, you need to take some precautions to make sure you don't run into issues with floating-point precision (i.e. roundoff error) in your tests.

.. youtube:: nHq8fTBngv4
   :divid: ch17_05_vid_unit_testing_with_doubles
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   It's not safe to use :code:`==` or :code:`!=` with floating point numbers. Instead, we can check whether the numbers are very close. Here's a function that does that:

   .. code:: cpp

      bool almostEqual(double x, double y) {
         double diff = x - y;
         if(diff < 0) {
            diff = -diff;
         }

         return diff < 0.0001;
      }


^^^^^^^^^^^^^^^
Top-Down Design
^^^^^^^^^^^^^^^
.. section 6

.. admonition:: Chapter Files

  We’ll be using several files throughout this section. It might be helpful to go ahead and download them now and move them to the folder you are currently programming in. (It's also a good idea to go ahead and create a new folder for this chapter and use that as your current folder, so that you don't clutter up whatever else you were working on.)

  .. list-table::
    :align: left
    :widths: auto

    * - :download:`notes.txt <../_static/program_design_in_cpp/notes.txt>`

      - .. reveal:: notes_txt_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>notes.txt</code>

          .. literalinclude:: ../_static/program_design_in_cpp/notes.txt
            :lines: 1-1
            :append: ...

      - Dr. Juett's encrypted notes
      
    * - :download:`caesar.h <../_static/program_design_in_cpp/caesar.h>`

      - .. reveal:: caesar_h_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>caesar.h</code>

          .. literalinclude:: ../_static/program_design_in_cpp/caesar.h
            :lines: 1-7

      - Header file for Casear Cipher module
      
    * - :download:`caesar.cpp <../_static/program_design_in_cpp/caesar.cpp>`

      - .. reveal:: caesar_cpp_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>caesar.cpp</code>

          .. literalinclude:: ../_static/program_design_in_cpp/caesar.cpp
            :lines: 1-20
            :append: ...

      - Functions for Ceaser Cipher module

    * - :download:`encryptDocument.cpp <../_static/program_design_in_cpp/encryptDocument.cpp>`

      - .. reveal:: encryptDocument_cpp_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>encryptDocument.cpp</code>

          .. literalinclude:: ../_static/program_design_in_cpp/encryptDocument.cpp
            :lines: 1-20
            :append: ...

      - Driver file for encrypting a document with the Caesar Cipher

    * - :download:`document.h <../_static/program_design_in_cpp/document.h>`

      - .. reveal:: document_h_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>document.h</code>

          .. literalinclude:: ../_static/program_design_in_cpp/document.h
            :lines: 1-9

      - Header file for documents module

    * - :download:`document.cpp <../_static/program_design_in_cpp/document.cpp>`

      - .. reveal:: document_cpp_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>document.cpp</code>

          .. literalinclude:: ../_static/program_design_in_cpp/document.cpp
            :lines: 1-20
            :append: ...

      - Functions for documents module

    * - :download:`frequencyAttack.cpp <../_static/program_design_in_cpp/frequencyAttack.cpp>`

      - .. reveal:: frequencyAttack_cpp_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>frequencyAttack.cpp</code>

          .. literalinclude:: ../_static/program_design_in_cpp/frequencyAttack.cpp
            :lines: 1-20
            :append: ...

      - Functions for frequency attack

  .. reveal:: program_design_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for C++
    
    .. include:: ../common/cpp_download_instructions.in.rst

Up until this point, we have been using bottom-up design to write our program. What if we wanted to approach this program from top-down design instead? Top-down design starts by looking at the big picture of what the end result will be, and then breaks it down into smaller steps after that.

In the next few videos, we'll use top-down design to clean up our proof-of-concept driver program so that it implements our overall program at a high level.

.. youtube:: Rfb3LOIH1M8
   :divid: ch17_06_vid_top_down_design
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   To begin the top-down design process, we wrote some pseudocode to sketch out the high-level steps of our program. Then, we were able to convert some of our pseudocode to code and identify any remaining helper functions that we need to write.

We identified two new functions that we need to implement: :code:`loadDocument()` and :code:`writeDocument()`. Let's add these functions in a new module, :code:`document.cpp` and :code:`document.h`.

.. youtube:: mcp8F2Xl2JI
   :divid: ch17_06_vid_finishing_up
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   We implemented the :code:`loadDocument()` and :code:`writeDocument()` functions, and tested our functions. When we tested our functions, we saw that they didn't work correctly.
   
   **Debugging** is the process of hypothesis testing. We come up with an idea of what could be wrong, and then we determine what information we need from the program to see if our idea was correct. We can use :code:`cout` statements to print out useful information to help us narrow down where the problem is.

Before we move on, it's worth mentioning that the parameters for our document functions take in :code:`istream` and :code:`ostream` parameters, which are a more generic type than the file specific input/output streams :code:`ifstream` and :code:`ofstream`. In general, it's a good idea to make custom functions for input and output work with the more generic types, so that those functions are more flexible if we decided we would like to use them somewhere else as well. For example, since :code:`writeDocument` takes in any :code:`ostream` parameter, it could potentially write output to a file through an :code:`ofstream` *OR* to the terminal through :code:`cout`, which is just a different kind of :code:`ostream`.

.. admonition :: Be careful!

   Stream parameters are always passed by reference (i.e. with the :code:`&` in the parameter declaration), because passing by value would make a copy, and making a copy of a stream doesn't really make sense (and won't compile).

^^^^^^^^^^^^^^^^^
Cracking the Code
^^^^^^^^^^^^^^^^^
.. section 7

Finally, let's see if we can't get my notes back...

.. youtube:: 7PBEf-ioKeo
   :divid: ch17_07_vid_cracking_the_code
   :height: 315
   :width: 560
   :align: center

.. admonition::  Video Recap

   We used a **frequency analysis attack** to decrypt Dr. Juett's notes. For this attack, we count up the frequency of each letter in the encrypted document, and then we match the most common letters in the encrypted document with the most common letters in the English language. This lets us calculate the offset used in the Caesar Cipher.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* **Bottom-down design** starts by identifying specific features that we'll need in our program and then writing functions that accomplish these specific features. **Top-down design** starts by looking at the big picture of what the end result will be, and then breaks it down into smaller steps after that.
* One way to organize larger programs is to write our own modules of code. A module contains a specific set of functionality in your code. A module usually consists of a :code:`.cpp` file and a :code:`.h` (header) file. The header file will contain function prototypes, while the :code:`.cpp` file will contain the implementations of these functions.
* To compile a program with multiple modules, all of the :code:`.cpp` files must be specified in the compilation command. Header files are never specified in the compilation command.
* **Unit testing** is the practice of testing each function individually to make sure it behaves according to its interface. We often do this using the :code:`assert` function.
* It's not safe to use :code:`==` or :code:`!=` with floating point numbers. Instead, we can check whether the numbers are very close.
* **Debugging** is the process of hypothesis testing. We come up with an idea of what could be wrong, and then we determine what information we need from the program to see if our idea was correct. We can use :code:`cout` statements to print out useful information to help us narrow down where the problem is.

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.