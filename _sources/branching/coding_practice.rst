Coding Practice
--------------------

Answer the following **Coding Practice** questions to assess what you have learned in this chapter.

.. tabbed:: branching_ac_1

   .. tab:: Question

      .. activecode:: branching_ac_1q
         :language: cpp

         Fix the errors in the code below so that it prints the area of a circle with radius 5.
         ~~~~
         #include <iostream>
         using namespace std;

         int main {
             int r = 5;
             double pi = 3.14;
             double area = pi * r ^ 2;
             cout << area << endl;
         }

   .. tab:: Answer

      .. activecode:: branching_ac_1a
         :language: cpp

         Below is one way to fix the program.  C++ doesn't use the ``^`` operator for exponents.  We can get the square of ``r`` by multiplying it by itself.
         ~~~~
         #include <iostream>
         using namespace std;

         int main {
             int r = 5;
             double pi = 3.14;
             double area = pi * r * r;
             cout << area << endl;
         }

.. activecode:: branching_ac_2
   :language: cpp

   Write a program that calculates and outputs the volume of a rectangular prism using three ``double`` sidelengths. Include the necessary headers.
   ~~~~
   int main () {
       double side_a = 12;
       double side_b = 2.5;
       double side_c = 7;

       // Write your code here.
   }

.. tabbed:: branching_ac_3

   .. tab:: Question

      .. activecode:: branching_ac_3q
         :language: cpp

         Write a program that outputs the volume of a sphere with radius 6. The volume of a sphere with radius r is 4/3*pi*r^3. Use 3.14 for pi. Be sure to include necessary headers.
         ~~~~
         int main {
             // Write your code here.
         }

   .. tab:: Answer

      .. activecode:: branching_ac_3a
         :language: cpp

         Below is one way to write the program.  Make sure to do floating point division and not integer division!
         ~~~~
         #include <iostream>
         using namespace std;

         int main {
             int radius = 5;
             double pi = 3.14;
             double volume = 4.0/3.0 * pi * r * r * r;
             cout << volume << endl;
         }

.. activecode:: branching_ac_4
   :language: cpp

   Your friend wrote a program to calculate the average of 6 data points. However, he's not getting the correct average. 
   Can you fix your friend's error? The average should be 6.5.
   ~~~~
   #include <iostream>
   using namespace std;

   int main () {
       int data_1 = 5;
       int data_2 = 8;
       int data_3 = 6;
       int data_4 = 10;
       int data_5 = 2;
       int data_6 = 8;
       int average = data_1 + data_2 + data_3 + data_4 + data_5 + data_6 / 6;
       cout << average << endl; 
   }

.. tabbed:: branching_ac_5

   .. tab:: Question

      .. activecode:: branching_ac_5a
         :language: cpp

         ``xor``, or exclusive or, outputs ``true`` if either input ``a`` or input ``b`` is true, but not both. 
         It outputs ``false`` otherwise. Write a program that outputs the result of ``a xor b``.
         ~~~~
         int main {
             bool a = true;
             bool b = false;
             bool a_xor_b;

             // Write your code here.
         }

   .. tab:: Answer

      .. activecode:: branching_ac_5q
         :language: cpp

         Below is one way to write the program. Since ``a xor b`` is ``false`` whenever ``a`` and ``b`` are both ``true``
         or both ``false``, which can check to see if the truth value of ``a`` is equal to the truth value of ``b``.
         If they are the same, we output ``false``. Otherwise, we output ``true``. 
         ~~~~
         #include <iostream>
         using namespace std;

         int main {
             bool a = true;
             bool b = false;
             bool a_xor_b;

             if (a == b) {
                 a_xor_b = false;
             }
             else {
                 a_xor_b = true; 
             }

             cout << a_xor_b << endl;
         }

