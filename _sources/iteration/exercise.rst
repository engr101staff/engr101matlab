Multiple Choice Exercises
-------------------------

.. mchoice:: mce_6_1
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

      int main() {
        int i = 0;
        while (i < 12) {
            if (i % 2 == 1) {
                cout<<i<<" ";
            }
            ++i;
        }
      }

    - 1 3 5 7 9 11

      + ``i`` is initialized to 0 and increment by 1 each time. Then all the odd number is printed
    
    - 0 2 4 6 8 10
    
      - Double check the conditional statement of the loop, ``++i`` means the loop would go up by 1 each time.
    
    - 1 2 3 4 5 6
    
      - ``i`` is initialized to 0 and will go up to 12 when the loop ends.
    
    - 1 2 4 8
    
      - Double check the ``%`` expression. ``5 % 2`` would return a reminder ``1``

.. mchoice:: mce_6_2
    :practice: T

    What is the final value of ``i`` when the code is finished running?

    .. code-block:: cpp

     int main() {
       int x = 0;
       int i = 1;
       while (i < 10) {
         x = i;
         i++;
       }
       cout << x;
     }

    - 0
    
      - ``i`` is initialized with a value of 1 and is incremented, so it will never have a value of 0.
    
    - 1
    
      - ``i`` is initialized with a value of 1 but it is incremented during the while loop.
    
    - 9
    
      - This is the final value of ``x`` when the code is finished running.
    
    - 10
    
      + In order for the while loop to terminate, the condition ``i < 10`` must be false, and this is achieved when ``i`` is incremented to 10.

.. mchoice:: mce_6_3
    :practice: T

    What is the value of ``magic_number`` after code below runs?

    .. code-block:: cpp

     int main() {
       int i = 6;
       int magic_number = 0;
       while (true) {
         if (i == -1){
           magic_number = 2021;
           break;
         }

         --i;
       }
     }

    - -1
    
      - Check the line below the ``if`` statement. Notice how ``magic_number`` is assighed to a certain value.
    
    - 6
    
      - ``while (true)`` would start an infinite loop. ``--i`` means i would decrement by 1 each time.
    
    - 2021
    
      + Wow! You got this!
    
    - The loop will run infinitely.
    
      - ``while (true)`` would start an infinite loop but ``break`` would terminate the loop whenever the if condition runs.
      
.. mchoice:: mce_6_4
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

     int main() {
       for(int i = 0;i < 4;i++){
          cout<<i * i<<"  ";
       }
     }

    - 0 1 2 3
    
      - Notice the statement inside loop is ``i * i`` not ``i``.
    
    - 0 1 4 9
    
      + Good job!
    
    - 1 2 3 4
    
      - Notice ``i`` starts with 0 and goes up to 1 less than 4.
    
    - The loop will run infinetly.
    
      - In general, ``for`` loop would not be infinite loop becasue you have to set up the ending value when you created the loop

.. mchoice:: mce_6_5
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

.. mchoice:: mce_6_6
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

     int main() {
       int n = 10;
       cout << "Bat ";
       cout << "man ";
       while (n != 3) {
         cout << "!";
       }
       cout << "Batman!";
     }

    - Batman!
    
      - Take a closer look at the ``cout`` statement before.
    
    - Batman!!!Batman!
    
      - Take a closer look at the ``n`` value
    
    - BatmanBatman!
    
      + "Batman punches people in the face." --Batman
    
    - It will result in an infinite loop.
    
      - Since we never change the value of ``n``, 10 will never equal 3 so the code will run forever.

.. mchoice:: mce_6_7
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

     int main() {
        for(int i = 0;i < 1;i++){
          for(int x = 0; x < 4;x++){
              cout<<i<<x<<" ";
          }
        }
     }

    - 00 01 02 03

      + Well done!
    
    - 00 10 20 30

      - Double check the value of ``i`` and ``x``.
    
    - 01 12 23 34

      - Notice the ``i`` value would equal to zero the entire time.
    
    - 00 11 22 33
    
      - Double check with the value of ``i``.

.. mchoice:: mce_6_8
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

      int main() {
          int x = 2021;
          while (x != 0){
              int each_digit = x % 10;
              cout << each_digit;
              x = x / 10;
          }
      }

    - 1202

      + Good job! This is a recommended method when you want to reverse a nunber.``x / 10`` would give you everything beside the last digit. ``x % 10`` would only give you the last digit.
        Pro tip: if you change the ``10`` into ``2``. You can convert the value ``2021`` into binary digit but in backwards. You would need reverse the digit after you convert into binary.


    - 2021
    
      - The loop would print each digit, but in reverse order. 


    - 1234

      - Double check the loop again.

    - It will result in an infinite loop.

      - Notice ``x = x /10``. This line of code would divide x by 10 each time, and gives us zero when we run out of digits. The loop would terminates when it goes over every single digit of the x.

.. mchoice:: mce_6_9
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp
   
     int main () {
       int n = 3;
       while (n % 5 != 0) {
         n = n + 3;
       }
       cout << n << endl;
     }

    - 3

      - Check the ``while`` loop again. Notice, ``n`` would go up by 3 each time the loop runs.


    - 12
    
      - You are very close. Notice ``while (n % 5 != 0)`` would means the loop will terminate if ``n % 5`` equal zero. 

    - 15

      + Good job!

    - It will result in an infinite loop.

      - The loop will terminates when ``n`` is divisble by 5.

.. mchoice:: mce_6_10

    Which of the following code segments will produce the displayed output?

    .. code-block:: cpp

     Expect output:
     1
     22
     333


     I. for(int i =1;i<=3;i++){
            for(int x = i; x > 0;x--){
                cout<<i;
            }
            cout<<endl;
        }
     II. for(int i =1;i<=3;i++){
            for(int x = 1; x <=3 ;x++){
                cout<<x;
            }
            cout<<endl;
        }
      III. for(int i =1;i<=3;i++){
            for(int x = i; x <= 3;x++){
                cout<<i;
            }
            cout<<endl;
          }

    - I

      + The first loop prints out value ``1,2,3``. Then we want to make 1 apper one time, 2 for two times. So we want the inner for loop decreases as outter for loop increases.

    - II
    
      - We want the number in each line remains the same all the time. Then inner for loop make ``x`` increment by one each time.

    - III

      - This would gives us the right value but wrong order. We want ``1`` to apper once and ``3`` appear three times. This loop would make ``1`` apper three times and ``3`` appears three times.
