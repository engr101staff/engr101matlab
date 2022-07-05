.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/matlab.css">
   <script src="../_static/common/js/common3.js"></script>
   <script src="../_static/common/js/matcrab-exercises2.bundle.js"></script>

------------------------------------------------------
More Practice: 
------------------------------------------------------

.. mchoice:: jh-inputs_22_indexing_02
  :author: Joe Hummel
  :answer_a: [0 | 10]
  :answer_b: [0 | 2 | 10]
  :answer_c: [0 | 2 | 4 | 6 | 8 | 10]
  :answer_d: [2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2 | 2]
  :correct: c
  :feedback_a: Incorrect. 
  :feedback_b: Incorrect.
  :feedback_c: Correct! 
  :feedback_d: Incorrect. 

  What is the contents of Z? Z = 0:2:10;

.. mchoice:: jh-inputs_22_indexing_03
  :author: Joe Hummel
  :answer_a: [10]
  :answer_b: [121]
  :answer_c: [10 | 15 | 102]
  :answer_d: Error, you cannot add vector (X) and scalar (3).
  :correct: c
  :feedback_a: Incorrect. 
  :feedback_b: Incorrect.
  :feedback_c: Correct! 
  :feedback_d: Incorrect. 

  What is the contents of Y? X = [7,12,99];, Y = X + 3;

.. mchoice:: jh-inputs_22_indexing_04
  :author: Joe Hummel
  :answer_a: Y = [9, 18, 2]
  :answer_b: Y = [1, 0, 0, 1, 0, 1, 0]
  :answer_c: Y = [0, 1, 1, 0, 1, 0, 1]
  :answer_d: Y = 3
  :correct: b
  :feedback_a: Incorrect. 
  :feedback_b: Correct!
  :feedback_c: Incorrect.
  :feedback_d: Incorrect. 

  Suppose X contains [9, 80, 20, 18, 48, 2, 110]. What is the result of executing Y = (X < 20)?