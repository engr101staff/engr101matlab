Multiple Choice Exercises
-------------------------

Answer the following **Multiple Choice** questions to
assess what you have learned in this chapter.


.. mchoice:: branching_mcq_1
    :practice: T

    You want to spice up your resume before the career fair, so you decide to
    update your GPA using the program below. What is the GPA that you will 
    have on display for future employers?

    .. code-block:: cpp

        #include <iostream>
        using namespace std;

        int main() {
          double GPA = 3.52;
          int updatedGPA = GPA;
          cout << "GPA: " << updatedGPA;
        }

    -   ``3.0``

        -   It's correct to think that your GPA will be rounded down, but what 
            else happens when you convert from ``int`` to ``double``?

    -   ``3``

        +   Converting to an ``int`` always rounds down to the nearest integer, so I do not 
            recommend using type conversions to build your resume... especially if you're 
            close to ``4.0``.

    -   ``4.0``

        -   Converting to an ``int`` *will* round your GPA, but not in the direction
            that you were hoping for... what else happens when you convert from
            ``int`` to ``double``?

    -   ``4``

        -   Converting to an ``int`` *will* round yor GPA, but not in the direction
            that you were hoping for.

    -   Error!

        -   No errors here! Type conversions are perfectly legal in C++!


.. mchoice:: branching_mcq_2
    :practice: T

    **Multiple Response** Select all variables that have a *non-zero* value after the decimal place
    (3.1 has a *non-zero* value, while 3.0 does not). Select all the correct answers.

    .. code-block:: cpp

        #include <iostream>
        using namespace std;

        int main() {
          int a = 1.5;
          double b = a + 1.5;
          double c = 2.4;
          double d = 1/5;
          int e = c * c;
          double f = c;
        }

    -   ``a``

        -   C++ performs automatic type conversion to round 1.5 down to the 
            nearest integer.

    -   ``b``

        +   Since ``a = 1``, we know that ``b = 2.5``, which is a non-zero decimal.

    -   ``c``

        +   ``c`` is a ``double`` and has a non-zero decimal.

    -   ``d``

        -   C++ performs integer division to round ``1/5`` down to the nearest
            integer.  The value will be stored as ``0``, not ``0.2``.

    -   ``e``

        -   ``c`` squared may have a non-zero decimal, but automatic type conversion
            will round it down to the nearest integer before storing the value in ``e``.
    
    -   ``f``

        -   ``c`` is rounded down to the nearest integer before storing the 
            value in ``f``. 


.. mchoice:: branching_mcq_3
    :practice: T

    **Multiple Response** Which of the following are true? Select all the correct answers.

    -   A conversion from ``int`` to ``double`` is a narrowing conversion.

        -   A narrowing conversion results in loss of information. Is information lost in this conversion?

    -   A conversion from ``int`` to ``double`` is a widening conversion.

        +   There are more possible ``double`` representations than ``int``, so this conversion is a widening conversion.

    -   A conversion from ``double`` to ``int`` is a narrowing conversion.

        +   The digits after the decimal point are truncated, resulting in a loss of information.

    -   A conversion from ``double`` to ``int`` is a widening conversion.

        -   Information is lost during this conversion. What kind of conversion loses information?


.. mchoice:: branching_mcq_4
    :practice: T

    Say you run the following code.  What are the values of ``x``, ``y``, and ``z`` after the code is ran?

    .. code-block:: cpp

        bool x = (4 + 6) * 1 / 5;
        bool y = (3 * 2) % 5;
        int z = x + y * 9;

    -   2, 1, 11

        -   What types are variables ``x`` and ``y``?

    -   1, 1, 10

        -   What types are variables ``x`` and ``y``?

    -   ``False``, ``True``, 9

        +   ``x`` is false due to integer division and z is calculated through implicit conversion.

    -   ``True``, ``True``, 10

        -   What is the value of ``x``?

    -   Error!

        -   There are no errors in the code! All types are implicitly converted.


.. mchoice:: branching_mcq_5
    :practice: T

    Say you run the following code.  What is the value of ``mod``?

    .. code-block:: cpp

        int x = 4;
        int y = 7;
        int mod = y % x;

    -   0

        -   There *is* a remainder.

    -   1

        -   Incorrect!

    -   2

        -   Incorrect!

    -   3

        +   The remainder of ``7 / 4`` is 3.

    -   4

        -   We can't have a remainder of 4, since 4 is the divisor.


