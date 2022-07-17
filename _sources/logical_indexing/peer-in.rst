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

.. mchoice:: aa-inputsoutputs_03_conditionals_01
  :author: Ashish Aggarwal
  :answer_a: Both the lines are same as xyz = 5 and xyz == 5 are assigning a value to a variable.
  :answer_b: Both the lines are different as xyz = 5 is assignment and xyz == 5 is comparison.
  :answer_c: Both the lines are different as xyz = 5 is comparison and xyz == 5 is assignment.
  :answer_d: Both the lines are same as xyz = 5 and xyz == 5 are comparing a value with a variable.
  :correct: b
  :feedback_a: Incorrect. Assignment and comparison differentiate them, check out in MATLAB which is is used to assign a value and which is used to compare it.
  :feedback_b: Correct! 
  :feedback_c: Incorrect. Assignment and comparison differentiate them, check out in MATLAB which is is used to assign a value and which is used to compare it.
  :feedback_d: Incorrect. Assignment and comparison differentiate them, check out in MATLAB which is is used to assign a value and which is used to compare it.

  Choose an option which is true for the following lines of code: 

  .. code-block:: matlab
  
     xyz == 5;
     xyz == 5;

.. mchoice:: aa-inputsoutputs_03_conditionals_02
  :author: Ashish Aggarwal
  :answer_a: && has a priority over ||
  :answer_b: || has a priority over &&
  :answer_c: When it comes to executing a conditions, || and && have same priority
  :answer_d: Sometimes && has priority over || and sometimes || has priority over &&
  :correct: a
  :feedback_a: Correct! You are clear on how conditions are evaluated.
  :feedback_b: Incorrect. Take a complex condition in MATLAB and check which one has the priority.
  :feedback_c: Incorrect. Take a complex condition in MATLAB and check which one has the priority.
  :feedback_d: Incorrect. Take a complex condition in MATLAB and check which one has the priority.

  Which of the following statements is true regarding the use of && (AND) and || (OR) operator is conditions?

.. mchoice:: aa-inputsoutputs_03_conditionals_03
  :author: Ashish Aggarwal
  :answer_a: If x>20 && x<100
  :answer_b: If 20<x && 100>x
  :answer_c: If 20<x<100
  :answer_d: If x<100 and x>20
  :answer_e: If 100>x && 20<x
  :correct: c
  :feedback_a: Incorrect. Take some sample value of x and y and try it yourself in MATLAB. You will come to know which one is not correct.
  :feedback_b: Incorrect. Take some sample value of x and y and try it yourself in MATLAB. You will come to know which one is not correct.
  :feedback_c: Correct! 
  :feedback_d: Incorrect. Take some sample value of x and y and try it yourself in MATLAB. You will come to know which one is not correct.
  :feedback_e: Incorrect. Take some sample value of x and y and try it yourself in MATLAB. You will come to know which one is not correct.

  Which of the following is not a correct way of writing an if-condition?

.. mchoice:: aa-inputsoutputs_03_conditionals_04
  :author: Ashish Aggarwal
  :answer_a: Yes, they are same and having parenthesis will make no difference in how they are evaluated.
  :answer_b: The way conditions are evaluated will depend on the values of x and y.
  :answer_c: No, they are not same as having parenthesis will impact the way the conditions are evaluated.
  :correct: c
  :feedback_a: Incorrect. Check yourself and try these conditions in MATLAB by taking x = 2 and y = 2.
  :feedback_b: Incorrect. Check yourself and try these conditions in MATLAB by taking x = 2 and y = 2.
  :feedback_c: Correct! 

  Are the two following if-conditions same? 

  .. code-block:: matlab
  
     Condition 1: if x == 2 || x == 3 && y == 2  || y == 3 
     Condition 2: if ( x == 2 || x == 3 ) && ( y == 2 || y == 3 )

.. mchoice:: aa-inputsoutputs_03_conditionals_09
  :author: Ashish Aggarwal
  :answer_a: 2
  :answer_b: 0.5
  :answer_c: 30
  :answer_d: 60
  :answer_e: ERROR
  :correct: c
  :feedback_a: Incorrect. Remember that mod(x,y) gives you the remainder when x is divided by y. So what will be the remainder when 30 is divided by 60? You can definitely find it!
  :feedback_b: Incorrect. Remember that mod(x,y) gives you the remainder when x is divided by y. So what will be the remainder when 30 is divided by 60? You can definitely find it!
  :feedback_c: Correct! 
  :feedback_d: Incorrect. Remember that mod(x,y) gives you the remainder when x is divided by y. So what will be the remainder when 30 is divided by 60? You can definitely find it!
  :feedback_e: Incorrect. Remember that mod(x,y) gives you the remainder when x is divided by y. So what will be the remainder when 30 is divided by 60? You can definitely find it!

  What is mod(30,60)?

