.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/main4.css">
   <link rel="stylesheet" href="../_static/common/css/code3.css">
   <link rel="stylesheet" href="../_static/common/css/buttons3.css">
   <link rel="stylesheet" href="../_static/common/css/exercises3.css">
   <script src="../_static/common/js/common3.js"></script>
   <script src="../_static/common/js/lobster-exercises8.bundle.js"></script>

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


.. TODO add an introduction

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

Let's take a look at one example with the :code:`rand()` function from :code:`<cstdlib>`. This video also serves as an aside on the way pseudorandom numbers are generated in computer programs.

.. youtube:: 2I9ECdqANrk
   :divid: ch15_02_vid_libraries_and_rand
   :height: 315
   :width: 560
   :align: center

|


^^^^^^^^^^^^^^^^^^^^^^^
Introduction to Strings
^^^^^^^^^^^^^^^^^^^^^^^
.. section 3

We've briefly looked at strings previously. Let's take a closer look at how they work.

In general, the **string** datatype represents a sequence of text characters - perhaps a single word, a whole sentence, or even a full document of text, since spaces and newlines can be represented as special characters.

.. youtube:: bHiUfnxg07U
   :divid: ch15_03_vid_intro_to_strings
   :height: 315
   :width: 560
   :align: center

|

Here's a quick recap of the video. To use strings in a C++ program, first make sure to use the line :code:`#include <string>` at the top of your source file, and then create variables with the :code:`string` datatype. As usual, :code:`using namespace std;` makes things more convenient (otherwise the name of the type is :code:`std::string`).

.. code-block:: cpp

   #include <string>
   using namespace std;

Strings can be initialized with a particular value by using a string literal with double quotes, e.g. :code:`"hello"`, or can be left alone and they will default-initialize to an empty string :code:`""`.

.. code-block:: cpp

   #include <string>
   using namespace std;

   string s1 = "hello";
   string s2("hello");  // same as s1, alternate syntax
   string s3 = "";      // empty string
   string s4;           // same as s3 since strings initialize to "" by default

Strings support several operators and functions. Here's a few of the main ones:

.. list-table:: 
    :align: left
    :widths: 15 85

    * - :code:`s1 + s2`

      - Concatenate the two strings together (does not change original :code:`s1` or :code:`s2`)

    * - :code:`s1 += s2`

      - Update the value of :code:`s1` by adding the characters in :code:`s2`. Equivalent to :code:`s1 = s1 + s2`.

    * - :code:`s1 == s2`

      - Checks whether the two strings represent the same text. They do not have to be literally the same variables in memory. :code:`!=` works similarly.

    * - :code:`s1 < s2`

      - Compares the two strings *lexicographically* (i.e. alphabetically). Returns true if :code:`s1` would be listed before :code:`s1`. e.g. "apple" is less than "banana", "banana" is less than "bananas". :code:`<=, >, >=` work similarly.

    * - :code:`str.size()` or :code:`str.length()`

      - Functions that return the number of characters in the string. This does include "whitespace" characters like spaces or newlines.

.. admonition:: Heads up!

   The string operators normally work just as you would expect with strings and string literals, but there's one exception... If *both* of the operands you're using are string literals, for example :code:`"hello" + "world"` or :code:`"cat" < "bat"`, it won't work correctly! (This is because internally string literals aren't real :code:`strings` - but as long as you have at least one actual :code:`string` variable, the string literal will be converted to match and it will work.)

A :code:`string` can hold basically any character, but there are some characters that you can't type in your source file. For example, if you tried to put a *newline* character into a string, you'd just end up putting part of your code on a new line in the source file.

Instead, you use **escape sequences** to specify those special characters. Generally, a backslash character is used to specify an escape sequence. For example, :code:`\n` represents a newline and :code:`\t` represents a tab, and funny enough, :code:`\\` represents a backslash. When printed, though, strings containing these characters format according to their meaning. The line :code:`cout << "hello\nthere\n\n!"` will print out as:

