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

.. mchoice:: jh-inputs_21_intromatlab_02
  :author: Joe Hummel
  :answer_a: function S = MaxSpeed(L), S = 1.3 * sqrt(L);, end
  :answer_b: function MaxSpeed(L), MaxSpeed = 1.3 * sqrt(L);, end
  :answer_c: function MaxSpeed(L, S), S = 1.3 * sqrt(L);, end
  :answer_d: function MaxSpeed(L), S = 1.3 * sqrt(L);, return S;, end
  :correct: b
  :feedback_a: Incorrect. 
  :feedback_b: Correct!
  :feedback_c: Incorrect.
  :feedback_d: Incorrect. 

  Write a MaxSpeed function that takes the length of a sailboat (in feet) and returns the maximum speed of that boat (in MPH). Equation: :code: '1.3 * sqrt(L)'