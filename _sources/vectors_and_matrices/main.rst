.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../../_static/common/css/matlab.css">
   <script src="../../_static/common/js/exercises.bundle.js"></script>

====================
Vectors and Matrices
====================

^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^

As we mentioned at the end of Chapter 1, a key strength of MATLAB is support for working with vectors and matrices just as easily as scalar values. A scalar is just a plain old number, like 12 or 97.4. 

A vector is a one-dimensional sequence of numbers:

.. image:: img/vector.png
   :width: 200
   :align: center
   :alt: A row vector containing [1, 3, 6, 7, 9].

|

A matrix is a two-dimensional grid of numbers:

.. image:: img/matrix.png
   :width: 150
   :align: center
   :alt: A 2-by-3 matrix containing [7, 3, 9 ; 5, 7, 2].

|

Internally, MATLAB treats all data as a grid-like structure called an **array**. Scalars, vectors, and matrices are all arrays with different dimensionality (e.g. a Matrix is a 2D array).

While "array" is the technical term, most often people just call things vectors or matrices as appropriate. After all, it's called MATLAB (Matrix Laboratory), not ARRLAB.

.. image:: img/arrays.png
   :width: 560
   :align: center
   :alt: A 2-by-3 matrix containing [7, 3, 9 ; 5, 7, 2].

|

Vectors and matrices consist of **elements** that hold data. Vectors and matrices can hold lots of different types of values, not just the integers shown in these examples. We will use vectors and matrices to hold large amounts of data and quickly analyze that data to help make decisions about things.

^^^^^^^
Warm Up
^^^^^^^
TODO

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Creating Vectors and Matrices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

We use the square brackets :code:`[]` to create a vector or a matrix. Elements may be separated by spaces or commas. Let's start by creating some vectors.

.. youtube:: U8-PvLF__RY
  :divid: ch02_02_vid_creating_vectors
  :height: 315
  :width: 560
  :align: center

-------
MatCrab
-------

.. raw:: html

  <div class="container-fluid">
   <table><tbody>
      <tr>
         <td style="width:125px; text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="width: 100px" />
         </td>
         <td>
            This is MatCrab. MatCrab knows all about MATLAB, and can help you try out MATLAB code right here in Runestone! When you see MatCrab next to an example, feel free to change the code in the example if you have a "what-if" question and want to try something out. To run the code, hit <enter>. (If you need to type a newline, use shift+<enter>.) You can also click the "Reset" button to go back to the original example.
         </td>
      </tr>
   </tbody></table>
  </div>


   

.. .. list-table:: test
..    * - .. image:: /_static/common/img/crabster.jpg
..          :height: 60px
..          :alt: The MatCrab mascot, a cartoon crab
..      - This is MatCrab. They can help you with stuff.

----------------
Creating Vectors
----------------

.. include:: content/creating_vectors.in.rst

--------------------------
Exercise: Creating Vectors
--------------------------

.. include:: ex/creating_vectors.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch02_02_revealwt_creating_vectors

    .. youtube:: m2VFdVWN28s
      :divid: ch02_02_wt_creating_vectors
      :height: 315
      :width: 560
      :align: center

--------------
Range Notation
--------------

Sometimes, we want to make a vector that has elements that contain evenly-spaced values between a starting value and an ending value. We can use range notation with the colon :code:`:` operator to create evenly-spaced vectors.

.. youtube:: Cqz_GSm7jKc
  :divid: ch02_02_vid_range_notation
  :height: 315
  :width: 560
  :align: center

|

.. include:: content/range_notation.in.rst

------------------------
Exercise: Range Notation
------------------------

.. include:: ex/range_notation.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch02_02_revealwt_range_notation

    .. youtube:: Pj0FRVxQoK8
      :divid: ch02_02_wt_range_notation
      :height: 315
      :width: 560
      :align: center

-----------------
Creating Matrices
-----------------

A matrix is also created with the square brackets :code:`[]`. Rows are separated with a semicolon :code:`;` (or a newline) and each element in a row is separated with commas or spaces, just like a vector. For example:

Watch this video to see more examples of creating matrices:

.. youtube:: pg5QlQwnpdw
  :divid: ch02_02_vid_creating_matrices
  :height: 315
  :width: 560
  :align: center

|

.. include:: content/creating_matrices.in.rst

---------------------------
Exercise: Creating Matrices
---------------------------

