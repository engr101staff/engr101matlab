.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/theme-overrides.css">

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/matlab.css">
   <script src="../_static/common/js/common3.js"></script>
   <script src="../_static/common/js/matcrab-exercises2.bundle.js"></script>

====================
Vectors and Matrices
====================

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Recall from the previous chapter that a key strength of MATLAB is support for working with vectors and matrices just as easily as scalar values. A **scalar** is a regular number, like 12 or 97.4. 

A **vector** is a one-dimensional sequence of numbers:

.. image:: img/vector.png
   :width: 200
   :align: center
   :alt: A row vector containing [1, 3, 6, 7, 9].

|

A **matrix** is a two-dimensional grid of numbers:

.. image:: img/matrix.png
   :width: 150
   :align: center
   :alt: A 2-by-3 matrix containing [7, 3, 9 ; 5, 7, 2].

|

Internally, MATLAB treats all data as a grid-like structure called an **array**. Scalars, vectors, and matrices are all arrays with different dimensionality (e.g. a matrix is a 2D array).

While "array" is the technical term, most often people just call things vectors or matrices as appropriate.

.. image:: img/arrays.png
   :width: 560
   :align: center
   :alt: A 2-by-3 matrix containing [7, 3, 9 ; 5, 7, 2].

|

Vectors and matrices consist of **elements** that hold data. Vectors and matrices can hold lots of different types of values, not just the integers shown in these examples. We will use vectors and matrices to hold large amounts of data and quickly analyze that data to help make decisions about things.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Creating Vectors
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Let's start by creating some vectors.

.. youtube:: P1GdagWbNq4
  :divid: ch02_02_vid_creating_vectors
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

  We use the square brackets :code:`[]` to create a vector or a matrix. Elements may be separated by spaces or commas. You can create vectors and matrices from other vectors and matrices as long as the result is a rectangular array (i.e. each row must have the same number of columns).

.. raw:: html

  <div class="container-fluid">
   <table><tbody>
      <tr>
         <td style="width:125px; text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="width: 100px" />
         </td>
         <td>
            This is MatCrab. MatCrab knows all about MATLAB, and can help you try out MATLAB code right here in Runestone! When you see MatCrab next to an example, feel free to change the code in the example if you have a "what-if" question and want to try something out. To run the code, hit &lt;enter&gt;. (If you need to type a newline, use shift+&lt;enter&gt;.) You can also click the "Reset" button to go back to the original example.
         </td>
      </tr>
   </tbody></table>
  </div>


   

.. .. list-table:: test
..    * - .. image:: ../_static/common/img/crabster.jpg
..          :height: 60px
..          :alt: The MatCrab mascot, a cartoon crab
..      - This is MatCrab. They can help you with stuff.

|

.. include:: content/creating_vectors.in.rst

------------------------------------------------------
Exercise: Creating Vectors
------------------------------------------------------

.. include:: ex/creating_vectors.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch02_02_revealwt_creating_vectors

    .. youtube:: m2VFdVWN28s
      :divid: ch02_02_wt_creating_vectors
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Range Notation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Sometimes, we want to make a vector that contains evenly-spaced values between a starting value and an ending value. We can use **range notation** to do this.

.. youtube:: CRCUVzo_MD4
  :divid: ch02_02_vid_range_notation
  :height: 315
  :width: 560
  :align: center

.. include:: content/range_notation.in.rst

------------------------------------------------------
Exercise: Range Notation
------------------------------------------------------

.. include:: ex/range_notation.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch02_02_revealwt_range_notation

    .. youtube:: Pj0FRVxQoK8
      :divid: ch02_02_wt_range_notation
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Creating Matrices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In addition to vectors, we can make matrices.

.. youtube:: -qmtl_FcNqE
  :divid: ch02_02_vid_creating_matrices
  :height: 315
  :width: 560
  :align: center

.. include:: content/creating_matrices.in.rst

------------------------------------------------------
Exercise: Creating Matrices
------------------------------------------------------

.. include:: ex/creating_matrices.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch02_02_revealwt_creating_matrices

    .. youtube:: bF-NeSpVScY
      :divid: ch02_02_wt_creating_matrices
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Arithmetic Array Operations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In MATLAB, almost anything you can do with a scalar, you can do with a vector or matrix (since these are all fundamentally "arrays" underneath). Let's take a look at how some of the common math operations like addition and multiplication work with matrices.

.. youtube:: LJYHXPK1H5o
  :divid: ch02_03_vid_arithmetic_array_operations
  :height: 315
  :width: 560
  :align: center

.. admonition :: Video Recap

  Adding a scalar element to an array just adds it to each element.

  "Array operations" work with arrays element-by-element. Remember, for the *multiplicative* operators, you need to use a dot in order to get *element-by-element* behavior (the versions without a dot do "matrix multiplication", which is a very different kind of operation used in linear algebra). Here are the versions you'll want in ENGR 101:

  .. image:: img/array_operations.png
    :width: 350
    :align: center
    :alt: Table showing array operations vs. matrix operations.

  |

  There is *one exception* - if at least one of the operands is a *scalar*, e.g. :code:`2 * x`, you don't technically need the dot for multiplicative operators. But it also won't hurt to use the dot there.

