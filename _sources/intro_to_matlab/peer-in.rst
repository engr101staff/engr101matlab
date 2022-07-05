.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <script src="../_static/common/js/common3.js"></script>

------------------------------------
More Practice:
------------------------------------

.. mchoice:: jh-inputs_20_intromatlab_03
  :author: Joe Hummel
  :answer_a: The same as in C++, to denote the end of a statement
  :answer_b: To trigger evaluation of the command
  :answer_c: To suppress output from commands
  :answer_d: To differentiate between commands and comments
  :correct: c
  :feedback_a: Incorrect. 
  :feedback_b: Incorrect. 
  :feedback_c: Correct! 
  :feedback_d: Incorrect. 

  What is the purpose of  ";"  in MATLAB?

  .. code-block:: matlab
  
     T = 20 ;
     W = 10 ;
     %% wind chill:
     windchill = 35.7 + 0.6*T - 35.7*W^0.16 + 0.43*T*W^0.16 ; 

.. mchoice:: jh-inputs_20_intromatlab_04
  :author: Joe Hummel
  :answer_a: The same as in C++, to denote the end of a statement
  :answer_b: To trigger evaluation of the command
  :answer_c: To suppress output from commands
  :answer_d: To differentiate between commands and comments
  :correct: c
  :feedback_a: Incorrect. The equation doesn't have four variables, there are only two--T and W.
  :feedback_b: Incorrect. The equation doesn't have three variables, there are only two--T and W.
  :feedback_c: Correct! The equation has two variables--T and W.
  :feedback_d: Incorrect. The equation has more than one variable--T and W.

  What is the purpose of  ";"  in MATLAB?

  .. code-block:: matlab
  
     T = 20 ;
     W = 10 ;
     %% wind chill:
     windchill = 35.7 + 0.6*T - 35.7*W^0.16 + 0.43*T*W^0.16 ; 