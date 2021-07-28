Coding Practice
--------------------

Answer the following **Coding Practice** questions to practice what you have learned in this chapter.

.. tabbed:: iteration_1

    .. tab:: Question

        Write a program that prints out a 5x5 triangle using asterisks.
        An example is shown below. Your code should use **for** loops. Your output should look
        like:

        ::
   
           *****
           ****
           ***
           **
           *

        .. activecode:: iteration_ac_1q 
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           int main() {
               // Write your implementation here.
           }


    .. tab:: Answer

        Below is one way to implement the program. Similar to the right side up
        triangle we saw previously, we can use nested loops.

        .. activecode:: iteration_ac_1a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           int main() {
               for (int row = 0; row < 5; ++row) {
                   for (int col = 5 - row; col > 0; --col) {
                       cout << "*";
                   }
                   cout << endl;
               }
           }

.. tabbed:: iteration_2 

    .. tab:: Question

        .. activecode:: iteration_ac_2q
            :language: cpp

            Write the previous program, but use while loops instead.
            ~~~~
            #include <iostream>
            using namespace std;

            int main() {
                // Write your implementation here.
            }

    .. tab:: Answer

        .. activecode:: iteration_ac_2a
            :language: cpp

            Below is one way to write the program using while loops. 
            ~~~~
            #include <iostream>
            using namespace std;

            int main() {
                int row = 0;
                while (row < 5) {
                    int col = 5 - row;
                    while (col > 0) {
                        cout << "*";
                        --col;
                    }
                    cout << endl;
                    ++row;
                }
            }

.. tabbed:: iteration_3

    .. tab:: Question

        Write a program that prints a pyramid with height 5 like the one shown below.
        Your code should use while loops.

        ::
   
               *
              ***
             *****
            *******
           *********

        .. activecode:: iteration_ac_3q
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           int main() {
               // Write your implementation here.
           }


    .. tab:: Answer

        Below is one way to implement the program. We use multiple ``while``
        loops to print out spaces and asterisks. The outer loop creates the
        number of rows, and within the outer loop, the two inner loops
        print out the correct number of spaces and asterisks.

        .. activecode:: iteration_ac_3a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           int main() {
               int n = 5;
               int space, numAsterisks;
               int count = 1;
               while (count <= n) {
                   space = n - count;
                   while (space > 0) {
                       cout << " ";
                       space--;
                   }
                   numAsterisks = 2 * count - 1;
                   while (numAsterisks > 0) {
                       cout << "*";
                       numAsterisks--;
                   }
                   cout << endl;
                   count++;
               }
           }

.. tabbed:: iteration_4 

    .. tab:: Question

        .. activecode:: iteration_ac_4q
            :language: cpp
            :practice: T

            Now write a program that prints a number pyramid like the one below. Your code should use while loops.
            (Hint: similar to the previous question, if you want the output to look nice, using conditionals
            that print different amounts of spaces.)

            ::
        
                    1
                   222
                  33333
                 4444444
                555555555
            ~~~~
            #include <iostream>
            using namespace std;

            int main() {
                // Write your implementation here.
            }

    .. tab:: Answer

        .. activecode :: iteration_ac_4a
            :language: cpp 
            :practice: T 

            Below is one way to write the program using while loops.
            ~~~~
            #include <iostream>
            using namespace std;
            
            int main() {
               int n = 5;
               int space, pyramidNum;
               int count = 1;
               while (count <= n) {
                   space = n - count;
                   while (space > 0) {
                       cout << " ";
                       space--;
                   }
                   pyramidNum = 2 * count - 1;
                   while (pyramidNum > 0) {
                       cout << count;
                       pyramidNum--;
                   }
                   cout << endl;
                   count++;
               }
            }

.. tabbed:: iteration_5

    .. tab:: Question

        A common coding interview question that's also a popular children's game used to teach division is
        FizzBuzz. Write a program that uses a for loop and prints the numbers 1 through 100, but every
        multiple of 3 is replaced with the word "Fizz," every multiple of 5 is replaced with the word "Buzz,"
        and every multiple of both 3 and 5 is replaced with "FizzBuzz." Your output should be the following:

        ::
   
           1
           2
           Fizz
           4
           Buzz
           ...
           14
           FizzBuzz
           16
           ...
           98
           Fizz
           Buzz

        .. activecode:: iteration_ac_5q
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           int main() {
               // Write your implementation here.
           }


    .. tab:: Answer

        Below is one way to implement the "FizzBuzz" program. We use conditionals
        with modulus operators in a for loop to categorize every number and print
        the correct output. Feel free to search up on the FizzBuzz coding interview
        problem if you are interested in other ways to code this program!

        .. activecode:: iteration_ac_5a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           int main() {
               for (int i = 1; i <= 100; ++i) {
                   if (n % 3 == 0 && n % 5 == 0) {
                       cout << "FizzBuzz" << endl;
                   }
                   else if (n % 3 == 0) {
                       cout << "Fizz" << endl;
                   }
                   else if (n % 5 == 0) {
                       cout << "Buzz" << endl;
                   }
                   else {
                       cout << n << endl;
                   }
               }
           }

