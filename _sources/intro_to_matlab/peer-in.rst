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

.. mchoice:: aa-inputsoutputs_02_intromatlab_01
  :author: Ashish Aggarwal
  :answer_a: abc = 234;
  :answer_b: a = a;
  :answer_c: 53 == x;
  :answer_d: y == 5;
  :correct: a
  :feedback_a: Correct! A valid variable name starts with a letter, which can be followed by letters, digits, or underscores.
  :feedback_b: Incorrect. Remember, a valid variable name starts with a letter, which can be followed by letters, digits, or underscores.
  :feedback_c: Incorrect. Remember, a valid variable name starts with a letter, which can be followed by letters, digits, or underscores.
  :feedback_d: Incorrect. Remember, a valid variable name starts with a letter, which can be followed by letters, digits, or underscores.

  Which of the following is a valid variable assignment?

.. mchoice:: aa-inputsoutputs_02_intromatlab_06
  :author: Ashish Aggarwal
  :answer_a: It helps in substituting the values of 4, 5 and 9 in the statement.
  :answer_b: It helps in putting a period after a sentence.
  :answer_c: It helps in taking the prompt to a new line.
  :answer_d: It helps in leaving a tab space between the sentences.
  :correct: c
  :feedback_a: Incorrect. Recall the purpose of '/n' in Matlab.
  :feedback_b: Incorrect. Recall the purpose of '/n' in Matlab.
  :feedback_c: Correct! 
  :feedback_d: Incorrect. Recall the purpose of '/n' in Matlab.

  For the given fprintf() statement, what is the function of putting '/n'?

  .. code-block:: matlab
  
     fprintf(' The value of x is %g \n The value of y is %g \n Thus sum of x and y is %g \n', 4,5,9);

.. mchoice:: aa-inputsoutputs_02_intromatlab_07
  :author: Ashish Aggarwal
  :answer_a: abc$
  :answer_b: abc d
  :answer_c: abc_d
  :answer_d: $abc
  :correct: c
  :feedback_a: Incorrect. Remember, a valid variable name starts with a letter, followed by letters, digits, or underscores.
  :feedback_b: Incorrect. Remember, a valid variable name starts with a letter, followed by letters, digits, or underscores.
  :feedback_c: Correct! A valid variable name starts with a letter, followed by letters, digits, or underscores
  :feedback_d: Incorrect. Remember, a valid variable name starts with a letter, followed by letters, digits, or underscores.

  From the following options, which is a valid variable name?

.. mchoice:: aa-inputsoutputs_02_intromatlab_08
  :author: Ashish Aggarwal
  :answer_a: Click ‘Run’ again and again continuously
  :answer_b: Wait patiently until the execution is completed
  :answer_c: Re-save the program again
  :answer_d: Delete the program
  :correct: b
  :feedback_a: Incorrect. Too many Runs clog the execution. Patience is a common virtue which also holds true in MATLAB.
  :feedback_b: Correct! Being patient after you click Run will help you tremendously.
  :feedback_c: Incorrect. Too many Runs clog the execution. Patience is a common virtue which also holds true in MATLAB.
  :feedback_d: Incorrect. Too many Runs clog the execution. Patience is a common virtue which also holds true in MATLAB.

  After you click ‘Run’ once to execute your program and if there is a delay in seeing the output of the program, you should:

.. mchoice:: aa-inputsoutputs_02_intromatlab_09
  :author: Ashish Aggarwal
  :answer_a: Type Ctrl+C in the command window and then press ENTER
  :answer_b: Type the name of the program with which it is saved in the command window and press ENTER
  :answer_c: Click ‘Run’
  :answer_d: Type Ctrl+Z in the command window and then press ENTER
  :correct: a
  :feedback_a: Correct! Ctrl+C stops the execution of the program immediately. This will be very helpful to know.
  :feedback_b: Incorrect. Try these commands in MATLAB and find out what do they exactly do?
  :feedback_c: Incorrect. Try these commands in MATLAB and find out what do they exactly do?
  :feedback_d: Incorrect. Try these commands in MATLAB and find out what do they exactly do?

  Which of the following actions stops the executions of a program?

.. mchoice:: aa-inputsoutputs_02_intromatlab_10
  :author: Ashish Aggarwal
  :answer_a: Test 1.m
  :answer_b: Test_2.m
  :answer_c: 12Test.m
  :answer_d: $Test.m
  :answer_e: Test$.m
  :answer_f: _Test.m
  :correct: b
  :feedback_a: Incorrect. Remember, a valid .m filename must start with a letter and can contain letters, numbers or underscores.
  :feedback_b: Correct! A valid .m filename must start with a letter and can contain letters, numbers or underscores.
  :feedback_c: Incorrect. Remember, a valid .m filename must start with a letter and can contain letters, numbers or underscores.
  :feedback_d: Incorrect. Remember, a valid .m filename must start with a letter and can contain letters, numbers or underscores.
  :feedback_e: Incorrect. Remember, a valid .m filename must start with a letter and can contain letters, numbers or underscores.
  :feedback_f: Incorrect. Remember, a valid .m filename must start with a letter and can contain letters, numbers or underscores.

  Which of the following is a valid name to save the program file in MATLAB?

.. mchoice:: aa-inputsoutputs_02_intromatlab_15
  :author: Ashish Aggarwal
  :answer_a: The number is 50
  :answer_b: The number is ii
  :answer_c: The number is 250
  :answer_d: ERROR
  :correct: b
  :feedback_a: Incorrect. Recall how fprintf() works and try again.
  :feedback_b: Correct! 
  :feedback_c: Incorrect. Recall how fprintf() works and try again.
  :feedback_d: Incorrect. Recall how fprintf() works and try again.

  For the given fprintf() statement, what is the function of putting '/n'?

  .. code-block:: matlab
  
     clc; clear;
     ii = 50;
     ii = ii*5;
     fprintf('The number is ii');

.. mchoice:: aa-inputsoutputs_02_intromatlab_17
  :author: Ashish Aggarwal
  :answer_a: Lines 4, 5, 6 and 7
  :answer_b: Lines 4, 6 and 9
  :answer_c: Line 7 only
  :answer_d: Lines 4, 7 and 9
  :correct: c
  :feedback_a: Incorrect. Analyze the program again one by one carefully.
  :feedback_b: Incorrect. Analyze the program again one by one carefully.
  :feedback_c: Correct! 
  :feedback_d: Incorrect. Analyze the program again one by one carefully.

  The program below should display a number which is the sum of given two numbers x and y divided by the product of these numbers. Which of the lines should be changed to correct this program so that it displays the right answer?

  .. code-block:: matlab
  
     1. x = input('Enter x: ');
     2. y = input('Enter y: ');
     3. 
     4. a = x + x;
     5. b = x + y;
     6. c = y * x
     7. z = c/b;
     8. 
     9. disp(z);