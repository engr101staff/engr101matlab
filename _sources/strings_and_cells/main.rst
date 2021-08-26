.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <script src="../_static/common/js/common3.js"></script>

========================
Strings and Cell Arrays
========================

.. admonition:: Chapter Files

  Here are the files we'll be using for this chapter's exercises. It might be helpful to go ahead and download them now and move them to your current folder in MATLAB. (It's also a good idea to go ahead and create a new folder for this chapter and use that as your current folder, so that you don't clutter up whatever else you were working on.)

  .. list-table:: 
    :align: left
    :widths: auto

    * - :download:`Engineering.m <../_static/strings_and_cells/Engineering.m>`

      - .. reveal:: Engineering_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>Engineering.m</code>

          .. literalinclude:: ../_static/strings_and_cells/Engineering.m

      - Starter script including a cell array for engineering disciplines.

    * - :download:`cities.xlsx <../_static/strings_and_cells/cities.xlsx>`

      - .. reveal:: cities_xlsx_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>cities.xlsx</code>

          No preview available.

      - Excel file containing statistics about various cities.
    
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

.. admonition:: Video Recap

  The :code:`whos` function shows us the type of a variable.

  We are going to work with a new data type, a **string**. A string is a sequence of characters (e.g., a "word") and is represented as a vector of :code:`chars` in MATLAB. Joining two strings together is called **concatenation**. Because strings are often not the same length, storing multiple strings as a matrix of characters presents some challenges.

.. mchoice:: ch9_01_introduction_01

  Let's suppose that we want to store a list of strings as a matrix in MATLAB. What are some of the problems with this approach?

  - Matrices can only store homogenous data.

    - Oops! While this is a true fact, this is not a problem for this particular example. We only want to store strings in the matrix, so we are only storing one type of data in the matrix (e.g., our data is homogenous).

  - Matrices must be rectangular.

    + Correct! This is a problem because if our strings are not all the same length, we will have to pad our strings with extra spaces in order to make the matrix rectangular.

  - This approach wastes a lot of space.

    + Correct! Because we need to pad our strings with extra spaces, the extra spaces waste a lot of space.

  - Matrices can only handle numerical data.

    - Oops! Matrices can handle characters, as well as numerical data.

  - Padding with extra spaces makes working with strings inconvenient.

    + Correct! To take this approach, we must pad our strings with extra spaces, and this makes working with the strings difficult. (For example, think about trying to concatenate two strings with padded spaces - you would need to remove the extra spaces, concatenate the strings, and then re-pad the string with extra spaces. This is a lot of extra work!)

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

.. admonition:: Video Recap 

  Cell arrays are heterogenous collections of elements and are created using the curly brackets :code:`{` and :code:`}`. Cell arrays introduce another "layer" to our data. You've got a vector/matrix of cells, and then inside each of those cells is the actual data.

.. mchoice:: ch9_02_cell_arrays_01

  Select all of the following that are correctly defined cell arrays.

  - ``data = [10; 'engr'; [5, 6, 7]]``

    - Oops! This uses square brackets [] instead of curly brackets {}, so this is a regular array, not a cell array.

  - ``data = {200; '101'; [-2.2, 10.1, 7.2]}``

    + Correct!

  - ``data = {200, '101'; [-2.2, 10.1, 7.2]}``

    - Oops! Cell arrays must be rectangular. This cell array does not meet this requirement - it has two elements on the first row, but only one element on the second row.

  - ``data = {'something', 'awesome'; 'happening', 'here'}``

    + Correct!

  - ``data = {10; 20; 30}``

    + Correct! Because you're only working with one type of data here (ints), you could also use a regular array.
  
Let's consider indexing into cell arrays:

.. youtube:: lejDhTnuIhM
  :divid: ch08_02_vid_indexing_and_unpacking_in_cell_arrays
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

  There are two ways to index into a cell array:

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

.. admonition:: Video Recap

  When should you use cell arrays? One example is when you want to work with a list of strings.

  We saw that there are two different kinds of strings in MATLAB: single quote strings and double quote strings. For single quote strings, use :code:`strcmp()` to see if two strings are equal, and :code:`strcat()` to concatenate two strings.

  Double quote strings are convenient and should be used wherever possible. With double quote strings, you can use operators such as :code:`==`, :code:`<`, and :code:`+`.

----------------------------------
Exercise: Engineering Disciplines
----------------------------------
Let's practice working with cell arrays. Download :code:`Engineering.m` from the top of the chapter and open it up in MATLAB. You'll see that it contains a cell array with a list of different engineering disciplines found at the University of Michigan.