.. mchoice:: branching_mcq_6
    :practice: T

    What is printed when the following code executes?

    .. code-block:: cpp

        int x = 8;

        if (x % 3 == 2) {
            cout << "hey!" << endl;
        }
        else if (x != 7) {
            cout << "hi!" << endl;
        }
        else if (x % 2 == 0) {
            cout << "hello!" << endl;
        }
        else {
            cout << "bye!" << endl;
        }

    -   ::

            hey!

        +   Since the first conditon is met, the rest of the chained
            conditional does not execute.

    -   ::

            hi!

        -   It's true that ``8 != 7``, but "hi!" is not printed here.

    -   ::

            hi!

        -   It's true that ``8 % 2 == 0``, but "hello!" is not printed!

    -   ::

            hey!
            hi!
            hello!

        -   All of these conditons are met, but only one expression is
            printed!

    -   ::

            bye!

        -   At least one of the conditons is met, so the ``else`` will not
            execute!


.. mchoice:: branching_mcq_7
    :practice: T

    What is printed when the following code executes?

    ::

        int x = 34;

        if (32 < x) {
            cout << "It's Freezing!";
        }
        if (x < 40) {
            cout << "It's Cold!";
        }
        if (x > 65) {
            cout << "It's Warm!"'
        }
        else {
            cout << "It's Hot!";
        }

    -   ::

            It's Freezing!

        -   Take a closer look at the conditions and the way they
            are written in the program.

    -   ::

            It's Cold!

        -   Take a closer look at the conditions and the way they
            are written in the program.

    -   ::

            It's Freezing!
            It's Cold!

        -   You've identified some of the conditons that are met!
            Take another look at the *chain* of conditionals at the
            end!

    -   ::

            It's Freezing!
            It's Cold!
            It's Hot!

        +   These statements are quite contradicting, but that's exactly
            what the output would be if we ran this code.

    -   ::

            It's Hot!

        -   Take a closer look at the conditions and the way they
            are written in the program.


.. mchoice:: branching_mcq_8
   :practice: T
   :answer_a: Hey!
   :answer_b: Hi!
   :answer_c: Hello!
   :answer_d: Nothing will print.
   :correct: a
   :feedback_a: Correct!
   :feedback_b: Remember that the program would only enter the "else" if x was not equal to 0.
   :feedback_c: Remember that the program would only enter the "else" if x was not equal to 0.
   :feedback_d: Only one of the condtionals will execute, but something will print, regardless of which one it is.

   What will print?

   ::

       #include <iostream>
       using namespace std;

       int main () {
         int x = 0;
         if (x == 0) {
           cout << "Hey!" << endl;
         }
         else {
           if (x > 0) {
             cout << "Hi!" << endl;
           } 
           else {
             cout << "Hello!" << endl;
           }
         }
         return 0;
       }


.. mchoice:: branching_mcq_9
   :practice: T
   :answer_a: Hey!
   :answer_b: Hi!
   :answer_c: Hello!
   :answer_d: Nothing will print.
   :correct: c
   :feedback_a: Remember that the program would only enter the first "if" if x was equal to 0.
   :feedback_b: Remember that the program would only enter the nested "if" if x was greater than 0.
   :feedback_c: Correct!
   :feedback_d: Only one of the condtionals will execute, but something will print, regardless of which one it is.

   What will print?

   ::

       #include <iostream>
       using namespace std;

       int main () {
         int x = -4;
         if (x == 0) {
           cout << "Hey!" << endl;
         }
         else {
           if (x > 0) {
             cout << "Hi!" << endl;
           } 
           else {
             cout << "Hello!" << endl;
           }
         }
         return 0;
       }


.. mchoice:: branching_mcq_10
   :practice: T
   :answer_a: Back Left!
   :answer_b: Back Right!
   :answer_c: Front Left!
   :answer_d: Front Right!
   :answer_e: Error!
   :correct: b
   :feedback_a: Remember that the > opearator is not inclusive.
   :feedback_b: z > m is true, and m > m is false, so a student with these initials would be seated in the back right.
   :feedback_c: z > m is true because z comes after m.  Also, the > opearator is not inclusive.
   :feedback_d: z > m is true because z comes after m.
   :feedback_e: Character comparisons are legal, and useful in this case!

   Your school uses a system to arrange students in a large stadium using 
   their initials.  Look at the function definition below.  Where would a
   student with the initials "MZ" be seated?

   ::

       string seatingArrangement(char first, char last) {
         if (last > m) {
           if (first > m) {
             return "Back Left!";
           }
           esle {
             return "Back Right!";
           }
         }
         else {
           if (first > m) {
             return "Front Left!";
           }
           else {
             return "Front Right!";
           }
         }
       }