.. include:: ex/creating_matrices.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch02_02_revealwt_creating_matrices

    .. youtube:: Pj0FRVxQoK8
      :divid: ch02_02_wt_creating_matrices
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^
Arithmetic Array Operations
^^^^^^^^^^^^^^^^^^^^^^^^^^^

In MATLAB, almost anything you can do with a scalar, you can do with a vector or matrix (since these are all fundamentally "arrays" underneath). Let's take a look at how some of the common math operations like addition and multiplication work with matrices.

.. youtube:: zGhVfJZCmjc
  :divid: ch02_03_vid_arithmetic_array_operations
  :height: 315
  :width: 560
  :align: center

|

Remember, for the *multiplicative* operators, you need to use a dot in order to get *element-by-element* behavior (the versions without a dot do "matrix multiplication", which is a very different kind of operation used in linear algebra). Here are the versions you'll want in ENGR 101:

.. image:: img/array_operations.png
  :width: 560
  :align: center
  :alt: Table showing array operations vs. matrix operations.

-------------------------------------
Exercise: Arithmetic Array Operations
-------------------------------------

.. include:: ex/arithmetic_array_operations

^^^^^^^^^^^^^^^
Vector Indexing
^^^^^^^^^^^^^^^

To access elements in a vector or matrix, you can use **indexing**. Here's a look at the basic syntax and at how indexing works for vectors.

.. youtube:: jbpWJdUXamk
  :divid: ch02_04_vid_vector_indexing
  :height: 315
  :width: 560
  :align: center

|

TODO: make the end keyword actually work in MatCrab lol

Here's more examples of the different ways you can specify indices. Feel free to mess around with each to get a handle on what's going on.