.. Note::

   When you open up :code:`Engineering.m`, you'll notice that the cell array is defined across multiple lines of code, with :code:`...` at the end of each line. We could have written the whole cell array on one line of code, but that would have been harder to read. Using :code:`...` allows you to spread out what is normally a single line of code on to multiple lines (for readability purposes).

Starting with this cell array, add the following things to the script:

1. First, let's make this list of engineering disciplines a little more formal! Add "Engineering" to the end of every element of the cell array. (After doing this, the first element will change from "Aerospace" to "Aerospace Engineering".)

2. Next, there's a typo in this list! "Macromolecular" is misspelled as "Macromlecular". Use string comparison to find the cell array element that is misspelled (e.g., which element equals "Macromlecular Engineering"?). Once you've found the misspelled element, change this element to be the correct spelling.

.. hint::

  Will you use cell indexing or context indexing to access the misspelled element and change it to the current spelling?

.. shortanswer:: ch08_02_ex_engineering_disciplines

  Copy and paste your :code:`Engineering.m` script here. (You don't need to copy and paste the initial cell array.)

.. admonition:: Walkthrough

  .. reveal:: ch08_02_revealwt_engineering_disciplines
  
    .. youtube:: A0_e7w2i48M
      :divid: ch08_02_wt_engineering_disciplines
      :height: 315
      :width: 560
      :align: center

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

.. admonition:: Video Recap 

  The :code:`xlsread` function allows us to read data from an Excel spreadsheet into MATLAB, and cell arrays can be used to represent this data.

-----------------------------
Exercise: Reading Cities Data
-----------------------------
Download :code:`cities.xlsx` from the top of the chapter, and open it up in Excel (or another spreadsheet program) to view its contents. Note that there are four columns of data, containing the name of each city, each city's population, and each city's latitude and longitude (this is the same data that we worked with in the Statistics and Simulation chapter!).

Open up MATLAB, and use the command we saw in the video to read in :code:`cities.xlsx`:

.. code:: matlab

  [num, txt, raw] = xlsread('cities.xlsx');

Find your MATLAB workspace and take a look at what the variables :code:`num`, :code:`raw`, and :code:`txt` look like. What data type is each variable?

Work through the following questions, and try out the code in MATLAB as you go along!

.. hint ::

  For each question, first decide whether you want to use :code:`num`, :code:`txt` or :code:`raw` to get the information you need. Then, you'll need to index into that variable. Consider the following questions: Are you indexing into a regular array or a cell arrray? If you're indexing into a cell array, should you use cell indexing or content indexing?

.. shortanswer:: ch08_04_ex_cities_data_01

  How would we get the city populations as an array? Write a line of code to do this, and store the array in the variable :code:`populations`. (:code:`populations` should be a :code:`79x1 double` regular array.)

.. shortanswer:: ch08_04_ex_cities_data_02

  How would we get the list of cities as a cell array? Write a line of code to do this, and store the cell array in the variable :code:`cities`. (:code:`cities` should be a :code:`79x1` cell array. Don't include the first row "City" in the cell array.)

.. shortanswer:: ch08_04_ex_cities_data_03

  How would we get the header row (e.g., the first row of the file) as a cell array? Write a line of code to do this, and store the cell array in the variable :code:`header`. (:code:`header` should be a :code:`1x4` cell array.)

.. admonition:: Walkthrough

  .. reveal:: ch08_04_revealwt_cities_data
  
    .. youtube:: NljmZ6_301A
      :divid: ch08_04_wt_cities_data
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* The :code:`whos` function shows us the type of a variable.
* The **string** data type holds a sequence of characters (e.g., a "word"). There are two types of strings in MATLAB: single quote strings and double quote strings. Double quote strings have some convenient features (such as working with the operators :code:`==`, :code:`>`, and :code:`+`). To compare or concatenate single quote strings, use :code:`strcmp` and :code:`strcat`.
* A **cell array** is like a matrix, but it holds a heterogenous collection of elements. It is created using the curly brackets :code:`{` and :code:`}`.
* There are two ways to index into a cell array: **cell indexing** (using :code:`()` operator) selects groups of cells and results in a smaller cell array. **Content indexing** (using :code:`{}` operator) selects and unpacks the actual data from its containing cell.
* Use :code:`cell2mat` to create a regular array from a cell array containing numbers: Use :code:`num2cell` to create a cell array from a regular array of numbers.
* We covered two examples where you should use a cell array: when working with a list of strings, or when reading in heterogenous data from an Excel spreadsheet.
* The :code:`xlsread` function can be used to read data from an Excel spreadsheet.

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