.. activecode:: branching_ac_6
    :language: cpp

    You are part of a class where everyone passes, but it's very hard
    to pass with an A.  Fix the program so it prints your letter grade 
    according to this scheme.  [0, 50) = C, [50, 85) = B, and [85, 100] = A.
    ~~~~
    #include <iostream>
    using namespace std;

    int main() {
        int grade = 76;
        string s = "";
        if (grade < 50) {
            s = "C";
        }
        if (grade < 85) {
            s = "B";
        }
        if (grade >= 85) {
            s = "A";
        }
        cout << s;
    }

.. tabbed:: branching_ac_7

    .. tab:: Question

        Write a program that mimics the functionality of a calculator. Given two ``double`` variables ``a`` and ``b``
        and depending on the operation symbol (+, -, \*, /), output the correct result.
        During division, check to see if you're dividing by zero; if so, output an error message instead.

        .. activecode:: branching_ac_7q
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           int main() {
               double a = 8;
               double b = 5;
               char op = '*';

               // Write your code here.
           }
           

    .. tab:: Answer

        Below is one way to implement the program. We use conditionals to check what
        the operation symbol is before doing the calculation. In the event that ``b`` 
        is 0 and the operation is division, we output an error message.

        .. activecode:: branching_ac_7a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           int main() {
               double a = 8;
               double b = 5;
               char op = '*';

               if (op == '+') {
                   cout << a + b << endl;
               }
               else if (op == '-') {
                   cout << a - b << endl;
               }
               else if (op == '*') {
                   cout << a * b << endl;
               }
               else {
                   if (b == 0) {
                      cout << "Error! Cannot divide by 0" << endl;
                   }
                   else {
                      cout << a / b << endl;   
                   }  
               }
           }

.. activecode:: branching_ac_8
    :language: cpp
    :practice: T

    The astronomical start and end dates of the four seasons are based on the position of
    the Earth relative to the Sun. As a result, it changes every year and can be difficult to
    remember. However, the meteorological start and end dates are based on the Gregorian calendar
    and is easier to remember. Spring starts on March 1, summer starts on June 1, fall starts on
    September 1, and winter starts on December 1. Write a program that outputs the season given
    the values of the month and day.
    For example, if month is 7 and day is 5, the program would print "summer" since July 5 is in the summer.
    ~~~~
    #include <iostream>
    using namespace std;

    int main() {
        // Write your code here.
    }

.. tabbed:: branching_ac_9

    .. tab:: Question

        If a year is divisible by 4, then it is a leap year. However, if it is also divisible by 100,
        then it is not a leap year. However, if it is also divisible by 400, then it is a leap year.
        Thus, 2001 is not a leap year, 2004 is a leap year, 2100 is not a leap year, and 2000 is a leap year.
        Write a program which outputs whether or not ``year`` is a leap year.

        .. activecode:: branching_ac_9q
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           int main() {
               int year = 2021; 
               // Write your implementation here.
           }

    .. tab:: Answer

        Below is one way to implement the program. We can use conditionals in this
        order to efficiently determine whether or not a given year is a leap year.

        .. activecode:: branching_ac_9a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           int main() {
               int year = 2021;

               if (year % 400 == 0) {
                   cout << year << " is a leap year" << endl;
               }
               else if (year % 100 == 0) {
                   cout << year << " is not a leap year" << endl;
               }
               else if (year % 4 == 0) {
                   cout << year << " is a leap year" << endl;
               }
               else {
                   cout << year << " is not a leap year" << endl;
               }
           }

.. activecode:: branching_ac_10
    :language: cpp
    :practice: T

    In the enchanted Mushroom Forest, there are many different types of
    mushrooms as far as the eye can see. Most of these mushrooms
    can make delicious stews and dishes, but some of them are poisonous.
    Write a program that determines whether or not a muchroom is poisonous 
    depending on ``size``, ``numSpots``, and ``isRed``. If a mushroom is large
    ('L') and has fewer than 3 spots, it is poisonous. If a mushroom is small ('S')
    and is red, it is poisonous. If a mushroom has fewer than 3 spots or is not red,
    it is poisonous. Otherwise, it is not. 
    ~~~~
    #include <iostream>
    using namespace std;

    int main() {
        char size = 'S';
        int numSpots = 5;
        bool isRed = false;

        // Write your implementation here.
    }