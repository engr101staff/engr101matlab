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

=========================
Strings, Streams, and I/O
=========================

.. admonition:: Chapter Files

  We'll be using a text file for one of this chapter's exercises. It might be helpful to go ahead and download it now and move it to the folder you are currently programming in. (It's also a good idea to go ahead and create a new folder for this chapter and use that as your current folder, so that you don't clutter up whatever else you were working on.)

  .. list-table:: 
    :align: left
    :widths: auto
    
    * - :download:`dome.txt <../_static/strings_streams_and_io/dome.txt>`

      - .. reveal:: dome_txt_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>dome.txt</code>

          .. literalinclude:: ../_static/strings_streams_and_io/dome.txt

      - Some text about domes
    
  .. reveal:: strings_streams_io_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for C++
    
    .. include:: ../common/cpp_download_instructions.in.rst


Like we saw with MATLAB, there are many built-in functions in C++ that perform a wide variety of tasks. Many of these functions are contained in **libraries**, which we can include in our code.
In this chapter, we'll specifically look at the :code:`<string>` library and the :code:`<fstream>` library, which allows us to read from files and write to files.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The Standard Library and :code:`#include`
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 2

Much of the functionality in C++ is built into the **C++ standard library**. You can think of this sort of like MATLAB's wide array of toolboxes, which are additional features you can add on to use in your code. To use part of the standard library, use the :code:`#include` directive. For example, if you would like to use :code:`cout` and :code:`cin` in your code, you'll need to include the :code:`<iostream>` library at the top of your :code:`.cpp` file like this:

.. code-block:: cpp

   #include <iostream>
   using namespace std;

|

The :code:`using namespace std;` directive is generally used with included libraries, so that we can use shorthand names like :code:`cout` and :code:`cin`. Without it, we would need to write out :code:`std::cout` and :code:`std::cin`. The :code:`using namespace std;` line implicitly puts the :code:`std::` on everything so you don't have to.

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

.. admonition:: Video Recap

   Including libraries allows us to use features and functions from that library. We specifically looked at the function :code:`rand()`, which allows us to use random numbers in our code.

^^^^^^^^^^^^^^^^^^^^^^^
Introduction to Strings
^^^^^^^^^^^^^^^^^^^^^^^
.. section 3

One library that we can use is the :code:`string` library. We've briefly looked at strings previously. Let's take a closer look at how they work.

In general, the **string** datatype represents a sequence of text characters - perhaps a single word, a whole sentence, or even a full document of text, since spaces and newlines can be represented as special characters.

.. youtube:: bHiUfnxg07U
   :divid: ch15_03_vid_intro_to_strings
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   In order to use strings in a C++ program, first make sure to use the line :code:`#include <string>` at the top of your source file, and then create variables with the :code:`string` datatype. As usual, :code:`using namespace std;` makes things more convenient (otherwise the name of the type is :code:`std::string`).

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

---------------------------
Exercise: Repeating String
---------------------------