.. code-block:: none

   hello
   there

   !

|

^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Exercise: Repeating String
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Write a function called :code:`repeat` that repeats a given string a certain number of times and returns the result. We've provided the function interface and some testing code in :code:`main` for you.

.. raw:: html

   <div class="lobster-ex" style="width: 600px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch15_ex_repeat</div>
      <div class="lobster-ex-complete-message">
         Well done! The secret word is "pumpkin".
      </div>
   </div>

.. fillintheblank:: ch15_03_ex_repeat
  :casei:

  Complete the Lobster exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :pumpkin: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.

.. admonition:: Walkthrough

  .. reveal:: ch15_03_revealwt_repeat
  
    .. youtube:: tY71B08AEnM
      :divid: ch15_03_wt_repeat
      :height: 315
      :width: 560
      :align: center

|


^^^^^^^^^^^^^^^
String Indexing
^^^^^^^^^^^^^^^
.. section 4

If you want to access individual characters out of a :code:`string`, you can use **indexing**.

.. youtube:: PSH7PczA5vk
   :divid: ch15_04_vid_string_indexing
   :height: 315
   :width: 560
   :align: center

|

There are two big differences in C++ vs. MATLAB. In C++:

- Indexing uses the square brackets :code:`[]` operator rather than parentheses
- The first index starts at :code:`0` rather than :code:`1`

Instead of using :code:`[]` indexing, you can use :code:`.at()` to index into a string. Using this function warns you if you are about to go out-of-bounds, but is a little bit slower.

^^^^^^^^^^^^^^^^^^^^^
User Input and Output
^^^^^^^^^^^^^^^^^^^^^
.. section 5

We call the person who runs or uses a program the "*user*", and sometimes we want to communicate with them by printing out messages or having them type input at the terminal and hit the *enter* key.

We've seen previously that this can be accomplished with :code:`cout` (the standard output stream) and :code:`cin` (the standard input stream).

Let's look at some more details and a few examples:

.. youtube:: RY4JDxlx-Kk
   :divid: ch15_05_vid_intro_to_user_io
   :height: 315
   :width: 560
   :align: center

|

.. admonition:: Note

   Keep in mind that a real program will process any pending :code:`cin` expressions *immediately* once you type some input and press *enter* at the terminal. We only need to click the step button again in Lobster because it works like a debugger and lets you run the program step-by-step instead of continuously.


--------------------------
Data Types and :code:`cin`
--------------------------

When using :code:`cin` to get input from the user, we need to make sure the type of the variable we're reading into is appropriate for the type of input we expect them to enter.

.. youtube:: 5M3-mGRsVss
   :divid: ch15_05_vid_types_and_cin
   :height: 315
   :width: 560
   :align: center

|

We can use :code:`cin` to read in both characters and strings. The :code:`getline` function can be used to read an entire line of input into a string variable:

.. code-block :: cpp

    string c;
    getline(cin,c);

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Common Patterns for User Input
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 6

--------------------------------
Common Pattern: Validating Input
--------------------------------

Sometimes we would like to verify that the user actually entered reasonable input. We can do with iteration - basically, set up a loop that keeps asking them until they give us something that meets our critera.

Let's consider the example of requiring the user to enter a positive number. Note this goes beyond the *type* of the input and actually has to do with the *value* they enter:

.. youtube:: xWBXnb8ow7g
   :divid: ch15_06_vid_validating_input
   :height: 315
   :width: 560
   :align: center

|

To recap, here's the general pattern for validating input:

.. code-block :: cpp

    double x;
    while(cin >> x && /* some condition on x is not met */) {
        cout << "Try again" << endl;
    }

------------------------------------
Common Pattern: Detecting a Sentinel
------------------------------------

