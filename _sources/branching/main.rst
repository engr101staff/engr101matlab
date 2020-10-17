.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/matlab.css">
   <link rel="stylesheet" href="../_static/common/css/main.css">
   <link rel="stylesheet" href="../_static/common/css/code.css">
   <link rel="stylesheet" href="../_static/common/css/buttons.css">
   <link rel="stylesheet" href="../_static/common/css/exercises.css">
   <script src="../_static/common/js/common.js"></script>
   <script src="../_static/common/js/lobster-exercises.bundle.js"></script>

.. raw:: html

   <style>
      .btn {
         margin: 0;
      }
      .tab-pane {
         padding: 0;
      }
   </style>

=============================
More C++ Basics and Branching
=============================

^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^
.. section 1

In this chapter, we'll take a look at a few more fundamental details of C++, including types and type conversions, integer vs. floating point division, and boolean operations. Finally, we'll begin to dive into control flow in C++ with branching, followed up by iteration next chapter.

-------
Lobster
-------

.. raw:: html

  <div class="container-fluid">
   <table><tbody>
      <tr>
         <td style="width:175px; text-align: center">
            <img src="../_static/common/img/happylobster.jpg" style="width: 150px" />
         </td>
         <td>
            For C++, we'll use a web-based program visualization tool called "Lobster". Lobster allows you to write and run C++ code in your web browser, including for your Runestone exercises in this and future chapters. Once you've written the code, you can click the "Simulate" button, and Lobster will show you line-by-line what is going on so that you can get a better feel for what your code *actually* does. Lobster can also track checkpoints as you work through exercsies and analyze your code to help you spot common bugs.
         </td>
      </tr>
   </tbody></table>
  </div>

|

Let's take a closer look at the interface for Lobster and how you can use it to step through your code line-by-line.

.. youtube:: N3W-hlUBwXk
   :divid: ch12_01_vid_lobster
   :height: 315
   :width: 560
   :align: center

|

.. raw:: html

   <div class="lobster-ex" style="width: 600px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch12_01_ex</div>
   </div>

^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^
.. section 2

In the last chapter, we talked about how different variables can have different types. Sometimes you can "mix types" and one type will be converted into the other type. But what are the rules for this conversion? Let's do a short *inductive learning* experiment; inductive learning is when you run an experiment, observe what happens, and determine the patterns or rules based on your observations.

Use the Lobster simulation to step through the following code, which contains several **implicit conversions** between variable types allowed by C++. An implicit conversion occurs when a value of one type is converted by the compiler into a different type. (An explicit type conversion occurs when you, the programmer, write an expression to convert data from one type to another type.) When an implicit conversion is about to occur, Lobster will show a pink box around the value being converted. Take note of how the conversions might affect the data itself as it is copied from one variable to another.

.. raw:: html

   <div class="lobster-ex" style="width: 600px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch12_02_ex</div>
   </div>

Based on the simulation and your observations, answer these questions.

.. shortanswer:: ch12_02_ex_implicit_conversions_01

  Describe some of the conversions that you saw.

.. shortanswer:: ch12_02_ex_implicit_conversions_02

  Based on your observations, what do you think are the rules C++ follows at runtime to convert one type to another? 

.. admonition:: Walkthrough

  .. reveal:: ch12_02_revealwt_implicit_conversions
  
    .. youtube:: 16emLHkdSV8
      :divid: ch12_02_wt_implicit_conversions
      :height: 315
      :width: 560
      :align: center

|

^^^^^^^^^^^^^^^^^^^^^^^^^
Implicit Type Conversions
^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 3

Here's a few more details about the conversions we saw earlier:

:code:`int` to :code:`double`

Because a :code:`double` can always hold any integer value, we call this a **widening conversion** - that is, a :code:`double` is a "wider" data type than an :code:`int`, because there is a possible :code:`double` representation for every :code:`int`, plus more. Since there's no information loss (think of it as just adding a :code:`.0`), this conversion and other widening conversions are generally considered safe.

|

:code:`double` to :code:`int`

In this direction, the value is **truncated** and only the integer part of the number is retained (the fractional part can't possibly fit in an :code:`int` variable!). For similar reasons to above, this is called a **narrowing conversion**. Because the truncation involves a loss of information, these conversions can lead to bugs! (Think back to the temperature converter program from the previous chapter, where the input temperature would randomly lose its fractional part if stored in an int variable.) 

|

:code:`bool` to :code:`int`/:code:`double`

Basically, :code:`false` turns into :code:`0` and :code:`true` turns into :code:`1`.

|

:code:`int`/:code:`double` to :code:`bool`

This direction is a little more subtle. The easiest way to remember is that *only* a zero value will convert to :code:`false`. Everything else, even negative numbers, turns into :code:`true`.

|


^^^^^^^^^^^^^^^^^^^^
Arithmetic Operators
^^^^^^^^^^^^^^^^^^^^
.. section 4

Here's the basic math operators available in C++:

.. figure:: img/cpp1.png
   :width: 500
   :align: center

   ..

|

.. note::

   Since C++ doesn't have built-in vectors or matrices like MATLAB, there's no more "dot operators" to do element-by-element operations. Make sure you use just :code:`*` or :code:`/`. But don't worry, if you accidentally type :code:`.*` out of MATLAB-habit, the compiler will give you an error, and you'll know where to go to fix your error!

--------------------------------------------
Floating Point Division vs. Integer Division
--------------------------------------------

We often see two kinds of division in programming:

1. floating point division
2. integer division

**Floating point division** is what we typically think of when we think about division. For example, if we say, "*11 divided by 4 equals 2.75*" then we're talking about floating point division. We might expect to simply use the :code:`/` operator to get the exact quotient (and there is no remainder left over).

**Integer division** is what you may have done when you were younger, before you learned about fractions and decimal numbers. For example, if we say, "*11 divided by 4 yields a quotient of 2, with remainder 3*" then we're talking about integer division. In this case, we might like the :code:`/` operator to get the whole number quotient, and then use the :code:`%` operator if we need to get the remainder.

That's sort of how it works, but in C++, the kind of division depends on the *type of the operands* you give to the :code:`/` operator. Simulate this code and watch to see where you get floating point division and where you get integer division, then answer the questions below.


-----------------------------
Exercise: EX TITLE
-----------------------------

.. shortanswer:: ch09_02_ex_plotting_3d_vectors

  Consider the equation:

  .. math::

    z = x + x * sin(\frac{y}{50})

  How could we plot this in MATLAB? We know that MATLAB does't plot math functions, only data points. Open MATLAB and create the variables :code:`x` and :code:`y` where:

.. admonition:: Walkthrough

  .. reveal:: ch07_03_revealwt_city_latitude_statistics
  
    .. youtube:: GR0vdq7DWig
      :divid: ch07_03_wt_city_latitude_statistics
      :height: 315
      :width: 560
      :align: center



^^^^^^^^^^^^^^
End of Chapter
^^^^^^^^^^^^^^

This is the end of the chapter! You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.