Use a **single** number in the parentheses to select **one element**:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [8, 6, 7, 5, 3, 0, 9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x(3);
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

Use a **vector of indices** in the parentheses to select **multiple elements**:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [8, 6, 7, 5, 3, 0, 9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x([3, 5, 1]);
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

Use **range notation** in the parentheses to conveniently select **a range of elements**. The end keyword works nicely here so that you don't have to figure out and hardcode the last index.

TODO use end keyword in example below

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [8, 6, 7, 5, 3, 0, 9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x(3:2:7);
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

Use the **colon operator** in the parentheses to select **all elements**. You get them back as a column vector.

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [8, 6, 7, 5, 3, 0, 9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x(:);
            </textarea>
          </td>
          <td>
          <div class="matcrab-vis" style="height: 350px">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

-------------------------
Exercise: Vector Indexing
-------------------------

.. dragndrop:: ch02_04_ex_vector_indexing
   :feedback: Try using the MatCrab boxes above to check expressions you're not sure about!
   :match_2: x(2:4)|||<div class="matcrab-vis-exp" style="display: inline-block; pointer-events: none; margin: 0;">[2,8,2,7,3]</div>
   :match_1: x([5:-1:1])|||<div class="matcrab-vis-exp" style="display: inline-block; pointer-events: none; margin: 0;">[7,2,8]</div>
   :match_3: x([5,1,1]))|||<div class="matcrab-vis-exp" style="display: inline-block; pointer-events: none; margin: 0;">[3,3,3]</div>
   :match_4: x(2)|||<div class="matcrab-vis-exp" style="display: inline-block; pointer-events: none; margin: 0;">[7]</div>

   Match the indexing expressions below to the correct result. (Drap and drop to match.)

Assume you have these variables :code:`a`, :code:`b`, :code:`c`, and :code:`d`:

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Matrices and Row/Column Indexing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To access elements in a matrix, it's generally most useful to use **row/column indexing**. Here's the details:

.. youtube:: 5V5qAxoEKx0
  :divid: ch02_05_vid_row_column_indexing_01
  :height: 315
  :width: 560
  :align: center

|

To recap, in row/column indexing, we:

- Specify separate row/column indices
- Specify rows first, then columns, separated by a comma

Here's a few practice exercises so you can get the syntax down:

.. mchoice:: ch02_05_ex_row_column_indexing_01
  :answer_a: x[2, 3]
  :answer_b: x(3, 2)
  :answer_c: x(2, 3)
  :answer_d: x(4)
  :correct: c
  :feedback_a: Oops! Remember that indexing uses :code:`( )` not :code:`[ ]`.
  :feedback_b: Oops! Remember that you need to specify the row(s) first, and then the column(s).
  :feedback_c: Correct! This element is in row 2, column 3.
  :feedback_d: Oops! 4 is the correct value, but you need to select by the location (i.e. row and column).

  Which expression below selects the element shown from the matrix :code:`x`?

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = [4,2,6,3;7,2,4,3;4,6,8,1];
      y = x(2,3)
    </div>

.. mchoice:: ch02_05_ex_row_column_indexing_02
  :answer_a: y = x(7, 3, 3)
  :answer_b: y = x(2,[1,4,4])
  :answer_c: y = x(2,[1,4])
  :correct: b
  :feedback_a: The 7, 3, and 3 are the values in the elements of :code:`x`. Think about how you index into x to select the elements that have those values.
  :feedback_b: Correct! The 2 in the row index selects only the second row, while :code:`[1,4,4]` for the column indices selects the first element in the second row, the fourth element, and then the fourth element again.
  :feedback_c: Almost! This statement selects the correct elements, but we want to select one of the elements twice. How can you do that with indexing?

  Which expression below selects the element shown from the matrix :code:`x`?

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = [4,2,6,3;7,2,4,3;4,6,8,1];
      y = x(2,[1,4,4])
    </div>

Just like with vector indexing, we can index in several different ways. For rows and columns, you can:

- Use either a **single number** to select one row or column.
- Use a **vector of indices** to select several rows or columns.
- Use the **colon operator** to select full rows or columns.

Let's look at some more examples:

.. youtube:: b5YvVqV6HN4
  :divid: ch02_05_vid_row_column_indexing_02
  :height: 315
  :width: 560
  :align: center

|

Indexing can actually get kind of complicated, but the good news is there are three common patterns that generally do the trick:


**1** - Selecting a single, specific element by row/column:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [4,2,6,3,8,2;7,2,4,3,1,5;4,6,8,1,0,9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x(1,3);
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

**2** - Selecting a full row or column. For example, here's selecting the second row:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [4,2,6,3,8,2;7,2,4,3,1,5;4,6,8,1,0,9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x(2, :);
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

TODO: use end keyword in example below

**3** - Selecting a range of rows/columns. For example, here's how to select every other column:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [4,2,6,3,8,2;7,2,4,3,1,5;4,6,8,1,0,9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x(:, 1:2:4);
            </textarea>
          </td>
          <td>
          <div class="matcrab-vis" style="height: 350px">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Manipulating Arrays with Indexing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

We can also use indexing to change the values of certain elements in a matrix. Basically, you use an indexing expression as the target on the left hand side of an assignment. Check it out:

.. youtube:: oQOlymiHS34
  :divid: ch02_06_vid_manipulating_arrays
  :height: 315
  :width: 560
  :align: center

|

-----------------------------
Exercise: Manipulating Arrays
-----------------------------

.. mchoice:: ch02_06_ex_manipulating_arrays_01
  :answer_a: x(1,1:4) = 10;
  :answer_b: x(:,1) = 10;
  :answer_c: x(1,:) = 10;
  :correct: c
  :feedback_a: Hmmm…. this answer works for this particular value of :code:`x`, but it won't work for any size matrix. How can this answer be made to work for any size matrix?
  :feedback_b: Oops! Remember that you need to specify the row(s) first, and then the column(s).
  :feedback_c: Correct! The 1 in the row index selects only the first row, while the : for the column indices selects all of the columns.

  Which expression below sets each element in the first row of :code:`x` to have the value 10, no matter how big the matrix is?

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = [4,2,6,3;7,2,4,3;4,6,8,1];
      x(1,:) = 10
    </div>
    
.. mchoice:: ch02_06_ex_manipulating_arrays_02
  :answer_a: x(end,end) = x(end,end) + 1;
  :answer_b: x(3,4) = x(3,4) + 1;
  :answer_c: x = x(end,end) + 1;
  :correct: c
  :feedback_a: Correct! Using the end keywords selects the bottom right element no matter how big the array is. And since we want to change the value in :code:`x(end,end)`, the left hand side of the assignment operation also has :code:`x(end,end)`.
  :feedback_b: Hmmm…. this answer works for this particular value of :code:`x`, but it won’t work for any size matrix. How can this answer be made to work for any size matrix?
  :feedback_c: Almost! The right hand side of this assignment operation selects the correct element and increases its value by 1. But the left hand side of the assignment says to store this new value in :code:`x` (the whole matrix) and we only want to store the new value in one element of :code:`x`.

  What MATLAB code will increase the bottom-right element by 1, no matter how big the array is?

  TODO change below to use end keyword

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = [4,2,6,3;7,2,4,3;4,6,8,1];
      x(3,4) = x(3,4) + 1
    </div>

Modify the given matrices :code:`a`, :code:`b`, and :code:`c` according to the following:

- Double the value of 
- 

.. hint::

  You want to put two copies of :code:`b` on top of each other *before* attaching a copy of :code:`a` to the side. If MATLAB doesn't do these operations in the correct order, you can use an extra set of square brackets :code:`[ ]` around part of your matrix construction expression to control "order of operations", just like you might use parentheses :code:`( )` for a regular expression.

  (Or, you can also do the two steps on two different lines using an intermediate variable!)

.. raw:: html

  <div class="matcrab-variable-target-exercise container-fluid alert alert-warning">
    <div class="matcrab-setup">
      a = [3,6;9,8];
      b = [1 6 11 16 21];
    </div>
    <div class="matcrab-variable-target" data-name="c">
      [1,6,11,16,21,3,6;
      1,6,11,16,21,9,8]
    </div>
    <div class="matcrab-exercise-complete">
      Well done! The secret word is "noodle".
    </div>
    <div style="text-align: center; font-weight: bold; border-bottom: solid 1px #cccccc; padding-bottom: 5px; margin-bottom: 5px">
      
      <image src="/_static/common/img/crabster.jpg" style="height: 2em">
      MatCrab Exercise
    </div>
    <div style="margin-left: auto; margin-right: auto" class="matcrab-exercise-status matcrab-variable-exercise-group"></div>
    <div style="margin-top: 10px">
      <div class="col-xs-4" style="background-color:lavender;">
          <div style="text-align: center;">Workspace Variables</div>
          <ul class="matcrab-workspace list-group matlab-vars" ></ul>
      </div>
      <div class="col-xs-8">
          <textarea class="form-control matcrab-entry matlab-entry" rows="2" style="margin-bottom: 10px"></textarea>
          <div class="matcrab-vis matcrab-visualization" style="max-height: 300px">

          </div>
      </div>
    </div>
  </div>

.. fillintheblank:: ch02_02_ex_creating_matrices
  :casei:

  Complete the MatCrab exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :noodle: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.


To recap, in row/column indexing, we:

- Specify separate row/column indices
- Specify rows first, then columns, separated by a comma

Here's a few practice exercises so you can get the syntax down:

.. mchoice:: ch02_05_ex_row_column_indexing_01
  :answer_a: x[2, 3]
  :answer_b: x(3, 2)
  :answer_c: x(2, 3)
  :answer_d: x(4)
  :correct: c
  :feedback_a: Oops! Remember that indexing uses :code:`( )` not :code:`[ ]`.
  :feedback_b: Oops! Remember that you need to specify the row(s) first, and then the column(s).
  :feedback_c: Correct! This element is in row 2, column 3.
  :feedback_d: Oops! 4 is the correct value, but you need to select by the location (i.e. row and column).

.. shortanswer:: ch01_02_ex_programming_constructs_01

  Give an example of a *variable* from the code above.

.. shortanswer:: ch01_02_ex_programming_constructs_02

  Give an example of a *literal* from the code above.

.. shortanswer:: ch01_02_ex_programming_constructs_03

  Give an example of an *expression* from the code above.

.. .. admonition:: Walkthrough

..   .. reveal:: ch01_02_revealwt_programming_constructs_01

..     .. youtube:: Tu4ZUHTl65w
..       :divid: ch01_02_wt_programming_constructs_01
..       :height: 315
..       :width: 560
..       :align: center

^^^^^^^
Scripts
^^^^^^^

In MATLAB, a **script** is sequence of commands written out, saved into a file, and then run all at once. When we want to write a program that does something non-trivial and that we might run multiple times, a script is one of our go-to tools.

Let's take a look at an example, and along the way we'll write up our first "useful" MATLAB program.

-----------------
A Fuel Calculator
-----------------

.. youtube:: A1Beuyvju08
  :divid: ch01_03_vid_scripts_01
  :height: 315
  :width: 560
  :align: center

-----------------------------------
Exercise: Fuel Calculator Algorithm
-----------------------------------

For reference, here's the problem discussed in the video above:

.. image:: img/fuel_calculator.png
  :width: 560
  :align: center
  :alt: A screenshot of the fuel calculator problem.

|

.. shortanswer:: ch01_03_ex_fuel_calculator_algorithm

  Briefly decsribe an algorithm you could use to compute the total amount of fuel needed for the probe, and also give a few examples of *variables* and *expressions* that could be used in a program implementing that algorithm.

  .. tip::
    An **algorithm** is just a formal set of steps for solving a problem that contains enough details to be clear and unambiguous. A good way to check is to think "would someone else understand my solution by reading this?".


------------------------------------------
Implementing the Fuel Calculator in MATLAB
------------------------------------------

.. youtube:: Nmg8blikrjY
  :divid: ch01_03_vid_scripts_02
  :height: 315
  :width: 560
  :align: center

|

-------------------
Exercise: Debugging
-------------------

.. admonition:: Did you know?

  The terms "bug" and "buggy" are used to decribe defects in programs - small mistakes that can cause a whole system to malfunction. While the terms have been around since the late 1800s, one notable example occurred in 1947 when a moth (a real bug!) managed to infiltrate a Mark II computer and interferred with the operation of one of its relays.

  .. image:: img/bug.jpg
    :width: 560
    :align: center
    :alt: A moth taped to a page from a logbook.

This exercise involves three slightly different versions of the fuel calculator script, each containing a bug. Download each file, put them in your current MATLAB folder, and run them (by typing the name of the script, e.g. :code:`FuelCalculatorBuggy1`, in the command window). Use your knowledge of the way the script should work to help deciper error messages or incorrect results and track down the bug.

.. fillintheblank:: ch01_03_ex_buggy_01

  Find the bug in :download:`FuelCalculatorBuggy1.m <../_static/intro_to_matlab/FuelCalculatorBuggy1.m>` (click to download).

  .. literalinclude:: ../_static/intro_to_matlab/FuelCalculatorBuggy1.m
    :language: matlab
    :linenos:

  Which line contains the bug?

  - :15: Correct! Variable names in MATLAB are case sensitive.
    :x: Nope, try again!


.. fillintheblank:: ch01_03_ex_buggy_02

  Find the bug in :download:`FuelCalculatorBuggy2.m <../_static/intro_to_matlab/FuelCalculatorBuggy2.m>` (click to download).

  .. literalinclude:: ../_static/intro_to_matlab/FuelCalculatorBuggy2.m
    :language: matlab
    :linenos:

  Which line contains the bug?

  - :11: Correct! :code:`totalHours` should be used instead of :code:`hours`.
    :x: Nope, try again!


.. fillintheblank:: ch01_03_ex_buggy_03

  Find the bug in :download:`FuelCalculatorBuggy3.m <../_static/intro_to_matlab/FuelCalculatorBuggy3.m>` (click to download).

  .. literalinclude:: ../_static/intro_to_matlab/FuelCalculatorBuggy3.m
    :language: matlab
    :linenos:

  Which line contains the bug?

  - :12: Correct! There should only be one :code:`60 *` on this line.
    :x: Nope, try again!

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
  :width: 500
  :align: center
  :alt: Use spaces between operators and their operands.

|

**Intermediate Variables**
There's a general tradeoff between *intermediate variables* and the use of *compound expressions*. From the fuel calculator program, we could calculate the number of seconds using several intermediate variables, like this:

.. code-block:: matlab

  % Algorithm #1 from earlier
  secondsFromDays = 24 * 60 * 60 * days;
  secondsFromHours = 60 * 60 * hours;
  secondsFromMinutes = 60 * minutes;
  seconds = secondsFromDays + secondsFromHours + secondsFromMinutes;

Or we could use one compound expression, like this:

.. code-block:: matlab

  % Algorithm #3 from earlier
  seconds = 24 * 60 * 60 * days + 60 * 60 * hours + 60 * minutes;

Both approaches work equally well in this case, and both are "correct" since they each perform the correct calculations. In your programs, judge which approach best fits the needs of your code and is the easiest to understand. You should also consider whether you need to use any of the intermediate values in other calculations.

**Hardcoding**

We say a value is *hardcoded* into a program when it appears in an expression as a literal (i.e. without using a variable). Hardcoding is generally okay if the value won't reasonably change. Hardcoding is NOT okay if the value is an input, or if it might change.

.. image:: img/hardcoding.png
  :width: 500
  :align: center
  :alt: Use a separate variable for any values that might reasonably change, rather than hardcoding them.

|

^^^^^^^^^^^^^^^^^^
Update Assignments
^^^^^^^^^^^^^^^^^^

Variables in programming are different than variables in math. In math, when you say *x = 1*, you mean it. *x* is equal to 1 and always will be (at least until the next problem!). But in programming, :code:`x = 1` just means "put the value 1 in :code:`x` for now", and its value may be updated later.

We can even update the value of a variable based on its previous value! This is called an **update assignment** (or **update expression**). Let's take a look...

.. youtube:: c_O66AfWbK4
  :divid: ch01_04_vid_update_assignments
  :height: 315
  :width: 560
  :align: center

----------------------------
Exercise: Update Assignments
----------------------------

.. fillintheblank:: ch01_04_ex_buggy_01

  Consider the following code:

  .. code-block:: matlab

    x = 2;
    x = x * x + 1;
    y = x * (x + 1);
    x = y * x;
    disp(x);
    disp(y);

  What values are displayed when this code is run?

  - :150: Correct! The sequence of values for :code:`x` is 2, 5, 150.
    :x: The sequence of values for :code:`x` is 2, 5, 150. Double check which line you have that doesn't match. (Note that line 3 doesn't directly change the value of :code:`x`, although it does change :code:`y`, which will matter for line 4.)

  - :30: Correct! :code:`y` is updated once, based on the value of :code:`x` at line 3, which is 5.
    :x: Try again. Hint: :code:`y` is updated once, based on the value of :code:`x` at line 3, which is 5.

.. admonition:: Walkthrough

  .. reveal:: ch01_04_revealwt_update_assignments

    .. youtube:: -6EfvOQhUHc
      :divid: ch01_04_wt_update_assignments
      :height: 315
      :width: 560
      :align: center



^^^^^^^^^
Functions
^^^^^^^^^

Expressions in MATLAB can also use **functions** to compute results or perform operations. MATLAB has *many* built-in functions for math, data analysis, and engineering applications. You can even write your own!

.. youtube:: 1eu-RFIusOg
  :divid: ch01_05_vid_intro_to_functions
  :height: 315
  :width: 560
  :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^
So what else can MATLAB do?
^^^^^^^^^^^^^^^^^^^^^^^^^^^

MATLAB is way more than just a really fancy calculator. We will cover a lot more of what MATLAB can do as we go through the course, but let’s take a quick look to see how powerful MATLAB can be!

**Vectors and Matrices**

A key strength of MATLAB is support for working with vectors and matrices just as easily as scalar values. A scalar is just a plain old number, like 12 or 97.4. 

A vector is a one-dimensional sequence of numbers:

.. image:: img/vector.png
  :width: 200
  :align: center
  :alt: A row vector containing [1, 3, 6, 7, 9].

|

A matrix is a two-dimensional grid of numbers:

.. image:: img/matrix.png
  :width: 150
  :align: center
  :alt: A 2-by-3 matrix containing [7, 3, 9 ; 5, 7, 2].

|

Vectors and matrices can hold lots of different types of values, not just the integers shown in these examples. We will use vectors and matrices to represent real-world data (which is often more than just a single number!) and quickly analyze that data to help make decisions about things.

**Saving and Loading Workspaces**

You can save all the variables in your MATLAB workspace to a file using the :code:`save` command. Typing this line into the command window will save all the variables in the workspace to a file called :file:`weatherData.mat`:

.. code-block:: matlab

  save('weatherData.mat');

You can restore a saved workspace using the :code:`load` command. Typing this line into the command window will bring all the variables (and their values!) into the workspace from the file :code:`AnnArborTemps.mat`:

.. code-block:: matlab

  load('AnnArborTemps.mat');

The load and save commands are also available from the MATLAB menu. All workspace files use the :file:`.mat` file extension.

**Analyzing Data**

Vectors and matrices can hold a lot of data, which is very helpful. But we really need to analyze that data, not just store it. We need to know things like the biggest value, or the smallest value, or the most common value. MATLAB has a lot of built-in functions that can help us analyze data. 

**Plotting Data**

In addition to numerical analysis of data, like "what is the biggest value?", we often want to visualize how one set of data relates to another. MATLAB has a staggeringly large number of ways to plot data. We will cover some of the most commonly-used plotting styles in this class, as well as ways to make your plots clear and professional.

Watch the demo below to see examples of how we can use MATLAB to manipulate data. (The workspace file used in the demo is :download:`AnnArborTempsAug2019.mat <../_static/intro_to_matlab/AnnArborTempsAug2019.mat>`.) Much more detail to come in later chapters!

.. youtube:: mO9a57T8NJg
  :divid: ch01_06_vid_what_else
  :height: 315
  :width: 560
  :align: center

