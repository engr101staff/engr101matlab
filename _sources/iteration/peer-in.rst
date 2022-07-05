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

.. mchoice:: jh-inputs_20_intromatlab_03
  :author: Joe Hummel

    Which loop counts exactly 1, 2, 3,..., 20, and then stops? Assume i is an integer variable.

    - .. code-block:: cpp

     i = 1;
     while (i <= 20)
     {
       ...
       i = i + 1;
     }

      - ``

    - .. code-block:: cpp

     i = 1;
     while (i != 20)
     {
       ...
       i = i + 1;
     }

      - 

    - .. code-block:: cpp

     i = 0;
     while (i <= 20)
     {
       ...
       i = i + 1;
     }

      - 

    - .. code-block:: cpp

     i = 0;
     while (i < 20)
     {
       ...
       i = i + 1;
     }

      - 
  
    - All of the above.

.. mchoice:: jh-inputs_20_intromatlab_03
  :author: Joe Hummel

    What is output by this code fragment? 

    .. code-block:: cpp

     int  x;
     x = 2;

     while (x <= 7)
     {
       cout << pow(x, 2) << ",";
       x = x + 2;
     }
     cout << "#";



    - 1,4,9,16,25,36,49,# 

      - Incorrect. There are two functions to consider in this while loop--take a look at the code and reconsider!

    - 4,9,16,25,36,49,#

      - Incorrect. There are two functions to consider in this while loop--take a look at the code and reconsider!

    - 4,16,36,49,#

      - Incorrect. There are two functions to consider in this while loop--take a look at the code and reconsider!

    - 4,16,36,#

      + Correct. We see the function outputs 4, 16, and 36, completes the loop, and finishes with #. 

.. mchoice:: jh-inputs_20_intromatlab_03
  :author: Joe Hummel

    What is output by this code fragment? 

    .. code-block:: cpp

     int  x = 1;
     int y = 0;

     while (x <= 5)
     {
       y = y + x;
       x = x + 1;
     }
     cout << "y" << endl;



    - 5

      - Incorrect. The output of y at the end of this while loop is not 5--try writing out the steps to see the correct answer.

    - 10

      - Incorrect. The output of y at the end of this while loop is not 10--try writing out the steps to see the correct answer.

    - 15

      + Correct. The output of y at the end of this while loop is 15.

    - 21

      - Incorrect. The output of y at the end of this while loop is not 10--try writing out the steps to see the correct answer.

.. mchoice:: =jh-inputs_20_intromatlab_03
  :author: Joe Hummel

    For exam score analysis, we have to loop and input the scores. What's the initial score to start things off?

    .. code-block:: cpp

     int score;
     "Initial Value"

     while("Condition")
     {
       "Computation"
       "Advance"
     }



    - score = -1;

      - Incorrect. 

    - score = 0;

      - Incorrect. 

    - cin >> score;

      + Correct. 

    - cout << score;

      - Incorrect. We don't have a score input yet, so we can't output score first.