------------------------------------------------------
Exercise: Arithmetic Array Operations
------------------------------------------------------

.. include:: ex/arithmetic_array_operations.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch02_03_revealwt_arithmetic_array_operations

    .. youtube:: Hc-QrLqCaNY
      :divid: ch02_03_wt_arithmetic_array_operations
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Vector Indexing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To access elements in a vector or matrix, you can use **indexing**. Here's a look at the basic syntax and how indexing works for vectors.

.. youtube:: GHKUMQ9KHKs
  :divid: ch02_04_vid_vector_indexing
  :height: 315
  :width: 560
  :align: center

.. include:: content/vector_indexing.in.rst

------------------------------------------------------
Exercise: Vector Indexing
------------------------------------------------------

.. include:: ex/vector_indexing.in.rst

|

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Matrices and Row/Column Indexing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To access elements in a matrix, it's generally most useful to use **row/column indexing**. Here's the details:

.. youtube:: 5V5qAxoEKx0
  :divid: ch02_05_vid_row_column_indexing_01
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

  In row/column indexing, we specify separate row/column indices. We specify rows first, and then columns, separated by a comma.

.. include:: ex/row_column_indexing_1.in.rst

Let's look at some more examples:

.. youtube:: b5YvVqV6HN4
  :divid: ch02_05_vid_row_column_indexing_02
  :height: 315
  :width: 560
  :align: center

.. admonition :: Video Recap

  Just like with vector indexing, we can index matrices in several different ways. For rows and columns, you can:

  - Use a single number to select one row or column.
  - Use a vector of indices to select several rows or columns.
  - Use the colon operator :code:`:` to select full rows or columns.

.. include:: content/row_column_indexing_2.in.rst

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Manipulating Arrays with Indexing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

We can also use indexing to change the values of certain elements in a matrix.

.. youtube:: aYMgG9HFiug
  :divid: ch02_06_vid_manipulating_arrays
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

  To update elements with indexing, the indexing expression for those elements occurs on *both* the left-hand side (LHS) and the right-hand side (RHS) of the expression. This can be used to re-arrange rows and columns in a matrix.

  To delete a row or a column, assign :code:`[]` to them.

.. include:: ex/manipulating_arrays_1.in.rst

|

.. include:: ex/manipulating_arrays_2.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch02_06_revealwt_manipulating_arrays_03

    .. youtube:: Bc432vwMGwY
      :divid: ch02_06_wt_manipulating_arrays_03
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Common Functions Used with Matrices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: content/common_functions.in.rst

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Linear Indexing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

We have been looking at row/column indexing, but there is another way to do indexing - linear indexing. In **linear indexing**, each element has a sequential index 1, 2, 3, etc. ordered first by columns, then by rows. This is called **column-major order**. Here is an example of linear indexing in MATLAB:

.. image:: img/linear_indexing.png
  :width: 200
  :align: center
  :alt: Elements may be selected by their linear index in column-major ordering.

|

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [2,8,2;0,4,3];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-success matcrab-run">Run</a>
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <div class="matcrab-workspace list-group matlab-vars"></div>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              result = x([1,2,4])
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|

.. admonition:: Warning!

  It's easy to get the column-major order backward! We highly recommend using row/column indexing because it is more useful, generally clearer, and leads to fewer headaches, but some MATLAB help files use linear indexing, so now you know what it is.


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* Everything in MATLAB is an array! Scalars, vectors, and matrices are all arrays in MATLAB. Vectors and matrices consist of **elements** that hold data.
* Use :code:`[]` to create vectors and matrices. For matrices, create a new row using :code:`;`. Within a row, elements may be separated by spaces or commas.
* You can create vectors and matrices from other vectors and matrices as long as the result is a rectangular array (i.e. each row must have the same number of columns).
* **Range notation** using the :code:`:` operator lets you quickly create vectors of evenly spaced values.
* Use the **dot operator** (:code:`.`) to make sure you are using array operations for basic math operations.
* Index into vectors and matrices using :code:`( )`. The :code:`end` keyword gives the last index. You can select multiple elements by putting a vector of indices in the :code:`( )`. To select all elements, use the :code:`:` operator in the :code:`( )`.
* Use row/column indexing for matrices: specify rows first, then columns, separated by a comma.
* When you manipulate data in an array, the indexing operations can appear on both the left-hand side and the right-hand side of the assignment operator. To delete a row or a column, assign :code:`[]` to them.
* There are many built-in functions that you may find useful when working with arrays, especially matrices. We recommend you start your own set of "quick reference notes" and include these functions and what they do. Describing the functions in your own words will help you to understand them better and remember about them later on.  
* **Linear indexing** uses indices 1, 2, 3, etc. ordered first by columns, then by rows.

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.