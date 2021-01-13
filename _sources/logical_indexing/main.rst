.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/matlab.css">
   <script src="../_static/common/js/matcrab-exercises.bundle.js"></script>

===============================
Logical Operations and Indexing
===============================

.. admonition:: Chapter Files

  We'll be using several files throughout this chapter's exercises. It might be helpful to go ahead and download each of them now and move them to your current folder in MATLAB. (It's also a good idea to go ahead and create a new folder for this chapter and use that as your current folder, so that you don't clutter up whatever else you were working on.)

  .. list-table:: 
    :align: left
    :widths: auto

    * - :download:`rocks.csv <../_static/logical_indexing/rocks.csv>`

      - .. reveal:: rocks_csv_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>rocks.csv</code>

          .. literalinclude:: ../_static/logical_indexing/rocks.csv
            :lines: 1-7
            :append: ...

      - Data file with rock samples and properties

    * - :download:`analyzeRocks.m <../_static/logical_indexing/analyzeRocks.m>`

      - .. reveal:: analyze_rocks_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>analyzeRocks.m</code>

          .. literalinclude:: ../_static/logical_indexing/analyzeRocks.m
            :language: matlab

      - Starter script for loading/analyzing data from rocks.csv
    
  .. reveal:: logical_indexing_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for MATLAB
    
    .. include:: ../common/matlab_download_instructions.in.rst
      


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Introduction and Relational Operators
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 1

We've seen that MATLAB supports *arithmetic* operations (e.g. :code:`+`, :code:`.*`, etc.), which allow us to write expressions that compute a *numeric* result. MATLAB (and most other programming languages!) also allow us to compare different values/variables to each other using *relational* operators that produce a *logical* (i.e. true or false) result. We'll introduce the basic idea and then give you a chance to practice.

.. youtube:: I13q-SPw9eo
  :divid: ch04_01_vid_relational_operators
  :height: 315
  :width: 560
  :align: center

|


--------------------------------------------
Exercise: Practice with Relational Operators
--------------------------------------------

.. include:: ex/relational_operations.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch04_01_revealwt_relational_operations

    .. youtube:: umNofgBK-Kk
      :divid: ch04_01_wt_relational_operations
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Using Logical Values and Logical Indexing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 2

Let's take a look at some of the practical ways we can use logical results like the ones we get back from our relational operators.


.. youtube:: kgNw0oKcchg
  :divid: ch04_02_vid_logical_indexing
  :height: 315
  :width: 560
  :align: center

|

------------------------------
Exercise: Analyzing Some Rocks
------------------------------

.. figure:: img/rocks.png
   :width: 300
   :align: center
   :alt: rocks.png

   *a rock*

.. include:: ex/logical_indexing.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch04_02_revealwt_analyzing_rocks

    .. youtube:: 4_rSCo3CN0Q
      :divid: ch04_02_wt_analyzing_rocks
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^
Logical Operators (and/or)
^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 3

Sometimes we want to ask complex questions about our data, for example "Which rocks have a high density *and* low metallicity?". We can do that in MATLAB.


.. youtube:: uzv0ZfLf_aM
  :divid: ch04_03_vid_logical_operators
  :height: 315
  :width: 560
  :align: center

|

----------------------------
Exercise: More Rock Analysis
----------------------------

.. figure:: img/rocks.png
   :width: 300
   :align: center
   :alt: rocks.png

   *hi it's me again*

.. include:: ex/logical_operators.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch04_03_revealwt_more_rocks

    .. youtube:: mJCtyjeiD40
      :divid: ch04_03_wt_more_rocks
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^
Operator Precedence
^^^^^^^^^^^^^^^^^^^
.. section 4

Now that we have quite a few operators to work with, it makes sense to discuss how MATLAB determines order of operations according to the **precedence** of each operator.

.. youtube:: U8hXZPxLIsg
  :divid: ch04_04_vid_indexing_and_assignment
  :height: 315
  :width: 560
  :align: center

|

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Logical Indexing and Assignment
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 5

Let's take a look at some of the practical ways we can use logical results like the ones we get back from our relational operators.


.. youtube:: XGycZcWcU2I
  :divid: ch04_05_vid_indexing_and_assignment
  :height: 315
  :width: 560
  :align: center

|

-------------------------------------------
Exercise: Logical Indexing and Assignment
-------------------------------------------

.. include:: ex/indexing_and_assignment.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch04_03_revealwt_indexing_and_assignment

    .. youtube:: MPxRCVp5Clk
      :divid: ch04_03_wt_indexing_and_assignment
      :height: 315
      :width: 560
      :align: center


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* **Relational operators** (e.g., greater than, less than) check for equality or perform comparisons, and return a **logical** result (either truth or false). True is often encoded as 1, and false is often encoded as 0. Relational operators work on matrices, as well as scalars.
* You can use relational operators to count the number of elements that match certain criteria (by using :code:`sum()` with a logical operation).
* **Logical arrays** can be used to index a source matrix. All the elements from the source matrix that correspond to positions with a 1 in the logical matrix are selected.
* **Logical operators** combine two truth values using logic. The :code:`&` (and) operator returns true only if both operands are true. Otherwise, it returns false. The :code:`|` (inclusive or) operator returns true if either of the operands, or both, are true. The :code:`xor` (exclusive or) operator returns true if either of the operands, but not both, are true. The :code:`~` (not) operator returns true if the operand if false, and false if the operand is true.
* If there are multiple operations in a single statement, **operator precedence** determines the order that the operations occur in.
* You can use a logical matrix to select part of a matrix and then assign into that part of the matrix.
* You can use a logical matrix derived from one matrix to index into a separate, parallel matrix (the parallel matrix needs to be the same size as the original matrix).


You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
