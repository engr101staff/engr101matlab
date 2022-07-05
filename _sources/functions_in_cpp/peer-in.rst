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

------------------------------------
More Practice:
------------------------------------

.. mchoice:: jh-inputs_03_functions_03
  :practice: T
  :author: Joe Hummel
  :answer_a: 25
  :answer_b: 48
  :answer_c: 49
  :answer_d: Cannot determine answer from given information.
  :correct: c
  :feedback_a: Incorrect. If x = 25, then x = 2 * (25) - 1 = 50 - 1 = 49 by PEMDAS. 
  :feedback_b: Incorrect. If x = 25, then x = 2 * (25) - 1 = 50 - 1 = 49 by PEMDAS. 
  :feedback_c: Correct! If x = 25, then x = 2 * (25) - 1 = 50 - 1 = 49 by PEMDAS. 
  :feedback_d: Incorrect. It is possible to find the answer with the given information. If x = 25, then x = 2 * (25) - 1 = 50 - 1 = 49 by PEMDAS. 

  Variables live in the computer's memory, and are drawn as boxes containing values. Suppose x currently has the value 25. What value does x contain after executing this assignment statement? :code:`x = 2 * x - 1;`

.. mchoice:: jh-inputs_03_functions_05
  :practice: T
  :author: Joe Hummel
  :answer_a: 6.0
  :answer_b: 6
  :answer_c: 0.09375 (i.e. ((3)/(32)))
  :answer_d: 0
  :answer_e: Depends on whether y is int or double.
  :correct: e
  :feedback_a: Incorrect. We're not sure if y is int, so we don't know if 6 is correct.
  :feedback_b: Incorrect. We're not sure if y is double, so we don't know if 6 is correct.
  :feedback_c: Incorrect. The equation is C++ does not multiply x = 8 by 4 in the denominator--the equation is meant to multiply 3/4 by x.
  :feedback_d: Incorrect. The equation will not return 0 for y. 
  :feedback_e: Correct! The answer will depend on whether y is int or double.

  Suppose x = 8. What value is assigned to y? :code:`y = (((3)/(4)) * x);`