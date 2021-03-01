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

.. raw:: html

   <div class="lobster-ex" style="width: 600px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch14_01_ex</div>
   </div>

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

Now that we've seen the basics, let's dive into some more details.

.. youtube:: GSJNWx6PU3M
   :divid: ch14_03_vid_function_details
   :height: 315
   :width: 560
   :align: center

|

The previous video walked through how a function works in C++. First, the values of the argument expressions are copied into the parameter variables. The ordering of arguments you pass in is used to determine what goes to which parameter (the parameters are specified in the first line of the function, the **function signature**). Second, the code in the function runs. As soon as a return statement is encountered, the function ends immediately. Finally, the returned value transfers back to the calling code. Unlike in MATLAB, only one value can be returned.

--------------------------------------------
Exercise: Function for DNA Pattern Matching
--------------------------------------------

Let's get some practice writing functions. In the previous chapter, we wrote code for DNA pattern matching. Because of the way we structured our code, if we wanted to run through our code more than once (say, for different DNA strings), we would need to copy and paste a huge chunk of code multiple times. We can organize our code better using functions.

For this exercise, starting with the code from the previous chapter, write a function :code:`matchPattern`. The function should take in three parameters, the DNA string, the pattern string to look for, and an integer for the length of the pattern. It should return a Boolean value, :code:`true` if the pattern is found, and :code:`false` if the pattern is not found.

.. raw:: html

   <div class="lobster-ex" style="width: 600px; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch14_05_ex</div>
      <div class="lobster-ex-complete-message">
         Well done! The secret word is "peony".
      </div>
   </div>

.. fillintheblank:: ch14_05_ex_dna_function
  :casei:

  Complete the Lobster exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :peony: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.

TODO walkthrough

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

To practice, let's write a function to print out a triangle of X's:

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

.. admonition:: Walkthrough

  .. reveal:: ch14_01_revealwt_printing_triangles

    .. youtube:: JnTQ3JT4uNw
      :divid: ch14_01_wt_printing_triangles
      :height: 315
      :width: 560
      :align: center

Parameters can be used to make flexible functions. In the previous example, the function only printed out a triangle of "size" 3. You could make a more flexible function by giving the function a parameter, :code:`size`, that determined how big a triangle to print (inside your function, you would need to replace the value :code:`3` with the new parameter :code:`size`). Here's what a new function signature might look like:

.. code-block:: cpp

    void print_triangle_X(int size);
    
|
    
.. shortanswer:: ch14_ex_void_functions_01
    
    Let's suppose that we want to have our function print out a triangle using any character, not just X's. How could we modify our function to accomplish this?
    
^^^^^^^^^^^^^^^^^^^^^^^^^
Functions and Scope
^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 5

We've previously seen that you can only use a variable when it's in *scope*. Let's look at how this applies to variables in functions.

.. youtube:: Zfq5kxr9v6I
   :divid: ch14_04_vid_function_and_scope
   :height: 315
   :width: 560
   :align: center

|


Here's one of the exercises that we looked at in the video; step through the visualization of the code below to see the way the variable :code:`rad` is handled in different scopes:

.. raw:: html

   <div class="lobster-ex" style="width: 700px; max-width: initial; margin-left: auto; margin-right: auto">
      <div class="lobster-ex-project-name">ch14_04_ex</div>
   </div>

To recap, variables declared outside of a function have **global scope**. Most of the time, it's a poor design choice to use global variables. Global scope is appropriate, however, for **constants**, variables that never change. Use :code:`const` to create a constant. Any variable declared inside a function (and any parameters!) will only have scope within that function.

.. mchoice:: ch14_ex_functions_and_scope_01
  :answer_a: There's nothing wrong with this code.
  :answer_b: The variable y is not in scope in the square() function.
  :answer_c: The name of the parameter (x) needs to match the name of the argument (y).
  :answer_d: The square function is returning the wrong variable type.
  :correct: b
  :feedback_a: Oops! Look a little closer at this function call.
  :feedback_b: Correct! The variable y is declared in the main() function, and only has scope in the main() function. It is out of scope in the square() function, and we can't use it there.
  :feedback_c: Oops! Argument and parameter names can be different.
  :feedback_d: Oops! int is an appropriate type to return for this function (the square of an integer will always be an integer).

  What is wrong with the following code?
  
  .. code-block:: cpp
    
    int square(int x) {
        return y*y;
    }
    
    int main() {
        int y = 3;
        cout << square(y) << endl;
    }
    
^^^^^^^^^^^^^^^^^^^^^^^^^
Declaring Functions
^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 6

Just like a variable, you must declare a function before you can use it.

.. youtube:: mohd7eW2rM4
   :divid: ch14_05_vid_declaring_functions
   :height: 315
   :width: 560
   :align: center

|

To avoid errors, make sure to declare functions *before* they are used. One way to do this is to declare *and* define functions before they are used (often before :code:`main()`). Alternatively, you can use a **function prototype** to declare a function before you define it.

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
    
Let's see how we can fix this code.
    
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

* When defining a function, the function **signature** (the first line of the function) must include the name of the function, the types of the **parameters**, and the return type of the function.
* To call a function, we pass it **arguments**. There are two ways to pass arguments to a function: **pass-by-value** (the default) and **pass-by-reference** (specified with :code:`&`). In pass-by-value, functions are given copies of the argument values. In pass-by-reference, the parameters refer directly to the arguments passed in. Changes to the parameters are visible outside the function.
* The order of the arguments determines which argument goes with which parameter. After arguments are passed to a function, the function is run. As soon as return statement is encountered, the function ends and transfers the return value back to the calling code. Only one value can be returned from a function.
* :code:`void` functions don't return anything, but they usually have some side effect, such as printing something out or changing the values of their parameters.
* Variables declared outside of a function have **global scope**. You usually don't want to use global scope, unless you are declaring a **constant**, a variable that never changes (specified with :code:`const`).
* A function parameter or a variable declared inside a function only has scope within that function.
* You must declare a function before it is used. To do this, you can either declare *and* define a function before it's used, or you can use a **function prototype** to declare a function (and define it somewhere later).
 
You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
