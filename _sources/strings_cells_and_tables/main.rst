.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <script src="../_static/common/js/common3.js"></script>

==========================
Strings, Cells, and Tables
==========================

.. admonition:: Chapter Files

  Here are the files we'll be using for this chapter's exercises. It might be helpful to go ahead and download them now and move them to your current folder in MATLAB. (It's also a good idea to go ahead and create a new folder for this chapter and use that as your current folder, so that you don't clutter up whatever else you were working on.)

  .. list-table:: 
    :align: left
    :widths: auto

    * - :download:`rover_data.csv <../_static/strings_cells_and_tables/rover_data.csv>`

      - .. reveal:: rover_data_csv_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>rover_data.csv</code>

          .. literalinclude:: ../_static/strings_cells_and_tables/rover_data.csv

      - Dataset containing information about a fleet of autonomous rovers.
    
  .. reveal:: strings_cells_and_tables_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for MATLAB
    
    .. include:: ../common/matlab_download_instructions.in.rst
      


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

^^^^^^
Tables
^^^^^^
.. section 5

MATLAB also supports a data structure called a **table**.

.. youtube:: 5mfJc4BuJQA
  :divid: ch08_05_vid_introduction_to_tables
  :height: 315
  :width: 560
  :align: center

|

A table may contain several columns of data, where each column contains a particular kind of data (that may be different from the other columns). Columns can have names, and data can be accessed according to their column name as well as by index.

If you've got data already in a tabular format (e.g. a spreadsheet or CSV file), a MATLAB table provides a lot of convenient features above and beyond regular matrices, and the :code:`readtable` function makes it easy to read the data into MATLAB.

We can use the :code:`()` and :code:`{}` operators for indexing into tables, much like we did with cell arrays. To get the dimensions of our table, we can use the :code:`size`, :code:`height`, and :code:`width` functions.

----------------------------------
Exercise: Accessing Data in Tables
----------------------------------

The Proxima b Department Of Geologic Exploration (DOGE) maintains a fleet of autonomous rovers that are used to collect samples of rocks from different sites on Proxima b for further analysis. Information about these rovers (i.e. their ID number, rover type, cargo capacity in kg, battery charge level, and current location) is stored in a file called :file:`rover_data.csv`.

Because the data is in a tabular format, this is a perfect dataset for a MATLAB table. Read it in using this command:

.. code-block:: matlab

   rovers = readtable('rover_data.csv')

You should see the following (given that the semicolon is left off the command above):

.. code-block::

   rovers =

     8×5 table

          ID       type    capacity    charge        location    
       ________    ____    ________    ______    ________________

       {'a238'}     1        200        0.6      {'New Proxima' }
       {'a239'}     1        200        0.2      {'New Proxima' }
       {'b102'}     1        200        0.4      {'Proxima City'}
       {'a294'}     2        300        0.1      {'New Proxima' }
       {'a110'}     2        300        0.5      {'Proxima City'}
       {'a287'}     2        300        0.3      {'Proxima City'}
       {'b105'}     3        400        0.3      {'San Proxima' }
       {'c321'}     3        400        0.7      {'San Proxima' }

Consider each of the following MATLAB expressions. Select the best description of the result of the expression (or the error that occurs, if the expression does not work).

.. mchoice:: ch08_05_ex_accessing_data_in_tables_01
  :answer_a: The value 200 (a scalar double)
  :answer_b: A table containing only the value 200
  :answer_c: The value 1 (a scalar double)
  :answer_d: An error occurs because rovers is not a cell array
  :correct: a
  :feedback_a: Correct!
  :feedback_b: Oops! Think about the difference between indexing with {} and indexing with ().
  :feedback_c: Oops! Think about the order of rows and columns when you index.
  :feedback_d: Oops! Try this expression in MATLAB and see what you get.

  :code:`rovers{2, 3}`

.. mchoice:: ch08_05_ex_accessing_data_in_tables_02
  :answer_a: The value 200 (a scalar double)
  :answer_b: A table containing only the value 200
  :answer_c: The value 1 (a scalar double)
  :answer_d: An error occurs because values must be unpacked when indexing into a table
  :correct: b
  :feedback_a: Oops! Think about the difference between indexing with {} and indexing with ().
  :feedback_b: Correct!
  :feedback_c: Oops! Think about the difference between indexing with {} and indexing with ().
  :feedback_d: Oops! Try this expression in MATLAB and see what you get.

  :code:`rovers(2, 3)`

