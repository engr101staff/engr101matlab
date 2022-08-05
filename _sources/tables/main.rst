.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/theme-overrides.css">

.. raw:: html

   <script src="../_static/common/js/common3.js"></script>

=============
MATLAB Tables
=============

.. admonition:: Chapter Files

  Here are the files we'll be using for this chapter's exercises. It might be helpful to go ahead and download them now and move them to your current folder in MATLAB. (It's also a good idea to go ahead and create a new folder for this chapter and use that as your current folder, so that you don't clutter up whatever else you were working on.)

  .. list-table:: 
    :align: left
    :widths: auto

    * - :download:`rover_data.csv <../_static/tables/rover_data.csv>`

      - .. reveal:: rover_data_csv_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>rover_data.csv</code>

          .. literalinclude:: ../_static/tables/rover_data.csv

      - Dataset containing information about a fleet of autonomous rovers.
    
  .. reveal:: strings_cells_and_tables_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for MATLAB
    
    .. include:: ../common/matlab_download_instructions.in.rst
      

^^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^^
.. section 5

We have looked at quite a few data structures in MATLAB already! In this chapter we're going to be introducing a new data structure, a **table**. Before we do that, let's review some of the types of data that we've already seen.

.. dragndrop:: ch10_01_ex_warm_up
  :match_2: vector|||a one-dimensional, homogenous sequence of elements
  :match_3: matrix|||a two-dimensional, homogenous grid of elements
  :match_4: string|||a one-dimensional sequence of characters
  :match_5: cell array|||a heterogenous collection of elements

  Match each data type with its description.

Let's take a look at how tables are different from the data structures we've previously seen.

.. youtube:: 5mfJc4BuJQA
  :divid: ch08_05_vid_introduction_to_tables
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

  A **table** is a tabular data structure that may contain several columns of data. Each column may have a different type of data. Columns can be accessed using the dot operator (e.g., :code:`rovers.ID`).

  If you've got data already in a tabular format (e.g. a spreadsheet or CSV file), a MATLAB table provides a lot of convenient features above and beyond regular matrices, and the :code:`readtable` function allows you to read the data in MATLAB.

.. mchoice:: ch08_05_ex_introduction_to_tables
  :answer_a: Cell arrays store heterogenous data, while tables don't.
  :answer_b: Tables store heterogenous data, while cell arrays don't.
  :answer_c: For tables, every element in a column must have the same data type. For cell arrays, elements in a column can have different data types.
  :answer_d: Tables have column headers. Cell arrays don't.
  :answer_e: Tables are designed for data that is already in a tabular format. Cell arrays are more flexible.
  :correct: c,d,e
  :feedback_a: Oops! Both tables and cell arrays store heterogenous data.
  :feedback_b: Oops! Both tables and cell arrays store heterogenous data.
  :feedback_c: Correct!
  :feedback_d: Correct!
  :feedback_e: Correct! As a side note, all tables can be converted to cell arrays using the function table2cell.

  What are the differences between tables and cell arrays? Select all that apply.

^^^^^^^^^^^^^^^^^^^^
Indexing into Tables
^^^^^^^^^^^^^^^^^^^^

Let's take a look at how we can index into tables.

.. youtube:: CzEurDa7ud8
  :divid: ch08_05_vid_table_indexing
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

  We can use the :code:`()` and :code:`{}` operators for indexing into tables. Using :code:`()` always returns another table. Using :code:`{}` unpacks the data.

  Additionally, we can use the names of the columns to index into a table (e.g., :code:`rovers{2, 'charge'} or :code:`rovers.charge(2)`).
  
  To get the dimensions of our table, we can use the :code:`size`, :code:`height`, and :code:`width` functions.

----------------------------------
Exercise: Accessing Data in Tables
----------------------------------

The Proxima b Department Of Geologic Exploration (DOGE) maintains a fleet of autonomous rovers that are used to collect samples of rocks from different sites on Proxima b for further analysis. Information about these rovers (i.e. their ID number, rover type, cargo capacity in kg, battery charge level, and current location) is stored in a file called :file:`rover_data.csv`. Download this file from the top of the chapter.

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

.. admonition:: Video Recap

  To add a new row to a table, use matrix builder notation (e.g., :code:`rovers = [ rovers ; new_row ]`). To create a new row, create a cell array with the data we want, and then use matrix builder notation to add it to the table.

  To add a new column to a table, create a column of data and then use dot notation to add the column to the table (e.g., :code:`rovers.names = new_column`). The function :code:`repmat` can be used to replicate a single value and create a matrix. 

  We can sort a table using :code:`sortrows`. By default, the table will be sorted using the first column in the table.

We can also use indexing and assignment to modify specific selections of elements within a table, combined with powerful tools like logical indexing that allow us to perform complex operations without having to write a lot of code.

.. youtube:: fuqubA_oLEE
  :divid: ch8_06_vid_indexed_assignment_in_tables
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

  Indexing and assignment can be used together to modify a table in complex ways. Be thoughtful about whether you use :code:`()` or :code:`{}` to index into the table.

-------------------------------------
Exercise: Manipulating Data in Tables
-------------------------------------

Refer to the same dataset from the :file:`rover_data.txt` file as in the previous exercise. If you don't still have the table loaded into MATLAB, go ahead and rerun the code:

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

* **Tables** are data structures that may contain several columns of data (each column can have a different data type).
* Similar to cell arrays, use :code:`()` and :code:`{}` to index into tables.
* To get the dimensions of a table, use :code:`size`, :code:`height`, or :code:`width`.
* Use :code:`sortrows` to sort the rows of a table.
* Read in data in a tabular format using :code:`readtable`.
* The :code:`repmat` function can be used to replicate a single value and create a matrix.

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
