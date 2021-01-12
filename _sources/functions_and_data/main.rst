.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/matlab.css">
   <script src="../_static/common/js/matcrab-exercises.bundle.js"></script>

==================
Functions and Data
==================

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Warm Up
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ex/warm_up.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch03_01_revealwt_warm_up

    .. youtube:: 10Bjqm82Rs8
      :divid: ch03_01_wt_warm_up
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Defining Custom Functions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. youtube:: btFcE-fCoGk
  :divid: ch03_02_vid_custom_functions
  :height: 315
  :width: 560
  :align: center
  
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

.. youtube:: TiyXzP96r1U
    :divid: ch03_03_vid_data_files
    :height: 315
    :width: 560
    :align: center

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

Here's an example of the :code:`sum()` function:

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

* 

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.