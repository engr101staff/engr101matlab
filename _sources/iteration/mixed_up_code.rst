Mixed Up Code Exercises
-----------------------

Answer the following **Mixed-Up Code** questions to practice what you have learned in this chapter.

.. parsonsprob:: iteration_mixed_up_code_1 
    :numbered: left
    :adaptive:
    :noindent:
    :practice: T

    The program below should print out the even numbers between 20 and 40, inclusive,
    but the code is mixed up and contains extra blocks. Put the necessary blocks
    in the correct order.
    -----
    int main() {
    =====
       int n = 20;
    =====
       int n = 0; #distractor
    =====
       while (n <= 40) {
    =====
       while (n < 40) {                        #paired
    =====
          cout << n << endl;
    =====
          n = n + 2;
    =====
          n++;                 #distractor
    =====
          n = n * 2;                 #distractor
    =====
       }
    =====
    }

.. parsonsprob:: iteration_mixed_up_code_2
    :numbered: left
    :adaptive:
    :noindent:
    :practice: T

    The program below should count down from 100 to 0 in decrements of
    10 but the code is mixed up and contains extra blocks. Put the necessary blocks
    in the correct order.
    -----
    int main() {
    =====
       int n = 100;
    =====
       int n = 10; #distractor
    =====
       while (n >= 0) {
    =====
       while (n < 0) { #distractor
    =====
       while (n > 0) { #distractor
    =====
          cout << n << endl;
    =====
          n -= 10;
    =====
          n += 10;                 #distractor
    =====
       }
    =====
    }

.. parsonsprob:: iteration_mixed_up_code_3
    :numbered: left
    :adaptive:
    :noindent:
    :practice: T

    The program below should find the sum of the first 10 natural numbers,
    but the code is mixed up and contains extra blocks. Put the necessary blocks
    in the correct order.
    -----
    int main() {
    =====
       int n = 10; #distractor
    =====
       int sum = 0;
    =====
       int sum = n;  #distractor
    =====
       for (int n = 1; n <= 10; ++n) {
    =====
       for (int n = 1; n < 10; ++n) {  #paired
    =====
       while (n < 100) {  #distractor
    =====
       while (n <= 9) {  #distractor
    =====
          cout << n << endl;  #distractor
    =====
          sum = sum + n;
    =====
       }
    =====
        cout << sum << endl;
    =====
    }

.. parsonsprob:: iteration_mixed_up_code_4
    :numbered: left
    :adaptive:
    :practice: T

    Let's write the a program that uses a for
    loop to print out "hello" three times.
    -----
    int main() {
    =====
       int n = 0;  #distractor
    =====
       for (int i = 0; i < 3; ++i) {
    =====
       for (int i = 1; i < 3; ++i) {                #paired
    =====
          cout << "hello" << endl;
    =====
          --i;  #distractor
    =====
       }
    =====
    }

.. parsonsprob:: iteration_mixed_up_code_5
    :numbered: left
    :adaptive:

    Now let's write the same program as the previous question but using a while loop.
    -----
    int main() {
    =====
       int n = 0;
    =====
       while (n < 3) {
    =====
       while (n <= n) {                        #paired
    =====
          cout << "hello" << endl;
    =====
          cout << hello << endl;                        #paired
    =====
          n++;
    =====
       }
    =====
    }

.. parsonsprob:: iteration_mixed_up_code_6
    :numbered: left
    :adaptive:

    Let's write a program that prints out all numbers from 1 to ``i``, with ``i`` going from 5 to 1.
    For example, the first line should print "1 2 3 4 5", the second line should print "1 2 3 4" and so on until "1".
    Use a nested for loop.
    
        ::
        The ouput should be:
        1 2 3 4 5
        1 2 3 4
        1 2 3
        1 2 
        1
    -----
    int main() {
    =====
       for (int i = 5; i >= 1; --i) {
    =====
       for (int i = 1; i <= 5; ++i) {  #paired
    =====
          for (j = 1; j <= i; ++j) {
    =====
          for (j = 0; j < i; ++j) {  #paired
    =====
          for (j = 1; j <= 5; ++j) {  #paired
    =====
             cout << j << " ";
    =====
          }
    =====
          cout << endl;    
       }
    =====
    }

.. parsonsprob:: iteration_mixed_up_code_7
    :numbered: left
    :adaptive:
    :practice: T

    On the last day of every year, we count down the seconds before the new year arrives.
    Write the a program which prints out a countdown from 10 to 1 and then
    prints out "Happy New Year!".
    -----
    int main() {
    =====
       int n = 10;
    =====
       int n = 0;                       #paired
    =====
       while (n > 0) {
    =====
       while (n != 10) {                        #paired
    =====
          cout << n << " ";
    =====
          n--;
    =====
          n++;                          #paired
    =====
       }
    =====
       cout << "Happy New Year!" << endl;
    }

.. parsonsprob:: iteration_mixed_up_code_8
    :numbered: left
    :adaptive:
    :practice: T

    Help Goku reach power levels of over 9000! Write a program
    which checks if a variable ``powerLevel`` is over 9000. If it
    isn't, it repeatedly prints "More power!" and increments ``powerLevel`` by
    1000 until ``powerLevel`` is over 9000. Then the program prints "It's over 9000!".
    Put the necessary blocks in the correct order.
    -----
    int main() {
    =====
       int powerLevel = 6500;
    =====
       while (powerLevel < 9000) {
    =====
       while (powerLevel > 9000) {  #paired
    =====
          cout << "More power!" << endl;
    =====
          powerLevel = powerLevel + 1000;
    =====
          powerLevel++;  #paired
    =====
       }
    =====
       if (powerLevel < 9000) {  #distractor
    =====
       cout << "It's over 9000!" << endl;
    }

.. parsonsprob:: iteration_mixed_up_code_9
    :numbered: left
    :adaptive:
    :practice: T

    Write the a program that finds the summation from ``start`` and ``end``. 
    The program should add all the integers from ``start`` to ``end``, inclusive, together and output
    the sum. Put the necessary blocks in the correct order.
    -----
    int main() {
    =====
       int start = 3;
       int end = 12; 
    =====
       int n = start;  #distractor
    =====
       int sum = 0;
    =====
       int sum = start;  #distractor
    =====
       for (int i = start; i <= end; ++i) {
    =====
       for (int i = 0; i <= end; ++i) {  #paired
    =====
          sum = sum + i;
    =====
          i++;  #paired
    =====
       }
    =====
       cout << sum << endl;
    =====
    }

.. parsonsprob:: iteration_mixed_up_code_10
    :numbered: left
    :adaptive:
    :practice: T

    Write a function that reverses the digits in a variable ``num`` and outputs the reversed number.
    For example, if ``num`` was 1324, output 4231.
    Put the necessary blocks in the correct order, with ``num``
    declared first, then ``reverse``, then ``temp``, and lastly ``remainder``.
    -----
    int main() {
    =====
       int num = 123456;
    =====
       int reverse = 0;
    =====
       int temp = num;
    =====
       int remainder = 0;
    =====
       while (temp > 0) {
    =====
          remainder = temp % 10;
    =====
          reverse = reverse * 10 + remainder;
    =====
          temp = temp / 10;
    =====
       }
    =====
       cout << reverse << endl;
    =====
    }
