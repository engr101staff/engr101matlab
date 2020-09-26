.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <script src="../_static/common/js/common.js"></script>

==========================
Strings, Cells, and Tables
==========================

.. admonition:: Chapter Files

  We'll be using several files throughout this chapter's exercises. It might be helpful to go ahead and download each of them now and move them to your current folder in MATLAB. (It's also a good idea to go ahead and create a new folder for this chapter and use that as your current folder, so that you don't clutter up whatever else you were working on.)

  .. list-table:: 
    :align: left
    :widths: auto

    * - :download:`rover_data.csv <../_static/strings_cells_and_tables/rover_data.csv>`

      - .. reveal:: rover_data_csv_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>rover_data.csv</code>

          .. literalinclude:: ../_static/strings_cells_and_tables/rover_data.csv
            :language: csv

      - Dataset containing information about a fleet of autonomous rovers.
    
  .. reveal:: strings_cells_and_tables_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for MATLAB
    
    .. include:: ../common/matlab_download_instructions.in.rst
      
^^^^^^^^^^^
Cell Arrays
^^^^^^^^^^^
.. section 2

CONTENT

.. youtube:: kJhRNOtXtdU
  :divid: ch07_04_vid_histogramsTODO
  :height: 315
  :width: 560
  :align: center


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

^^^^^^
Tables
^^^^^^
.. section 3

CONTENT

.. youtube:: kJhRNOtXtdU
  :divid: ch07_04_vid_histogramsTODO
  :height: 315
  :width: 560
  :align: center


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