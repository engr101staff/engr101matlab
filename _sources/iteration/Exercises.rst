Multiple Choice Exercises
-------------------------

These questions are **completely OPTIONAL**. We provide these exercises to give you more practice with the material that you've learned. 
Additionally, they may be a helpful resource when reviewing for assessments.

.. mchoice:: iteration_mcq_1
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

     int main() {
       int x = 0;
       for (int i = 1; i < 10; ++i) {
         x = i;
       }
       cout << x;
     }

    - 0

      - ``x`` is initialized to 0, but its value is reassigned in the for loop. Can you figure out what the final value assigned to ``x`` is?

    - 1

      - When ``i`` is 1, ``x`` is assigned the value of ``i``, so ``x`` is 1. However, the for loop continuously increments i, so the final value of ``x`` is not 1.

    - 9

      + ``x`` is assigned the value of 9 during the last iteration of the for loop, and thus 9 is the output of the program.

    - 10

      - ``i`` is incremented to a value of 10, but since ``i < 10`` is false, the contents of the for loop are not executed, so ``x`` is never assigned the value of 10.

.. mchoice:: iteration_mcq_2
    :practice: T

    What is the final value of ``i`` when the code is finished running?

    .. code-block:: cpp

     int main() {
       int x = 0;
       for (int i = 1; i < 10; ++i) {
         x = i;
       }
       cout << x;
     }

    - 0

      - ``i`` is initialized with a value of 1 and is incremented, so it will never have a value of 0.

    - 1

      - ``i`` is initialized with a value of 1, but it is incremented during the for loop.

    - 9

      - This is the final value of ``x`` when the code is finished running.

    - 10

      + In order for the for loop to terminate, the condition ``i < 10`` must be false, and this is achieved when ``i`` is incremented to 10.

.. mchoice:: iteration_mcq_3
    :practice: T

    How many times does the following while loop run?

    .. code-block:: cpp

     int main() {
       int i = 6;
       while (i > 2) {
         i = i + 4;
         if (i > 8) {
           i = i - 5;
       }
     }

    - 1

      - Take a closer look at the while loop and conditional.

    - 3

      - Take a closer look at the while loop and conditional.

    - 5

      - Take a closer look at the while loop and conditional.

    - The loop will run infinitely.

      + The value of ``i`` will always be greater than 2, resulting in an infinite loop.

.. mchoice:: iteration_mcq_4
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

     int main() {
       int j = 6;
       int i = j + 4;
       cout << "People ";
       i = i % 2;
       i = i - 1;
       while (i < 3) {
         cout << "really ";
         if (i > 0) {
           cout << "really ";
         }
         i += 2;
       }
       cout << "like Joe's Pizza." << endl;
     }

    - People really like Joe's Pizza.

      - Take a closer look at the while loop condition.

    - People really really really like Joe's Pizza.

      + The code will print out three "really"s, two from evaluating the while loop condition and one from evaluating the if condition before printing out "like Joe's Pizza".

    - People really really really really really like Joe's Pizza.

      - Take a closer look at the while loop condition.

    - The loop will run infinitely.

      - Take a closer look at the while loop condition and reassignment of ``i``

.. mchoice:: iteration_mcq_5
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

      int main() {
        int n = 10;
        // cout << "Da ";
        cout << "na ";
        while (n != 3) {
          cout << "na ";
          n--;
        }
        cout << "Batman!";
      }

    - na na na na na na na na Batman!

      + The code prints out eight "na"s before printing out "Batman!"

    - na na na na na na na Batman!

      - Look over the code carefully. There are output statements before the while loop.

    - Da na na na na na na na na Batman!

      - Will "Da" ever be printed?

    - It will result in an infinite loop.

      - Since we repeatedly decrement ``n`` inside the while loop, it will eventually be equal to 3 and the while loop will terminate.

.. mchoice:: iteration_mcq_6
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

     int main() {
       int n = 10;
       cout << "Da ";
       cout << "na ";
       while (n != 3) {
         cout << "na ";
       }
       cout << "Batman!";
     }

    - Batman!

      - Take a closer look at the while loop.

    - Da Batman!

      - Take a closer look at the while loop.

    - Da na na na na na na na na Batman!

      - Take a closer look at the while loop.

    - It will result in an infinite loop.

      + Since we never change the value of ``n``, 10 will never equal 3 so the code will run forever.

.. mchoice:: iteration_mcq_7
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

     int main() {
       int n = 2;   
       while (n % 5 != 0) {
         n = n + 3;
       }
       cout << n;

       n = 3;
       while (n % 5 != 0) {
         n = n + 3;
       }
       cout << n;

       n = 4;
       while (n % 5 != 0) {
         n = n + 3;
       }
       cout << n;
     }

    - 51510

      + ``n`` is repeatedly incremented by 3 until it is divisible by 5, and this happens when ``n`` is 5, 15, and 10 for the ``n`` values of 2, 3, and 4 respectively.

    - 234

      - Although the program outputs ``n``, ``n`` might not be its original value.

    - 5 15 10

      - Take a closer look at the output statements.

    - 567

      - Take a closer look at the ``while`` loop.

.. mchoice:: iteration_mcq_8
    :practice: T

    The super evil villian RePete wants to annoy the city by
    hacking into the city's helper robots and making them repeat
    everything they say 5 times. However, there's an error in his
    code and now the robots won't stop repeating! Can you find the
    error?

    .. code-block:: cpp

     int main() {
       string input = "How may I help you?"; 
       int n = 0;
       while (n < 5) {
         cout << input << " ";
         n--;
       }
     }

    - ``n`` must be declared before ``input``.

      - The order of initialization does not matter in this case.

    - ``n`` is declared to be 0, and 0 is always less than 5.

      - The code doesn't loop infinitely because of the value ``n`` was declared to be.

    - Every time the ``while`` loop runs, ``n`` is reset to 0, so it will always be less than 5.

      - The initialization of ``n`` occurs outside the ``while`` loop, so the value of ``n`` does not get reset to 0.

    - ``n`` is declared to be 0 and we continuously decrement ``n`` so it will always be less than 5.

      + Since ``n`` starts at 0 and gets smaller, the conditional for the ``while`` loop will always be true, and thus the code runs forever.

.. mchoice:: iteration_mcq_9

    After making some changes to his code, RePete tries again.
    This time, however, the robots don't repeat anything!
    Can you find the new error?

    .. code-block:: cpp

     int main() {
       string input = "How may I help you?"; 
       int n = 0;
       while (n > 5) {
         cout << input << " ";
         n++;
       }
     }

    - ``n > 5`` is not a valid conditional, so the ``while`` loop doesn't execute.

      - ``n > 5`` is a boolean statement and thus is a valid conditional.

    - The value of ``n`` never gets modified in the ``while`` loop.

      - ``n`` is incremented in the ``while`` loop after the ``cout`` statement.

    - In the ``cout`` statement, only spaces are printed.

      - ``input`` is also printed.

    - The conditional for the ``while`` loop is not met.

      + Since ``n`` is declared to be 0, 0 is not greater than 5, so the ``while`` loop does not execute.

.. mchoice:: iteration_mcq_10

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

.. mchoice:: iteration_mcq_11

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

.. mchoice:: iteration_mcq_12

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

.. mchoice:: iteration_mcq_13

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
