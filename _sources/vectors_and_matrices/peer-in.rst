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

.. mchoice:: aa-inputsoutputs_08_vectors_02
  :author: Ashish Aggarwal
  :answer_a: vec(4) = 55;
  :answer_b: vec = [vec(1:3) 55 vec(4:5)];
  :answer_c: vec = [vec(1:4) 55 vec(4:6)];
  :answer_d: vec = [55 vec(1:3) vec(4:6)];
  :correct: b
  :feedback_a: Incorrect. Check out the syntax for vector growing.
  :feedback_b: Correct!
  :feedback_c: Incorrect. Check out the syntax for vector growing.
  :feedback_d: Incorrect. Check out the syntax for vector growing.
  
  Which of the following options represents a correct way to insert number 55 after the first 3 positions in the following vector?

  .. code-block:: matlab
  
     vec = [22 33 44 66 77];

.. mchoice:: aa-inputsoutputs_08_vectors_06
  :author: Ashish Aggarwal
  :answer_a: find( vec == 109 ) = [];
  :answer_b: vec( find(109) ) = [];
  :answer_c: vec( find(vec == 109, 3) ) =[];
  :answer_d: vec( find(vec == 109), 3 ) =[];
  :answer_e: vec( find(vec == 109) ) = [];
  :correct: c
  :feedback_a: Incorrect. Remember that find( condition , n ) indicates that at max it will return first  ‘n’ number of positions that satisfy the condition of the find() command. Here, since we need to delete the first 3 duplicates, we will use 3 in the find() command.
  :feedback_b: Incorrect. Remember that find( condition , n ) indicates that at max it will return first  ‘n’ number of positions that satisfy the condition of the find() command. Here, since we need to delete the first 3 duplicates, we will use 3 in the find() command.
  :feedback_c: Correct!
  :feedback_d: Incorrect. Remember that find( condition , n ) indicates that at max it will return first  ‘n’ number of positions that satisfy the condition of the find() command. Here, since we need to delete the first 3 duplicates, we will use 3 in the find() command.
  :feedback_e: Incorrect. Remember that find( condition , n ) indicates that at max it will return first  ‘n’ number of positions that satisfy the condition of the find() command. Here, since we need to delete the first 3 duplicates, we will use 3 in the find() command.
  
   Which of the following commands will delete all the duplicates of 109 in the following vector except the last one such that the output is [33 55 108 109].

  .. code-block:: matlab
  
     vec = [33 109 55 109 109 108 109];

.. mchoice:: aa-inputsoutputs_08_vectors_17
  :author: Ashish Aggarwal
  :answer_a: find(vec > 50);
  :answer_b: length( find(vec > 50) ); 
  :answer_c: sum( find(vec> 50) );
  :answer_d: vec( find(vec > 50) );
  :correct: b
  :feedback_a: Incorrect. Check these commands one by one in MATLAB and carefully observe what do you get. Then find out which one is the correct response.
  :feedback_b: Correct!
  :feedback_c: Incorrect. Check these commands one by one in MATLAB and carefully observe what do you get. Then find out which one is the correct response.
  :feedback_d: Incorrect. Check these commands one by one in MATLAB and carefully observe what do you get. Then find out which one is the correct response.
  
   Which of the following commands will return the count of total number of values which are greater than 50 in the following vector:

  .. code-block:: matlab
  
     vec = [ 51 22 21 33 88 991 6 ];

.. mchoice:: aa-inputsoutputs_08_vectors_20
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