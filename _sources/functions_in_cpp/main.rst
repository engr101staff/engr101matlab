.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/main4.css">
   <link rel="stylesheet" href="../_static/common/css/code3.css">
   <link rel="stylesheet" href="../_static/common/css/buttons3.css">
   <link rel="stylesheet" href="../_static/common/css/exercises3.css">
   <script src="../_static/common/js/common2.js"></script>
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

================
Functions in C++
================


^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^
.. section 1

We have seen throughout this class that functions are an incredibly useful way to organize and re-use code in MATLAB. In this chapter, we'll look at how to use functions in C++.

Before we start, recall the definition of a function that we have been using: a function is an **abstraction** over a chunk of computation (e.g., data goes in, gets processed, new data comes out). Because a function is an abstraction, we don't have to worry about how the computation works internally. The **interface** of a function describes how we use it. For example, the interface for :code:`sqrt` is "Give it a number. It gives you back a square root." The interface for MATLAB's :code:`size` function is "Give it an array. It gives you back its dimensions". The **implementation** of a function is the code that makes the function work.

Now, on to C++ functions!

^^^^^^^^^^^^^^^^
Function Basics
^^^^^^^^^^^^^^^^
.. section 2

.. youtube:: -Jv2SJXDqcs
   :divid: ch14_01_vid_function_basics
   :height: 315
   :width: 560
   :align: center

|

Here's the code that we wrote in the previous video, if you'd like to play with it more:

TODO include Lobster code (17_01)

As we saw in the previous video, here's the basic structure of a function in C++:

.. code-block:: cpp

    int square(int n) {
        return n * n;
    }

The function :code:`square` takes one :code:`int` **parameter** (a variable you can use in your function code), and returns an :code:`int` value.

.. tip ::

    Unlike MATLAB, C++ requires an explicit :code:`return` statement in each function.

Here's an example of calling this function:

.. code-block:: cpp

    int x = 3;
    int y = square(x);
    cout << y << endl;
    
When calling this function, we passed it the **argument** :code:`x`.

.. mchoice:: ch14_ex_function_basics_01
  :answer_a: There's nothing wrong with this function call.
  :answer_b: You can't call a function in a cout statement.
  :answer_c: This statement is declaring a new variable n inside the function call. Instead, you want to pass an existing variable to the function.
  :answer_d: The function takes two arguments instead of one.
  :correct: c
  :feedback_a: Oops! Look a little closer at this function call.
  :feedback_b: Oops! You are allowed to call a function in a cout statement.
  :feedback_c: Correct! If you see a TYPE, that means it's a variable declaration. Be careful about using declarations. Only declare a variable to create it - not whenever you use it.
  :feedback_d: Oops! The function we declared above only takes one argument.

  What is wrong with the following function call?
  
  .. code-block:: cpp
    
    cout << square(int n) << endl;
    
The :code:`abs` function that we wrote in the previous video can be improved. Let's look at two ways to improve this function.

.. youtube:: _gLW94n-ZrY
   :divid: ch14_02_vid_improving_abs_function
   :height: 315
   :width: 560
   :align: center

|

^^^^^^^^^^^^^^^^
Function Details
^^^^^^^^^^^^^^^^
.. section 3

.. youtube:: GSJNWx6PU3M
   :divid: ch14_03_vid_function_details
   :height: 315
   :width: 560
   :align: center

|

The previous video walked through how a function works in C++. First, the values of the argument expressions are copied into the parameter variables. The ordering of arguments you pass in is used to determine what goes to which parameter (the parameters are specified in the first line of the function, the **function signature**). Second, the code in the function runs. As soon as a return statement is encountered, the function ends immediately. Finally, the returned value transfers back to the calling code. Unlike in MATLAB, only one value can be returned.

--------------
Exercise: XXX
--------------

TODO more involved exercise (substitute for prime numbers exercise)

^^^^^^^^^^^^^^^^^^^^^^^^^
:code:`void` Functions
^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 4

Some functions don't return anything - they just do stuff. Consider the following function:

.. code-block:: cpp

    void print_row_of_X(int num) {
        for (int x = 0; x < num; ++x) {
            cout << "X" << endl;
        }
        cout << endl;
    }
    
