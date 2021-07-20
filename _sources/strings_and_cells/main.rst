.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <script src="../_static/common/js/common3.js"></script>

=================
Strings and Cells
=================

^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^
.. section 1

.. youtube:: dHMAIwy8pA0
  :divid: ch08_01_vid_data_types_and_matrix_limitations
  :height: 315
  :width: 560
  :align: center

|

In the previous video, we introduced a new data type, a **string**. A string is a sequence of characters (e.g., a "word") and is represented as a vector of :code:`chars` in MATLAB. Because strings are often not the same length, storing multiple strings as a matrix of characters presents some challenges.

^^^^^^^^^^^
Cell Arrays
^^^^^^^^^^^
.. section 2

MATLAB includes a matrix-like data structure called a **cell array** that allows us to get around some of the restrictions of regular matrices:

.. youtube:: spUUccV5Dlk
  :divid: ch08_02_vid_introduction_to_cell_arrays
  :height: 315
  :width: 560
  :align: center

|

Cell arrays are heterogenous collections of elements and are created using the curly brackets :code:`{` and :code:`}`. Cell arrays introduce another "layer" to our data. You've got a vector/matrix of cells, and then inside each of those cells is the actual data. Let's consider indexing into cell arrays:

.. youtube:: lejDhTnuIhM
  :divid: ch08_02_vid_indexing_and_unpacking_in_cell_arrays
  :height: 315
  :width: 560
  :align: center

|

As we saw, there are two ways to index into a cell array:

- **Cell indexing**, using the :code:`( )` operator. This can be used to select particular cells (or groups of cells) within a cell array. The result is a smaller cell array.
- **Content indexing**, using the :code:`{ }` operator. This selects and **unpacks** the actual data from its containing cell, so that we can work with it directly. This is generally not useful for multi-element selections.

The :code:`cell2mat` function creates a regular array from a cell array containing numbers. The :code:`num2cell` function does the reverse - it creates a cell array from a regular array of numbers.

-----------------------------
Exercise: Cell Array Practice
-----------------------------

.. shortanswer:: ch08_02_ex_cell_array_practice

  Consider this initial code:
  
  .. code-block:: matlab

    X = {1, 'hello'; [1,2,3], ['a';'b';'c']}

  The initial value of :code:`X` is shown below, as well as a desired new value for :code:`X` and additional variable :code:`Y`.

  .. figure:: img/cell_array_practice.png
    :width: 560
    :align: center

    ..

  Write a few lines of code that could be used to obtain the new values of :code:`X` and :code:`Y`.

.. admonition:: Walkthrough

  .. reveal:: ch08_02_revealwt_cell_arrays_practice
  
    .. youtube:: unoldLVMKiA
      :divid: ch08_02_wt_cell_arrays_practice
      :height: 315
      :width: 560
      :align: center


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Strings, Cell Arrays, and Double Quote Strings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 3

Now that we've seen the basics of cell arrays, let's take a look at how they're used to store and work with strings in MATLAB.

.. youtube:: MEso3jeJ5HU
  :divid: ch08_03_strings_cell_arrays_and_double_quote_strings
  :height: 315
  :width: 560
  :align: center

|

In the previous video, we saw that there are two different kinds of strings in MATLAB: single quote strings and double quote strings. For single quote strings, use :code:`strcmp()` to see if two strings are equal, and :code:`strcat()` to concatenate two strings.

Double quote strings are convenient and should be used wherever possible. With double quote strings, you can use operators such as :code:`==`, :code:`<`, and :code:`+`.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Reading Excel Files in MATLAB
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 4

Another case to be made for cell arrays is that sometimes the data we have are naturally in a heterogeneous format - for example, the data in an Excel spreadsheet might well be a mix of text and numbers.

.. youtube:: rgioisRsSAg
  :divid: ch08_04_reading_excel_files_in_matlab
  :height: 315
  :width: 560
  :align: center

|

The :code:`xlsread` function allows us to read data from an Excel spreadsheet into MATLAB, and cell arrays can be used to represent this data.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* The **string** data type holds a sequence of characters (e.g., a "word"). There are two types of strings in MATLAB: single quote strings and double quote strings. Double quote strings have some convenient features (such as working with the operators :code:`==`, :code:`>`, and :code:`+`). To compare or concatenate single quote strings, use :code:`strcmp` and :code:`strcat`.
* A **cell array** is like a matrix, but it holds a heterogenous collection of elements. It is created using the curly brackets :code:`{` and :code:`}`.
* There are two ways to index into a cell array: **cell indexing** (using :code:`()` operator) selects groups of cells and results in a smaller cell array. **Content indexing** (using :code:`{}` operator) selects and unpacks the actual data from its containing cell.
* Use :code:`cell2mat` to create a regular array from a cell array containing numbers: Use :code:`num2cell` to create a cell array from a regular array of numbers.
* The :code:`xlsread` function can be used to read data from an Excel spreadsheet.

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