.. mchoice:: aa-inputsoutputs_03_conditionals_10
  :author: Ashish Aggarwal
  :answer_a: If x == A and y ~= Z
  :answer_b: If x ~= A and y == Z
  :answer_c: If x == ‘A’ and y ~= ‘Z’ 
  :answer_d: If x ~= ‘A’ and y == ‘Z’
  :correct: c
  :feedback_a: Incorrect. Remember that when comparing with letters, we put single quotes around the letter being compared. This differentiates a symbol from it being a variable. 
  :feedback_b: Incorrect. Remember that when comparing with letters, we put single quotes around the letter being compared. This differentiates a symbol from it being a variable. 
  :feedback_c: Correct! 
  :feedback_d: Incorrect. Remember that when comparing with letters, we put single quotes around the letter being compared. This differentiates a symbol from it being a variable. 
  
  Which of the following conditions checks if variable x is same as letter A and variable y is different from letter Z?

.. mchoice:: aa-inputsoutputs_03_conditionals_11
  :author: Ashish Aggarwal
  :answer_a: variable = input('Enter a letter: ');
  :answer_b: variable = input('Enter a letter: ' , 's');
  :answer_c: variable = fprintf('Enter a letter: ');
  :answer_d: variable = input('Enter a letter: ' , %s);
  :answer_e: variable = input();
  :correct: b
  :feedback_a: Incorrect. Remember that to take a string/letter as input, we put ‘s’ in the input statement after the input prompt. This implies that input will be of string type and not a number.
  :feedback_b: Correct! 
  :feedback_c: Incorrect. Remember that to take a string/letter as input, we put ‘s’ in the input statement after the input prompt. This implies that input will be of string type and not a number.
  :feedback_d: Incorrect. Remember that to take a string/letter as input, we put ‘s’ in the input statement after the input prompt. This implies that input will be of string type and not a number.
  :feedback_e: Incorrect. Remember that to take a string/letter as input, we put ‘s’ in the input statement after the input prompt. This implies that input will be of string type and not a number.
  
  Which of the following options is the correct syntax to take a letter as input from a user?

.. mchoice:: aa-inputsoutputs_03_conditionals_13
  :author: Ashish Aggarwal
  :answer_a: fprintf('You don’t have 80% points');
  :answer_b: fprintf('You don''t have 80% points');
  :answer_c: fprintf('You don''t have 80%% points');
  :answer_d: fprintf('You don't have 80%% points');
  :correct: c
  :feedback_a: Incorrect. Displaying apostrophe or percent sign maybe a little tricky, you put them twice wherever you want them in fprintf() statement.
  :feedback_b: Incorrect. Displaying apostrophe or percent sign maybe a little tricky, you put them twice wherever you want them in fprintf() statement.
  :feedback_c: Correct!
  :feedback_d: Incorrect. Displaying apostrophe or percent sign maybe a little tricky, you put them twice wherever you want them in fprintf() statement.
  
  Which of the following fprintf() will display this statement: You don’t have 80% points.

.. mchoice:: aa-inputsoutputs_03_conditionals_14
  :author: Ashish Aggarwal
  :answer_a: a will be 12 and b will be 24
  :answer_b: a will be 24 and b will be 12
  :answer_c: a will be 12 and b will be 12
  :answer_d: a will be 24 and b will be 24
  :answer_e: ERROR
  :correct: c
  :feedback_a: Incorrect. Check the conditions again, note that only one condition gets executed.
  :feedback_b: Incorrect. Check the conditions again, note that only one condition gets executed.
  :feedback_c: Correct!
  :feedback_d: Incorrect. Check the conditions again, note that only one condition gets executed.
  :feedback_e: Incorrect. Check the conditions again, note that only one condition gets executed.
  
  What will be the values of a and b after the execution of this code? 

  .. code-block:: matlab
  
     clc; clear;
     a = 2;
     a = a*2;
     a = a*3;
     b = 24;
     
     if a < b
      b = b/2;
     
     elseif a == b/2
      a = 2*a;
      b = b/2;

     else 
      a = 2*a;

     end