This function takes in a number, and prints out a row of X's, where the number of X's printed is specified by the function parameter. The :code:`void` keyword in the function signature indicates that there is no return value for this function.

Generally, :code:`void` functions will have some "side effect", such as printing something out or changing the values of their parameters (more on this later!).

-----------------------------
Exercise: Printing Triangles
-----------------------------

Write a function to print out a triangle of X's:

.. code-block:: none

   X
   XX
   XXX
   XX
   X

You can use the :code:`print_row_of_X` function that we looked at above to help you.

Remember that you can use the "Simulate" button to run your code. If you're not getting quite the right output, it can be really useful to take a look at what is going on at a fine-grained level!

.. raw:: html

   <div class="lobster-ex" style="width: 700px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch14_03_ex</div>
      <div class="lobster-ex-complete-message">
         Well done! The secret word is "toast".
      </div>
   </div>

.. fillintheblank:: ch14_03_ex_print_triangle_X3
  :casei:

  Complete the Lobster exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :toast: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.

|

TODO walkthrough - slide 23

Parameters can be used to make flexible functions. In the previous example, the function only printed out a triangle of "size" 3. You could make a more flexible function by giving the function a parameter, :code:`size`, that determined how big a triangle to print (inside your function, you would need to replace the value :code:`3` with the new parameter :code:`size`). Here's what a new function signature might look like:

.. code-block:: cpp

    void print_triangle_X(int size);
    
.. shortanswer:: ch14_ex_void_functions_01
    
    Let's suppose that we want to have our function print out a triangle using any character, not just X's. How could we modify our function to accomplish this?
    
^^^^^^^^^^^^^^^^^^^^^^^^^
Functions and Scope
^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 5

.. youtube:: Zfq5kxr9v6I
   :divid: ch14_04_vid_function_and_scope
   :height: 315
   :width: 560
   :align: center

|


Here's one of the Lobster exercises that we looked at; step through the visualization of the code below to see the way variables in different scopes are handled:

.. raw:: html

   <div class="lobster-ex" style="width: 700px; max-width: initial; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch14_04_ex</div>
   </div>

To recap, variables declared outside of a function have **global scope**. Most of the time, it's a poor design choice to use global variables. Global scope is appropriate, however, for **constants**, variables that never change. Use :code:`const` to create a constant. Any variable declared inside a function (and any parameters!) will only have scope within that function.

TODO something interactive

^^^^^^^^^^^^^^^^^^^^^^^^^
Declaring Functions
^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 6

.. youtube:: mohd7eW2rM4
   :divid: ch14_05_vid_declaring_functions
   :height: 315
   :width: 560
   :align: center

|

To avoid errors, make sure to declare functions *before* they are used. One way to do this is to declare *and* define functions before :code:`main()`. Alternatively, you can use a **function prototype** to declare a function before you define it.

-----------------------------------
Exercise: Swapping Variable Values
-----------------------------------

A common task in programming is to swap the values of two variables with each other. Consider the following code:

.. code-block:: cpp

    int main() {
      int x = 2;
      int y = 7;

      // Swap the values of x and y
      x = y;
      y = x;

      cout << "x is now: " << x << endl;
      cout << "y is now: " << y << endl;
    }
    
If you run this code, you will see the following output:

.. code-block:: none

    x is now 7
    y is now 7
    
Oops! This code doesn't do what we want it to do. It doesn't swap the values of :code:`x` and :code:`y`.

.. shortanswer:: ch14_ex_swapping_variables_01

    Take a close look at the code above. Why doesn't this code work?
    
.. youtube:: 5A1Ig-gwuZU
   :divid: ch14_06_vid_swap_function
   :height: 315
   :width: 560
   :align: center

|

As we saw in our :code:`swap` function example, there are two mechanisms for parameter passing in C++. The first is **pass-by-value**, which is the default. In this method, the function is given *copies* of the argument values. The second method is **pass-by-reference** (specified with :code:`&`). In this method, there are no copies! The parameters refer to the arguments passed in. Changes to variables in the function are visible outside the function.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* 

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