.. tabbed:: iteration_6

    .. tab:: Question

        .. activecode:: iteration_ac_6q
            :language: cpp
            :practice: T

            Help! Young Bobby forgot his multiplication table. Luckily for him, he knows a bit of programming.
            Unfortunately, he doesn't know enough programming. He wants to create a multiplication table like the
            one below, but there are errors in his code. Can you fix them?

            ::

                0       1       2       3       4       5       6       7       8       9      10
                1       1       2       3       4       5       6       7       8       9      10
                2       2       4       6       8       10      12      14      16      18     20
                3       3       6       9       12      15      18      21      24      27     30
                4       4       8       12      16      20      24      28      32      36     40
                5       5       10      15      20      25      30      35      40      45     50
                6       6       12      18      24      30      36      42      48      54     60
                7       7       14      21      28      35      42      49      56      63     70
                8       8       16      24      32      40      48      56      64      72     80
                9       9       18      27      36      45      54      63      72      81     90
                10      10      20      30      40      50      60      70      80      90     100
            ~~~~
            #include <iostream>
            using namespace std;

            int main() {
                for (int i = 0; i < 10; ++i) {
                    for (int j = i; j <= 10; ++j) {
                        if (i == 0) {
                            cout << i << '\t';
                        }
                        else if (j == 0) {
                            cout << i << '\t';
                        }
                        else {
                            cout << i + j << '\t';
                        }
                    }
                    cout << endl;
                }
            }

    .. tab:: Answer

        .. activecode:: iteration_ac_6a
            :language: cpp
            :practice: T 

            Below is one way to fix the program.

            ::

                0       1       2       3       4       5       6       7       8       9      10
                1       1       2       3       4       5       6       7       8       9      10
                2       2       4       6       8       10      12      14      16      18     20
                3       3       6       9       12      15      18      21      24      27     30
                4       4       8       12      16      20      24      28      32      36     40
                5       5       10      15      20      25      30      35      40      45     50
                6       6       12      18      24      30      36      42      48      54     60
                7       7       14      21      28      35      42      49      56      63     70
                8       8       16      24      32      40      48      56      64      72     80
                9       9       18      27      36      45      54      63      72      81     90
                10      10      20      30      40      50      60      70      80      90     100
            ~~~~
            #include <iostream>
            using namespace std;

            int main() {
                for (int i = 0; i < 10; ++i) {
                    for (int j = 0; j <= 10; ++j) {
                        if (i == 0) {
                            cout << j << '\t';
                        }
                        else if (j == 0) {
                            cout << i << '\t';
                        }
                        else {
                            cout << i * j << '\t';
                        }
                    }
                    cout << endl;
                }
            }

.. tabbed:: iteration_7

    .. tab:: Question

        Write a program that prints out "yes" or "no" depending on whether
        or not a number's digits are all the same. For example, if the number is 1111,
        the program would print out "yes" and if the number is 1234, the program would
        print out "no".

        .. activecode:: iteration_ac_7q
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           int main() {
               // Write your implementation here.
           }

    .. tab:: Answer

        Below is one way to implement program. We can extract each digit by 
        finding the number mod 10. We check to make sure that all digits 
        are the same and output "yes" or "no" depending on whether or not
        that's true.

        .. activecode:: iteration_ac_7a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           int main() {
               int number = 33333;
               int digit = number % 10;
               bool all_same = true;
               while (number > 0) {
                   int value = number % 10;
                   if (value != digit) {
                       all_same = false;
                   } 
                   number = number / 10;
               }
               if (all_same) {
                   cout << "yes" << endl;
               }
               else {
                   cout << "no" << endl;
               }  
           }

.. tabbed:: iteration_8 

    .. tab:: Question

        .. activecode:: iteration_ac_8q
            :language: cpp
            :practice: T

            Write a program that uses a ``while`` loop to print out the alphabet from 'a' to 'z'.
            ~~~~
            #include <iostream>
            using namespace std;

            int main() {
                // Write your implementation here.
            }

    .. tab:: Answer

        .. activecode:: iteration_ac_8a
            :language: cpp
            :practice: T 

            Below is one way to write the program.
            ~~~~
            #include <iostream>
            using namespace std;

            int main() {
                char letter = 'a';
                while (letter <= 'z') {
                    cout << letter << " ";
                    letter++;
                }
            }

.. tabbed:: iteration_9

    .. tab:: Question

        The Fibonacci sequence is a sequence of numbers such that each
        successive number is the sum of the two previous numbers.
        This sequence is as follows: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34,
        and so on. Write a program that prints the first 20 Fibonacci
        numbers.

        .. activecode:: iteration_ac_9q
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           int main() {
               // Write your implementation here.
           }


    .. tab:: Answer

        Below is one way to implement the program. We use a for loop
        to recalculate and reassign the values of ``first``, ``second``,
        and ``third``, using the recursive relationship.

        .. activecode:: iteration_ac_9a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           int main() {
               int first = 0;
               int second = 1;
               int third;
               cout << first << " " << second << " ";
               for (int n = 2; n <= 20; ++n) {
                   third = first + second;
                   cout << third << " ";
                   first = second;
                   second = third;
               }
           }

.. tabbed:: iteration_10 

    .. tab:: Question

        .. activecode:: iteration_ac_10q
            :language: cpp
            :practice: T

            Write a program that calculates the factorial of a number. Remember that a factorial (denoted by !) is the product of all
            positive integers less than or equal to ``n``, so 4! = 4*3*2*1 = 24. Use a loop.
            Run and test your code!
            ~~~~
            #include <iostream>
            using namespace std;

            int main() {
                int n = 5;
                // Write your implementation here to find n!
            }

    .. tab:: Answer

        .. activecode:: iteration_ac_10a
            :language: cpp
            :practice: T 

            Below is one way to write the program using a while loop.
            ~~~~
            #include <iostream>
            using namespace std;

            int main() {
                int n = 5;
                int i = n;
                int fact = 1;
                while (n / i != n) {
                    fact *= i;
                    i--;
                }
                cout << fact;
            }