.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <script src="../_static/common/js/common3.js"></script>

.. include:: ../common/include_lobster_exercises.in.rst

.. raw:: html

   <style>
      .btn {
         margin: 0;
      }
      .tab-pane {
         padding: 0;
      }
   </style>

------------------------------------------------------
More Practice: 
------------------------------------------------------

.. mchoice:: aa-inputsoutputs_09_strings_08
  :author: Ashish Aggarwal
  :answer_a: vec( find( vec == max( vec(end-3:end) ) ) ) = [];
  :answer_b: find(vec == max(vec(end-3:end)) ) = [];
  :answer_c: vec( find( vec(end-3:end) == max(vec) ) )= [];
  :answer_d: vec( find(vec == max(vec), 4) ) = [];
  :correct: a
  :feedback_a: Correct!
  :feedback_b: Incorrect. Check these commands carefully and expand them to find out what do they actually refer to.
  :feedback_c: Incorrect. Check these commands carefully and expand them to find out what do they actually refer to.
  :feedback_d: Incorrect. Check these commands carefully and expand them to find out what do they actually refer to.
  
   Which of the following options represents the correct syntax of deleting the maximum value out of the only last 4 values in the following vector:

  .. code-block:: matlab
  
     vec  = [38 63 213 62 32 11 99 44];