Write a function called :code:`repeat` that repeats a given string a certain number of times and returns the result. For instance, if we repeated the string "mouse" five times, the resulting string would be "mousemousemousemousemouse". (Don't output anything in the function; just return the repeated string.) 

We've provided the function interface and some testing code in :code:`main` for you.

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

.. admonition:: Video Recap

   There are two big differences in how we index in C++ vs. MATLAB. In C++:

   - Indexing uses the square brackets :code:`[]` operator rather than parentheses
   - The first index starts at :code:`0` rather than :code:`1`

   Instead of using :code:`[]` indexing, you can use :code:`.at()` to index into a string. Using this function warns you if you are about to go out-of-bounds, but is a little bit slower.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
More String Operations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Let's look at a few more useful string operations.

----------------
:code:`.empty()`
----------------

The :code:`empty` function tells you whether a string is the empty string (:code:`""`) or not. For example:

.. code:: cpp

   string chant = "Hail to the victors valiant";
   if (chant.empty()) {
      cout << "Empty string" << endl;
   } else {
      cout << "Not empty" << endl; // This will print out
   }

---------------
:code:`.find()`
---------------

The :code:`find` function searches a string for the first occurrence of a second string. For example, this code finds the first occurrence of "victors" in the string "Hail to the victors valiant":

.. code :: cpp

   string chant = "Hail to the victors valiant";
   int index = chant.find("victors"); // this will return index 12

The :code:`find` function returns the index where the first occurrence of a second string is located. If the second string is not in the first string, :code:`find` will return :code:`string::npos`. You can check for this using an if statement:

.. code :: cpp

   string chant = "Hail to the victors valiant";
   int index = chant.find("kitten");
   if (index == string::npos) {
      cout << "Couldn't find!" << endl; // This will print out
   } else {
      cout << "Found!" << endl;
   }

|

.. mchoice:: ch15_07_ex_find_01

  What will the value of ``index`` be after the following code runs?

  .. code :: cpp

   string chant = "Hail to the victors valiant";
   int index = chant.find("the");

  - ``8``

    + Correct! "the" begins at index 8.

  - ``9``

    - Oops! Remember that string indexing starts at 0, not 1.

  - ``12``

    - Oops! If you're having trouble, try this out in VS Code!

  - ``string::npos``

    - Oops! This is what ``find`` returns when it can't find the second string in the first string. If you're having trouble, try this out in VS Code!

------------------
:code:`.replace()`
------------------

The :code:`replace` function takes three arguments: an integer :code:`pos`, an integer :code:`len`, and a string :code:`str2`. The :code:`replace` function replaces the portion of the string that begins at character :code:`pos` and spans :code:`len` characters by new contents :code:`str2`. Consider an example:

.. code :: cpp

   string chant = "Hail to the victors valiant";
   chant.replace(0, 4, "HAIL");
   cout << chant; // will print "HAIL to the victors valiant"

In this example, we wanted to replace the portion of :code:`chant` that begins at :code:`0` and spans :code:`4` characters. We replaced it with a new string: "HAIL".

Note that :code:`len` does not need to be the same length as :code:`str2`.

.. fillintheblank:: ch15_07_ex_replace_01

   What will the following code output?

   .. code :: cpp

      string chant = "Hail to the victors valiant";
      chant.replace(12, 7, "wolverines");
      cout << chant;
   
   |blank|
  
   - :Hail to the wolverines valiant: Correct! We replaced the portion of chant that begins at 12 and spans 7 characters with the new string "wolverines".
     :x: Incorrect. Which index are we starting at? How many characters are replacing? If you're having trouble, try this out in VS Code!


.. fillintheblank:: ch15_07_ex_replace_02

   What will the following code output?

   .. code :: cpp

      string chant = "Hail to the victors valiant";
      chant.replace(4, 4, "");
      cout << chant;
   
   |blank|
  
   - :Hailthe victors valiant: Correct! We replaced the portion of chant that begins at 4 and spans 4 characters with the empty string.
     :x: Incorrect. Which index are we starting at? How many characters are replacing? If you're having trouble, try this out in VS Code!


There's more ways that we can use the :code:`replace` function. Open up the `documentation <https://www.cplusplus.com/reference/string/string/replace/?kw=string%3A%3Areplace>`__ and scan through it. Use the documentation to answer the following question.

.. mchoice:: ch15_07_ex_replace_03

  If you want to replace all of the characters until the end of the string, what should the ``len`` parameter be?

  - ``0``

    - Oops! Find the parameters section of the documentation, and look at the ``len`` parameter.

  - ``-1``

    - Oops! Find the parameters section of the documentation, and look at the ``len`` parameter.

  - ``string::infinity``

    - Oops! Find the parameters section of the documentation, and look at the ``len`` parameter.

  - ``string::npos``

    + Correct! According to the documentation, A value of ``string::npos`` indicates all characters until the end of the string.


----------------
:code:`.erase()`
----------------

The :code:`erase` function takes two arguments: an integer :code:`pos` and an integer :code:`len`. The :code:`erase` function goes into the string at index :code:`pos` and removes :code:`len` characters. Consider these examples:

.. code-block :: cpp

   #include <iostream>
   #include <string>

   using namespace std;

   int main() {

      string chant;
   
      // remove characters starting at the beginning of the string
      chant = "Hail to the victors valiant";
      chant.erase(0, 12);
      cout << chant; // will print "victors valiant"
      cout << endl;

      // remove characters starting at the beginning of the string
      chant = "Hail to the victors valiant";
      chant.erase(0, 8);
      cout << chant; // will print "the victors valiant"
      cout << endl;

      // remove characters from the middle of the string
      chant = "Hail to the victors valiant";
      chant.erase(12, 8);
      cout << chant; // will print "Hail to the valiant"
      cout << endl;

      // remove characters from the end of the string
      chant = "Hail to the victors valiant";
      chant.erase(12, 25); // len is too large for the end of the string
                           // so the rest of the string is removed
      cout << chant; // will print "Hail to the "
      cout << endl;

      // remove characters from the end of the string
      chant = "Hail to the victors valiant";
      chant.erase(5, chant.npos);   // use npos to remove all remaining
                                    // characters in the string
      cout << chant; // will print "Hail"
      cout << endl;

   }

Try changing the values for :code:`pos` and :code:`len` and observe which characters are erased in the string.





------------------
:code:`.substr()`
------------------

The :code:`substr` function creates a new string from a substring of another string. It takes two parameters: :code:`pos` and :code:`len`. It returns a new substring starting at character :code:`pos` and going :code:`len` characters. For example,

.. code :: cpp

   string chant = "Hail to the victors valiant";
   string newString = chant.substr(0, 4); // newString is now "Hail"

|

.. fillintheblank:: ch15_07_ex_substr_01

   What is the value of ``newString`` after the following code runs?

   .. code :: cpp

      string chant = "Hail to the victors valiant";
      string newString = chant.substr(12, 4);
   
   |blank|
  
   - :vict: Correct! We took the substring that begins at position 12 and has a length of 4 characters.
     :x: Incorrect. Which index are we starting at? How many characters should the substring be? If you're having trouble, try this out in VS Code!



^^^^^^^^^^^^^^^^^^^^^
User Input and Output
^^^^^^^^^^^^^^^^^^^^^
.. section 5

In addition the :code:`string` library, we will also use the :code:`iostream` library a lot, which allows us to do user input and output.

We call the person who runs or uses a program the "*user*", and sometimes we want to communicate with them by printing out messages or having them type input at the terminal and hit the *enter* key.

We've seen previously that this can be accomplished with :code:`cout` (the standard output stream) and :code:`cin` (the standard input stream).

Let's look at some more details and a few examples:

.. youtube:: RY4JDxlx-Kk
   :divid: ch15_05_vid_intro_to_user_io
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   :code:`cout` lets us print output to the console. Printing out :code:`endl` prints out a new line. :code:`cin` lets us get input from the user. When you use :code:`cin`, the program will block until the user inputs something. The user input will go into a **buffer**, a holding place for data until it is processed and used.

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

.. admonition:: Video Recap

   We can use :code:`cin` to read in both characters and strings. The :code:`getline` function can be used to read an entire line of input into a string variable:

   .. code-block :: cpp

      string c;
      getline(cin,c);

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Common Patterns for User Input
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 6

When we are working with user input, there are some useful operations that come up repeatedly. In this section, we'll take a look at some of these common patterns. You can refer back to this section for reference as you write your programs.

--------------------------------
Common Pattern: Validating Input
--------------------------------

Sometimes we would like to verify that the user actually entered reasonable input. We can do this with iteration - basically, set up a loop that keeps asking them until they give us something that meets our critera.

Let's consider the example of requiring the user to enter a positive number. Note this goes beyond the *type* of the input and actually has to do with the *value* they enter:

.. youtube:: xWBXnb8ow7g
   :divid: ch15_06_vid_validating_input
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   Here's the general pattern for validating input:

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

.. admonition:: Video Recap

   Here's the general pattern for detecting a sentinel (here, our sentinel value is "done"):

   .. code-block :: cpp

      string x;
      while(cin >> x && x != "done") {
         // do something with x
      }

--------------------------------
Exercise: Annoying Echo Program
--------------------------------

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

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
File Input/Output with Streams
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 7

A third library that we will use frequently is the :code:`fstream` library, which lets us use streams to read/write data from/to files.

.. youtube:: X_rhfJBt54I
   :divid: ch15_07_vid_file_streams
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   To work with files, we need to include the :code:`<fstream>` library. To write to a file, we use an :code:`ofstream` object:

   .. code-block :: cpp

      ofstream fout("myFile.txt");
      fout << "Something to write to the file" << endl;
      fout.close();

   |

   To read in from a file, we use an :code:`ifstream` object:

   .. code-block :: cpp

      ifstream fin("myFile.txt");
      string word;
      fin >> word;
      fin.close();

   |

   To check that a file opened correctly, use :code:`fin.is_open()`. If the file did not open correctly, you can :code:`return 1;` in the :code:`main()` function. This exits the program, and acts as an "exit code", telling the person who ran the code that something went wrong.

-------------------------------------
Common Pattern: Reading Until The End
-------------------------------------

Sometimes, we don't know how much input is in a file ahead of time. The following pattern allows you to detect the end of a file by using the read operation itself in the condition of a loop.

.. youtube:: yTOl6FEAD4k
   :divid: ch15_07_vid_reading_until_the_end
   :height: 315
   :width: 560
   :align: center

.. admonition:: Video Recap

   If we don't know the size of a file ahead of time, we can use a loop to keep reading the file in until we reach the end:

   .. code-block :: cpp

      ifstream fin("myFile.txt");
      string word;
      while (fin >> word) {
        // do something with the word
      }
      fin.close();

In the previous example, we used a loop to read individual words from a file until we reached the end of the file. Similarly, we can read entire lines (using :code:`getline`) from a file until we reach the end of the file. Compare this example to our previous code example:

.. code-block :: cpp

   ifstream fin("myFile.txt");
   string line;
   while (getline(fin,line)) {
      // do something with the line
   }
   fin.close();

----------------------------------------------------
Common Pattern: Reading In Multiple Pieces of Data
----------------------------------------------------

Often, we are working with files that have different types of data in them. Let's suppose we have the following file with information about various world cities. Each line of the file contains three pieces of information: the city name, the average temperature of the city (in Fahrenheit), and the population of the city.

.. code-block :: none

  Algiers 63.3 3915811
  Baghdad 72.99 8126755
  Taipei 73.4 2646204
  ...
  Wichita 57.0 391352

We want to read this data in our program. We want to put the city name in a :code:`string` variable, the temperature in a :code:`double`, and the population in an :code:`int`. We can follow a similar pattern to the previous example:

.. code-block :: cpp

  ifstream fin("cities.dat");

  string cityName;
  double avgTemp;
  int pop;

  while (fin >> cityName >> avgTemp >> pop) {
      // process this line of data
  }


The loop will keep iterating until we reach the end of the file. Each time through the loop, we will read in three variables - :code:`cityName`, :code:`avgTemp`, and :code:`pop`.

----------------------
Exercise: Website Data
----------------------

For this exercise, imagine that you are designing a website, and you want to see information about who is visiting your website, in order to better optimize the website layout. You have a data file :code:`website_traffic.dat` that looks like this:

.. code-block :: none

   113.1.60.173 10:59am 100 2
   141.234.110.240 11:34pm 800 20
   77.191.52.132 7:02pm 600 3
   118.170.76.10 6:00am 200 0
   ...

Each line in the file contains data about one unique visitor to your website. Each line contains the following four pieces of information: the IP address of the visitor, the time that they first visited the website, how many seconds they spent on the website, and how many links they clicked on the website.

Arrange the lines of code below to write a program that reads in all of the data from :code:`website_traffic.dat` and then outputs the data to the terminal. Initialize the file stream before initializing the variables to hold the data from the file.

Some lines contain **mistakes** or are **unnecessary** for the function - these lines should not be selected. Make sure to place the blocks at the right indentation levels!

.. parsonsprob:: ch15_07_ex_websiteData
    :language: cpp

    -----
    #include &lt;iostream&gt;
    #include &lt;fstream&gt;
    using namespace std;
    =====
    int main() {
    =====
      ifstream fin("website_traffic.dat");
    =====
      ofstream fin("website_traffic.dat"); #paired
    =====
      if (!fin.is_open()) {
         cout << "Can't open file!" << endl;
      }
    =====
      string ip_address;
      string time;
      int duration;
      int clicks;
    =====
      double ip_address; #paired
      double time;
      int duration;
      int clicks;
    =====
      while(fin >> ip_address >> time >> duration >> clicks) {
    =====
      while(fin << ip_address << time << duration << clicks) { #paired
    =====
         cout << ip_address << " " << time << " "<< duration << " "<< clicks << endl;
    =====
      }
    =====
      fin.close();
    =====
    }
    =====

.. admonition:: Walkthrough

   .. reveal:: ch15_08_revealwt_website_data

      .. youtube:: NLkVe40IVKc
         :divid: ch15_08_wt_website_data
         :height: 315
         :width: 560
         :align: center

-----------------------
Exercise: Replace Dome
-----------------------

Let's practice file input and output. Download the file :code:`dome.txt` from the beginning of this chapter, and write a program that reads in the file, replaces each occurrence of the word "dome" with "DOME", and saves the result to a new file :file:`dome_new.txt`. (You may assume words separated by spaces, so just print out each word to your new file separated by a space as well.)

If you write your code in a file called :file:`replace_dome.cpp`, you can compile and run it with:

.. code-block:: console

   g++ replace_dome.cpp -o replace_dome
   ./replace_dome

|

.. shortanswer:: ch15_07_dome

  Paste in a copy of your completed :file:`replace_dome.cpp`  file.

.. admonition:: Walkthrough

   .. reveal:: ch15_07_revealwt_dome

      .. youtube:: -py_5iHPVLY
         :divid: ch15_07_wt_dome
         :height: 315
         :width: 560
         :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* Including libraries allows you to access additional features and functions. Some common libraries that we will use in this class are :code:`<cmath>`, :code:`<cstdlib>`, :code:`<iostream>`, :code:`<fstream>`, :code:`<iomanip>`, :code:`<string>`, and :code:`<vector>`.
* **Strings** represent sequences of text characters. The :code:`<string>` library must be included to work with strings. 
* Operations such as :code:`+`, :code:`+=`, :code:`==`, and :code:`<` work on strings.
* To get the number of characters in a string, use :code:`str.size()` or :code:`str.length()`.
* For special characters, you must use **escape sequences**. For instance, :code:`\n` represents a newline, :code:`\t` represents a tab, and :code:`\\` represents a backslash.
* Use :code:`[]` to index into a string. Indexing starts at :code:`0` rather than :code:`1`. You can also use :code:`.at()` to index into a string, which warns you if you are about to go out-of-bounds.
* Use :code:`cout` (the standard output stream) to print out messages to the terminal, and :code:`cin` (the standard input stream) to read input from the terminal. When using :code:`cin`, the input must be stored in a variable of the appropriate type.
* The :code:`getline` function can be used to read an entire line of input into a string variable.
* We can use a loop to validate that a user has entered the correct type of input, and prompt the user to re-enter the input if it is incorrect.
* We can use a loop to keep asking for input until a sentinel value is encountered.
* To output to a file, use an :code:`ofstream` object. To input from a file, use an :code:`ifstream` object. When working with files, include the :code:`<fstream>` library.
* Close a file using :code:`close()`. Check if a file opened correctly using :code:`is_open()`.
* We can use a loop to keep reading from a file until we hit the end of the file (even if we don't know how big the file is at the beginning). We can read in multiple pieces of data from our file.


You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