.. mchoice:: ch08_05_ex_accessing_data_in_tables_03
  :answer_a: The string 'b105' , which is represented as a vector of characters
  :answer_b: {'b105'} (a cell containing the string 'b102')
  :answer_c: An error occurs because the string 'ID' cannot be used as a column index
  :answer_d: An error occurs because the index 7 is out of bounds
  :correct: b
  :feedback_a: Oops! Try this expression in MATLAB and see what you get.
  :feedback_b: Correct!
  :feedback_c: Oops! Try this expression in MATLAB and see what you get.
  :feedback_d: Oops! Try this expression in MATLAB and see what you get.

  :code:`rovers{7, 'ID'}`

.. mchoice:: ch08_05_ex_accessing_data_in_tables_04
  :answer_a: A table containing only the columns for ID and charge
  :answer_b: A cell array containing only the columns for ID and charge
  :answer_c: An error occurs because the ID and charge columns have different types
  :answer_d: An error occurs because multiple columns cannot be selected at the same time
  :correct: a
  :feedback_a: Correct!
  :feedback_b: Oops! Try this expression in MATLAB and see what you get.
  :feedback_c: Oops! Try this expression in MATLAB and see what you get.
  :feedback_d: Oops! Try this expression in MATLAB and see what you get.

  :code:`rovers(:, [1,4])`

.. mchoice:: ch08_05_ex_accessing_data_in_tables_05
  :answer_a: A sub-table containing only the information for the 3rd row
  :answer_b: A cell array containing only the information for the 3rd row
  :answer_c: An error occurs because the selection contains columns of different types and the data cannot be unpacked with { } into the same result.
  :answer_d: An error occurs because the : operator cannot be used with tables.
  :correct: c
  :feedback_a: Oops! Try this expression in MATLAB and see what you get.
  :feedback_b: Oops! Try this expression in MATLAB and see what you get.
  :feedback_c: Correct!
  :feedback_d: Oops! Try this expression in MATLAB and see what you get.

  :code:`rovers{3, :}`

.. admonition:: Walkthrough

  .. reveal:: ch08_05_revealwt_accessing_data_in_tables
  
    .. youtube:: vCWQCzMaKv8
      :divid: ch08_05_wt_accessing_data_in_tables
      :height: 315
      :width: 560
      :align: center

|

^^^^^^^^^^^^^^^^^^^^^^^^^^^
Manipulating Data in Tables
^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 6

Tables provide a number of convenient ways to manipulate data. First, let's take a look at some large-scale operations like adding rows/columns and sorting the table.

.. youtube:: c642ER558aM
  :divid: ch8_06_vid_mainpulating_tables
  :height: 315
  :width: 560
  :align: center

|

Rows can be added to a table using the same matrix builder notation that we used with regular matrices. The function :code:`repmat` can be used to replicate a single value and create a matrix. We can sort a table using :code:`sortrows`.

We can also use indexing and assignment to modify specific selections of elements within a table, combined with powerful tools like logical indexing that allow us to perform complex operations without having to write a lot of code.

.. youtube:: fuqubA_oLEE
  :divid: ch8_06_vid_indexed_assignment_in_tables
  :height: 315
  :width: 560
  :align: center

|

-------------------------------------
Exercise: Manipulating Data in Tables
-------------------------------------

Refer to the same dataset from the :file:`rover_data.txt` file as in the previous exercise. If you don't still have the table loaded into matlab, go ahead and rerun the code:

.. code-block:: matlab

   rovers = readtable('rover_data.csv')

Again, you should see the following (given that the semicolon is left off the command above):

.. code-block::

   rovers =

     8×5 table

          ID       type    capacity    charge        location    
       ________    ____    ________    ______    ________________

       {'a238'}     1        200        0.6      {'New Proxima' }
       {'a239'}     1        200        0.2      {'New Proxima' }
       {'b102'}     1        200        0.4      {'Proxima City'}
       {'a294'}     2        300        0.1      {'New Proxima' }
       {'a110'}     2        300        0.5      {'Proxima City'}
       {'a287'}     2        300        0.3      {'Proxima City'}
       {'b105'}     3        400        0.3      {'San Proxima' }
       {'c321'}     3        400        0.7      {'San Proxima' }

Consider each of the following MATLAB expressions. Select the best description of the result of the expression (or the error that occurs, if the expression does not work).