Here's another pattern - we want to read input from the user until they tell us to stop. To do this, we'll look for a special input called a **sentinel**. As an example, let's write up a simple calculator program that asks the user to enter some numbers to add. The program will keep accepting numbers until they enter the sentinel value.

.. youtube:: Wy2VUXwoRSo
   :divid: ch15_06_vid_sentinel
   :height: 315
   :width: 560
   :align: center

|

To recap, here's the general pattern for detecting a sentinel (here, our sentinel value is "done"):

.. code-block : cpp::

    string x;
    while(cin >> x && x != "done") {
        // do something with x
    }
}

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Exercise: Annoying Echo Program
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Now it's your turn to practice the sentinel pattern by writing a program we like to call "the annoying echo program". It continuously accepts input from a user via :code:`cin` and then immediately echos that word back to them through :code:`cout`. (Note that this program reads word-by-word, and not line-by-line, so you should *not* use the :code:`getline` function.) However, if you enter "STOP" (in all capital letters), the program will stop.

Here's an example (note the $ indicates user input lines).

.. code-block:: console

  $ Hi
  Hi
  $ How are you
  How
  are
  you
  $ Stop
  Stop
  $ STOP
  Ok fine I'll stop :(

We've provided some starter code for you.



.. raw:: html

   <div class="lobster-ex" style="width: 600px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch15_ex_echo</div>
      <div class="lobster-ex-complete-message">
         Well done! The secret word is "echo".
      </div>
   </div>

.. fillintheblank:: ch15_06_ex_echo
  :casei:

  Complete the Lobster exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :echo: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.

.. admonition:: Walkthrough

  .. reveal:: ch15_06_revealwt_echo
  
    .. youtube:: 8hTlmoJkZ4g
      :divid: ch15_06_wt_echo
      :height: 315
      :width: 560
      :align: center

|



^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
File Input/Output with Streams
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 7

We can also use streams to read/write data from/to files.

.. youtube:: X_rhfJBt54I
   :divid: ch15_07_vid_file_streams
   :height: 315
   :width: 560
   :align: center

|

-------------------------------------
Common Pattern: Reading Until The End
-------------------------------------

Sometimes, we don't know how much input is in a file ahead of time. The following pattern allows you to detect the end of a file by using the read operation itself in the condition of a loop.

.. youtube:: yTOl6FEAD4k
   :divid: ch15_07_vid_reading_until_the_end
   :height: 315
   :width: 560
   :align: center

|

**Exercise**

Let's practice file input and output. Download the file :download:`dome.txt <../_static/strings_streams_and_io/dome.txt>` and write a program that reads in the file, replaces each occurrence of the word "dome" with "DOME", and saves the result to a new file :file:`dome_new.txt`. (You may assume words separated by spaces, so just print out each word to your new file separated by a space as well.)

If you write your code in a file called :file:`replace_dome.cpp`, you can compile and run it with:

.. code-block:: console

   g++ replace_dome.cpp -o replace_dome
   ./replace_dome

.. shortanswer:: ch15_07_dome

  Paste in a copy of your completed :file:`replace_dome.cpp`  file.

.. admonition:: Walkthrough

   .. reveal:: ch15_07_revealwt_dome

      Here's a sample solution:

      .. code-block:: cpp

         #include <iostream>
         #include <fstream>
         #include <string>
         using namespace std;
         int main() {
           string target = "dome";
           string replacement = "DOME";
           
           ifstream fin("dome.txt");
           if ( !fin.is_open() ) {
             cout << "Error opening dome.txt!" << endl;
             return 1;
           }
           
           ofstream fout("dome_new.txt");
           string word;
           while( fin >> word ) {
             if (word != target) { fout << word << " "; }
             else { fout << replacement << " "; }
           }

           fin.close();
           fout.close();
         }

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* Including libraries allows you to access additional features and functions. Some common libraries that we will use in this class are :code:`<cmath>`, :code:`<cstdlib>`, :code:`<iostream>`, :code:`<fstr3em

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
