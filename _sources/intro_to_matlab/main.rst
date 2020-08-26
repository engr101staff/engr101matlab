.. qnum::
   :prefix: Q
   :start: 1

======================
Introduction to MATLAB
======================

^^^^^^^^
Welcome!
^^^^^^^^

Welcome to ENGR 101! Please start with the video below.

.. youtube:: btFcE-fCoGk
  :divid: ch01_01_vid_welcome
  :height: 315
  :width: 560
  :align: center

^^^^^^^^^^^^^^^^^^^^^^
Introduction to MATLAB
^^^^^^^^^^^^^^^^^^^^^^

MATLAB is a programming language and environment often used in engineering applications. Let's take a quick tour of how it works.

.. youtube:: iFrEd4x8g_k
  :divid: ch01_02_vid_variables_and_expressions
  :height: 315
  :width: 560
  :align: center

|

Some fundamental tools in programming are *literals*, *variables*, and *expressions*:

* **Variables** are used to store data in the computer's memory, for example :code:`x`, :code:`ans`, or :code:`fuel_rate`.

  - **Assignment** is used to give a variable a value. In MATLAB (and many other programming languages), the :code:`=` operator is used for assignment.

  - Variables may be assigned a new value several times, overwriting the old value. Just because we run :code:`x = 5` doesn't mean we won't come back later and run :code:`x = 10` to update it. 

* **Literals** are simply data written directly into our code. They might be numbers like :code:`3` or :code:`-2.85`, but we'll also see other kinds of data. For example, text literals can be written with single quotes like :code:`hello world!`.

* **Expressions** are used to manipulate and compute new data, often by combining variables and literals, or even other sub-expressions. They generally use **operators** like :code:`+`, :code:`*`, etc.

-----------------------------------
Exercise: Variables and Expressions
-----------------------------------

.. tip::
  By the way, we end up using a lot of terms interchangably to refer to the content of programs, like *code*, *lines of code*, *commands*, *instructions*, *statements*, etc. Likewise, when we "make a program go", we might say we *run* it, *execute* it, or *launch* it. They all mean essentially the same thing and can be used interchangeably.

Consider the following MATLAB code, which might be used to calculate the net income for a server at Proxima Tea, a new drink stand we're planning to open in one of the Proxima b settlements. (If the rate seems weird, that's because it's in Proxima b currency.)


.. code-block:: matlab

  hours = 3 + 0 + 4 + 5 + 3;
  rate = 100.5;
  wage = hours * rate;
  tax = 0.24 * wage;
  net = wage - tax;

.. shortanswer:: ch01_02_ex_programming_constructs_01

  Give an example of a *variable* from the code above.

.. shortanswer:: ch01_02_ex_programming_constructs_02

  Give an example of a *literal* from the code above.

.. shortanswer:: ch01_02_ex_programming_constructs_03

  Give an example of an *expression* from the code above.

.. admonition:: Walkthrough

  .. reveal:: ch01_02_revealwt_programming_constructs_01

    .. youtube:: Tu4ZUHTl65w
      :divid: ch01_02_wt_programming_constructs_01
      :height: 315
      :width: 560
      :align: center

^^^^^^^
Scripts
^^^^^^^

In MATLAB, a **script** is sequence of commands written out, saved into a file, and then run all at once. When we want to write a program that does something non-trivial and that we might run multiple times, a script is one of our go-to tools.

Let's take a look at an example, and along the way we'll write up our first "useful" MATLAB program.

.. youtube:: iFrEd4x8g_k
  :divid: ch01_03_vid_scripts_01
  :height: 315
  :width: 560
  :align: center


.. youtube:: iFrEd4x8g_k
  :divid: ch01_03_vid_scripts_02
  :height: 315
  :width: 560
  :align: center


----------
Style Tips
----------

**Variable Names**

You get to choose the variable names used in your program, but some variable names are better than others. In general, you want to choose a variable name that describes the data being stored in the variable. We call this using *descriptive* variable names. For example, in the fuel calculator program, we have a variable that represents the rate of fuel use. We need a name for this variable:

.. image:: img/variable_names.png
  :width: 400
  :align: center
  :alt: Use meaningful, descriptive variable names.

|

**Operator Spacing**

Spacing is also important in writing expressions. The best style is to pad your binary operators with spaces, like this:

.. image:: img/operator_spacing.png
  :width: 400
  :align: center
  :alt: Use spaces between operators and their operands.

|

**Intermediate Variables**
There's a general tradeoff between *intermediate variables* and the use of *compound expressions*. From the fuel calculator program, we could calculate the number of seconds using several intermediate variables, like this:

.. code-block:: matlab

  secondsFromDays = 24 * 60 * 60 * days;
  secondsFromHours = 60 * 60 * hours;
  secondsFromMinutes = 60 * minutes;
  seconds = secondsFromDays + secondsFromHours + secondsFromMinutes;

Or we could use one compound expression, like this:

.. code-block:: matlab

  seconds = 24 * 60 * 60 * days + 60 * 60 * hours + 60 * minutes;

Both approaches work equally well in this case, and both are "correct" since they each perform the correct calculations. In your programs, judge which approach best fits the needs of your code and is the easiest to understand. You should also consider whether you need to use any of the intermediate values in other calculations.

**Hardcoding**

We say a value is *hardcoded* into a program when it appears in an expression as a literal (i.e. without using a variable). Hardcoding is generally okay if the value won't reasonably change. Hardcoding is NOT okay if the value is an input, or if it might change.

.. image:: img/hardcoding.png
  :width: 400
  :align: center
  :alt: Use a separate variable for any values that might reasonably change, rather than hardcoding them.

|

-----------------------------------
Exercise: Variables and Expressions
-----------------------------------