.. mchoice:: ch08_06_manipulatinging_data_in_tables_01
   :answer_a:
   :answer_b:
   :answer_c:
   :answer_d:
   :correct: d
   :feedback_a: Oops! Think about the difference between indexing with {} and indexing with ().
   :feedback_b: Oops! Try this expression in MATLAB and see what you get.
   :feedback_c: Oops! Think about the difference between indexing with {} and indexing with ().
   :feedback_d: Correct!

   Which of the following expressions will set the charge for all of the rovers to 1?

   A. :code:`rovers(:, 4) = 1;`
   B. :code:`rovers(:, 4) = {1};`
   C. :code:`rovers(:, 'charge') = 1;`
   D. :code:`rovers{:, 'charge'} = 1;`


.. mchoice:: ch08_06_manipulatinging_data_in_tables_02
   :answer_a:
   :answer_b:
   :answer_c:
   :answer_d:
   :correct: c
   :feedback_a: Oops! Try this expression in MATLAB and see what you get.
   :feedback_b: Oops! Try this expression in MATLAB and see what you get.
   :feedback_c: Correct!
   :feedback_d: Oops! Try this expression in MATLAB and see what you get.

   Which of the following expressions will set the location for all of the rovers to :code:`'home'`.
  
   A. :code:`rovers.location = 'home';`
   B. :code:`rovers(5) = 'home';`
   C. :code:`rovers.location(:) = {'home'};`
   D. :code:`rovers.location(:) = 'home';`


.. mchoice:: ch08_06_manipulatinging_data_in_tables_03
   :answer_a:
   :answer_b:
   :answer_c:
   :answer_d:
   :correct: b
   :feedback_a: Oops! Try this expression in MATLAB and see what you get.
   :feedback_b: Correct!
   :feedback_c: Oops! Think about the difference between indexing with {} and indexing with ().
   :feedback_d: Oops! Try this expression in MATLAB and see what you get.

   Which of the following expressions will assign a new table containing only rovers with more than 0.5 charge into the variable :code:`charged_rovers`?

   A. :code:`charged_rovers = rovers(:, 'charge') > 0.5;`
   B. :code:`charged_rovers = rovers(rovers.charge > 0.5, :);`
   C. :code:`charged_rovers = rovers{rovers.charge > 0.5, :};`
   D. :code:`charged_rovers = rovers.charge > 0.5;`

.. shortanswer:: ch08_06_manipulating_data_in_tables_04

  What MATLAB code could be used to assign a table containing only rovers of type 2 into a variable called :code:`rovers2`?

.. shortanswer:: ch08_06_manipulating_data_in_tables_05

  What MATLAB code could be used to count the number of rovers currently located in Proxima City?

.. shortanswer:: ch08_06_manipulating_data_in_tables_06

  What MATLAB code could be used to sort the table in ascending order so that the rovers are ordered from least to most charged?

.. admonition:: Walkthrough

  .. reveal:: ch08_06_revealwt_manipulating_data_in_tables
  
    .. youtube:: ZC7xJaulSZI
      :divid: ch08_06_wt_manipulating_data_in_tables
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* The **string** data type holds a sequence of characters (e.g., a "word"). There are two types of strings in MATLAB: single quote strings and double quote strings. Double quote strings have some convenient features (such as working with the operators :code:`==`, :code:`>`, and :code:`+`). To compare or concatenate single quote strings, use :code:`strcmp` and :code:`strcat`.
* A **cell array** is like a matrix, but it holds a heterogenous collection of elements. It is created using the curly brackets :code:`{` and :code:`}`.
* There are two ways to index into a cell array: 

  - **Cell indexing** (using :code:`()` operator) selects groups of cells and results in a smaller cell array. 
  - **Content indexing** (using :code:`{}` operator) selects and unpacks the actual data from its containing cell.
  
* Use :code:`cell2mat` to create a regular array from a cell array containing numbers: Use :code:`num2cell` to create a cell array from a regular array of numbers.
* The :code:`xlsread` function can be used to read data from an Excel spreadsheet.
* **Tables** are data structures that may contain several columns of data (each column can have a different data type). Similar to cell arrays, use :code:`()` and :code:`{}` to index into tables. To get the dimensions of a table, use :code:`size`, :code:`height`, or :code:`width`. Use :code:`sortrows` to sort the rows of a table.
* Read in data in a tabular format using :code:`readtable`.
* The :code:`repmat` function can be used to replicate a single value and create a matrix.

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
