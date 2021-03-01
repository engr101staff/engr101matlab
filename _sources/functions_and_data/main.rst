.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/matlab.css">
   <script src="../_static/common/js/common3.js"></script>
   <script src="../_static/common/js/matcrab-exercises2.bundle.js"></script>

==================
Functions and Data
==================

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Warm Up
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ex/warm_up.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch03_01_revealwt_warm_up

    .. youtube:: l8GCG6TnraY
      :divid: ch03_01_wt_warm_up
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Defining Custom Functions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ex/custom_functions.in.rst
  
------------------------------------------------------
Exercise: Function Basics
------------------------------------------------------

.. include:: ex/function_basics.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch03_02_revealwt_function_basics

    .. youtube:: Nl_eGFiq5UM
      :divid: ch03_02_wt_function_basics
      :height: 315
      :width: 560
      :align: center


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Vectorization and Data Files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ex/vectorization.in.rst

------------------------------------------------------
Exercise: Reading Soil Sample Data
------------------------------------------------------

.. include:: ex/data_files.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch03_03_revealwt_data_files

    .. youtube:: 4pR_k4Nq1GU
      :divid: ch03_03_wt_data_files
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Built-in Aggregator Functions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. youtube:: hulFvFgqX7s
    :divid: ch03_04_vid_aggregator_functions
    :height: 315
    :width: 560
    :align: center

|

To recap, if you call :code:`sum(M)` over a matrix :code:`M`, :code:`sum` will return a vector of values (it will sum up each column individually and return the vector of column sums). If you want to take the sum across the rows of the matrix, use :code:`sum(M,2)`. If you want to take the sum of all elements in a matrix :code:`M`, there are a couple of ways to do it:

1. :code:`sum(sum(M))` - **Apply the sum function twice**. The first call to :code:`sum` finds the sums of the columns. The second call adds up those sums to get the overall sum of the matrix.

2. :code:`sum(M(:))` - **Use the** :code:`:` **to select all elements in the matrix, then** :code:`sum`.

3. :code:`sum(M, 'all')` - **Use the** :code:`all` **option**. The second parameter to :code:`sum` tells MATLAB to use a different version of :code:`sum` that sums everything. This is available in newer versions of MATLAB, but unfortunately *the autograder doesn't support this option, so don't use this on projects*.

Here's are some examples of the :code:`sum()` function:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        a = [7,2,8,4;2,4,6,2;2,4,7,9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <div class="matcrab-workspace list-group matlab-vars"></div>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none; width: 400px; height: 50px; margin-bottom: 10px;">
              result = sum(a);
            </textarea>
            <div class="matcrab-vis" style="width: 400px; height: 200px">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        a = [7,2,8,4;2,4,6,2;2,4,7,9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <div class="matcrab-workspace list-group matlab-vars"></div>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none; width: 400px; height: 50px; margin-bottom: 10px;">
              result = sum(sum(a));
            </textarea>
            <div class="matcrab-vis" style="width: 400px; height: 200px">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

------------------------------------------------------
Exercise: Monthly Average of ESP
------------------------------------------------------

.. include:: ex/monthly_average.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch03_04_revealwt_monthly_average

    .. youtube:: 3Whq8_IetxM
      :divid: ch03_04_wt_monthly_average
      :height: 315
      :width: 560
      :align: center


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Parameter Passing and Scope
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. youtube:: KTNmk3TX01M
    :divid: ch03_05_vid_scope_and_parameters
    :height: 315
    :width: 560
    :align: center

------------------------------------------------------
Exercise: Parameter Passing and Scope
------------------------------------------------------

.. include:: ex/scope_and_parameters.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch03_05_revealwt_scope_and_parameters

    .. youtube:: bkn8jwEyMgY
      :divid: ch03_05_wt_scope_and_parameters
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Unit Testing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. youtube:: tSY8LcIVEI4
    :divid: ch03_06_vid_unit_testing
    :height: 315
    :width: 560
    :align: center


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* **Code duplication** is when multiple lines of code do the same thing, with different data. This can make mistakes more likely. Using functions and vectorization can reduce code duplication.
* We can write custom functions, specifying the function name, the return variables, the parameters, and the implementation of the function. This is called a **function definition**. The first line of the function is called the **function header**, and it specifies the **function interface** (the function name, return variables, and parameters).
* We can organize our data by putting it in vectors, where each column corresponds to a different variable, and each row corresponds to a different data sample.
* A **vectorized** function works on vectors or matrices, not just scalars; function operations are applied **element-by-element**. When vectorizing a function, don't forget to use the dot in your operators, so they work with vectors (e.g., :code:`.*` rather than :code:`*`).
* MATLAB has many built-in **aggregator functions** which compute aggregate information about a dataset, column-by-column. Some example aggregator functions are :code:`sum()` and :code:`prod()`. To get the sum of all elements in a matrix :code:`x`, :code:`sum()` must be applied twice: :code:`sum(sum(x))`.
* Variables in a function have a **local scope** (they only apply within that function), while variables outside a function have a **global scope**. This means that the variables inside a function are completely different from the variables outside a function.
* **Unit testing** is testing one small part of a program to make sure that an individual component works correctly. It's a good idea to write unit tests for the different pieces of a program.

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Optional Exercise: Working with Forest Fire Data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ex/forest_fires.in.rst
