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
  :answer_a: str = str(end:-1:1);
  :answer_b: str = str(length(str):-1:1)
  :answer_c: str = str(6:-1:1);
  :answer_d: str(end:-1:1) = str(end:-1:1); 
  :answer_e: str= str([6 5 4 3 2 1]);
  :correct: d
  :feedback_a: Incorrect. Check all these options one by one in MATLAB and see how they are interpreted.
  :feedback_b: Incorrect. Check all these options one by one in MATLAB and see how they are interpreted.
  :feedback_c: Incorrect. Check all these options one by one in MATLAB and see how they are interpreted.
  :feedback_d: Correct! 
  :feedback_e: Incorrect. Check all these options one by one in MATLAB and see how they are interpreted.
  
   Which of the following options represents an incorrect way of reversing the string?

  .. code-block:: matlab
  
     str = 'matlab';

.. mchoice:: aa-inputsoutputs_09_strings_15
  :author: Ashish Aggarwal
  :answer_a: phr(end) =  '  ';
  :answer_b: phr = [phr '  '];
  :answer_c: phr(length(phr) + 1) =  '  ';
  :answer_d: phr(end + 1) =  '  ';
  :correct: a
  :feedback_a: Correct! 
  :feedback_b: Incorrect. Check these options one by one in MATLAB.
  :feedback_c: Incorrect. Check these options one by one in MATLAB.
  :feedback_d: Incorrect. Check these options one by one in MATLAB.
  
   Which of the following options represents an incorrect way of adding a space at the end of a phrase 'phr'?

.. mchoice:: aa-inputsoutputs_09_strings_16
  :author: Ashish Aggarwal
  :answer_a: str(4) = 'X';
  :answer_b: str = [str 'X' str];
  :answer_c: str = [str(1:3) 'X' str(4:6)];
  :answer_d: str = [str(1:3) 'X' str(5:7)];
  :correct: c
  :feedback_a: Incorrect. Check these options one by one in MATLAB.
  :feedback_b: Incorrect. Check these options one by one in MATLAB.
  :feedback_c: Correct!
  :feedback_d: Incorrect. Check these options one by one in MATLAB.
  
   Which of the following options represents the correct way of adding a letter 'X' in the middle of the following string?

   .. code-block:: matlab
  
     str = 'abcdef';

.. mchoice:: aa-inputsoutputs_09_strings_17
  :author: Ashish Aggarwal
  :answer_a: For all letters which become > 'z', add 26
  :answer_b: For all letters which become < 'z', add 26
  :answer_c: For all letters which become > 'z', subtract 26
  :answer_d: For all letters which become < 'z', subtract 26
  :correct: c
  :feedback_a: Incorrect. When we add 3 to letters, it is possible that some values go beyond 'z'. Therefore, to bring them in range, we would subtract 26 from the letters which go beyond 'z'. 
  :feedback_b: Incorrect. When we add 3 to letters, it is possible that some values go beyond 'z'. Therefore, to bring them in range, we would subtract 26 from the letters which go beyond 'z'. 
  :feedback_c: Correct!
  :feedback_d: Incorrect. When we add 3 to letters, it is possible that some values go beyond 'z'. Therefore, to bring them in range, we would subtract 26 from the letters which go beyond 'z'. 
  
   With respect to Caesar Cipher, lets say we have a string 'str' whose individual letters are added by 3 to shift them by 3 positions. Which of the following statements is correct in this context?

.. mchoice:: aa-inputsoutputs_09_strings_19
  :author: Ashish Aggarwal
  :answer_a: str = upper(str(1));
  :answer_b: str(1) = upper(str);
  :answer_c: str(1) = upper(str(1));
  :answer_d: str = upper(str)
  :correct: c
  :feedback_a: Incorrect. Remember that we need to only capitalize the first letter so we should only change str(1).
  :feedback_b: Incorrect. Remember that we need to only capitalize the first letter so we should only change str(1).
  :feedback_c: Correct!
  :feedback_d: Incorrect. Remember that we need to only capitalize the first letter so we should only change str(1).
  
   Which of the following options represents the correct syntax to capitalize only the first letter of the following string?

   .. code-block:: matlab
  
     str = 'matlab';