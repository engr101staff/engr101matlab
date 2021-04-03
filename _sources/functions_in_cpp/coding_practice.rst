Coding Practice
--------------------

Answer the following **Coding Practice** questions to assess what you have learned in this chapter.

.. tabbed:: functions_in_cpp_1

    .. tab:: Question

        Write a function called ``calculator`` which takes two ``doubles``, ``first`` and
        ``second`` and a ``char operation`` as parameters. ``calculator`` performs
        addition, subtraction, multiplication, or division with the two ``doubles``
        depending on what operation is passed in: (``+``, ``-``, ``*``, ``/``). It then returns the result.
        Run and test your code!

        .. activecode:: functions_in_cpp_AC_1q
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           double calculator (double first, double second, char operation) {
               // Write your implementation here.
           }
           ====
           #define CATCH_CONFIG_MAIN
           #include <catch.hpp>

           TEST_CASE("calculator function: addition") {
               REQUIRE(calculator(3, 6, '+') == 9);
               REQUIRE(calculator(-2.6, 4, '+') == 1.4);
           }

           TEST_CASE("calculator function: subtraction") {
               REQUIRE(calculator(19, 2, '-') == 17);
               REQUIRE(calculator(-2.3, 2, '-') == -4.3);
           }

           TEST_CASE("calculator function: multiplication") {
               REQUIRE(calculator(5, 8, '*') == 40);
               REQUIRE(calculator(0.5, -6, '*') == -3.0);
           }

           TEST_CASE("calculator function: division") {
               REQUIRE(calculator(16, 4, '/') == 4);
               REQUIRE(calculator(3, 8, '/') == 0.375);
           }

    .. tab:: Answer

        Below is one way to implement the ``calculator`` function. Using conditionals,
        we return the correct result depending on which operation was given.

        .. activecode:: functions_in_cpp_AC_1a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           double calculator (double first, double second, char operation) {
               if (operation == '+') {
                   return first + second;
               }
               else if (operation == '-') {
                   return first - second;
               }
               else if (operation == '*') {
                   return first * second;
               }
               else {
                   return first / second;
               }
           }
           ====
           #define CATCH_CONFIG_MAIN
           #include <catch.hpp>

           TEST_CASE("calculator function: addition") {
               REQUIRE(calculator(3, 6, '+') == 9);
               REQUIRE(calculator(-2.6, 4, '+') == 1.4);
           }

           TEST_CASE("calculator function: subtraction") {
               REQUIRE(calculator(19, 2, '-') == 17);
               REQUIRE(calculator(-2.3, 2, '-') == -4.3);
           }

           TEST_CASE("calculator function: multiplication") {
               REQUIRE(calculator(5, 8, '*') == 40);
               REQUIRE(calculator(0.5, -6, '*') == -3.0);
           }

           TEST_CASE("calculator function: division") {
               REQUIRE(calculator(16, 4, '/') == 4);
               REQUIRE(calculator(3, 8, '/') == 0.375);
           }

.. activecode:: functions_in_cpp_AC_2q
    :language: cpp
    :practice: T

    A binary number is one that is expressed in the base-2 numeral system.
    Write a function ``convertToBinary`` which takes a ``decimal`` as
    a parameter. ``convertToBinary`` takes the number in decimal, converts
    it into a binary number, and returns the binary number. Run and test your code!
    ~~~~
    #include <iostream>
    using namespace std;

    int convertToBinary (int decimal) {
        // Write your implementation here.
    }
    ====
    #define CATCH_CONFIG_MAIN
    #include <catch.hpp>

    TEST_CASE("convertToBinary function") {
        REQUIRE(convertToBinary (1) == 1);
        REQUIRE(convertToBinary (5) == 101);
        REQUIRE(convertToBinary (16) == 10000);
        REQUIRE(convertToBinary (31) == 11111);
    }

.. tabbed:: functions_in_cpp_3

    .. tab:: Question

        An interior angle of a polygon is the angle between two adjacent
        sides of the polygon. Each interior angle in an equilateral triangle
        measures 60 degree, each interior angle in a square measures 90 degrees,
        and in a regular pentagon, each interior angle measures 108 degrees.
        Write the function ``calculateIntAngle``, which takes a ``numSides``
        as a parameter and returns a ``double``. ``calculateIntAngle`` finds the
        interior angle of a regular polygon with ``numSides`` sides. The formula
        to find the interior angle of a regular ngon is (n - 2) x 180 / n.
        Run and test your code!

        .. activecode:: functions_in_cpp_AC_3q
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           double calculateIntAngle (int numSides) {
               // Write your implementation here.
           }
           ====
           #define CATCH_CONFIG_MAIN
           #include <catch.hpp>

           TEST_CASE("calculateIntAngle function") {
               REQUIRE(calculateIntAngle (3) == 60);
               REQUIRE(calculateIntAngle (4) == 90);
               REQUIRE(calculateIntAngle (5) == 108);
               REQUIRE(calculateIntAngle (8) == 135);
           }


    .. tab:: Answer

        Below is one way to implement the program. Using the formula given,
        we can find the interior angle and return it. Notice how we use 180.0
        instead of 180 to avoid integer division.

        .. activecode:: functions_in_cpp_AC_3a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           double calculateIntAngle (int numSides) {
               return (numSides - 2) * 180.0 / numSides;
           }
           ====
           #define CATCH_CONFIG_MAIN
           #include <catch.hpp>

           TEST_CASE("calculateIntAngle function") {
               REQUIRE(calculateIntAngle (3) == 60);
               REQUIRE(calculateIntAngle (4) == 90);
               REQUIRE(calculateIntAngle (5) == 108);
               REQUIRE(calculateIntAngle (8) == 135);
           }

.. activecode:: functions_in_cpp_AC_4q
    :language: cpp
    :practice: T

    Write a function ``operate`` that takes two ``int``\s as parameters. The function will 
    swap the values of the ``int``\s if the first is larger than the second,
    double both ``int``\s if they are the same value, and negate the first ``int``
    if the second is larger than the first.
    ~~~~
    #include <iostream>
    using namespace std;

    // Write your function here.
    
    int main() {
        int a = 3;
        int b = 4;
        int c = 5;
        int d = 4;
        operate(a, c);
        cout << "a: " << a << ", c: " << c << endl;
        operate (b, d);
        cout << "b: " << b << ", d: " << d << endl;
        operate (b, a);
        cout << "b: " << b << ", a: " << a << endl;
    }

.. tabbed:: functions_in_cpp_5

    .. tab:: Question

        Dog owners will know that figuring out a dog's age is more complicated
        than just counting age directly. Dogs mature faster than humans do,
        so to get a more accurate calculation of a dog's age, write the
        ``dogToHumanYears`` function, which takes an ``dogAge`` as a parameter.
        ``dogToHumanYears`` converts and returns the dog's age to human years.
        A one year old dog is 15 years old in human years; a two year old dog is 24 years old in human years.
        Each year after the second year counts as 4 additional human years. For example, a dog that is
        3 years old is actually 28 years old in human years. Run and test your code!

        .. activecode:: functions_in_cpp_AC_5q
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           int dogToHumanYears (int dogAge) {
               // Write your implementation here.
           }
           ====
           #define CATCH_CONFIG_MAIN
           #include <catch.hpp>

           TEST_CASE("dogToHumanYears function for 1 and under") {
               REQUIRE(dogToHumanYears (1) == 15);
           }

           TEST_CASE("dogToHumanYears function for >1") {
               REQUIRE(dogToHumanYears (2) == 24);
               REQUIRE(dogToHumanYears (3) == 28);
               REQUIRE(dogToHumanYears (5) == 36);
           }


    .. tab:: Answer

        Below is one way to implement the program. We can use a conditional to
        check to see if the dog is one year old. If it is older than one, then
        we can use the formula to return the correct age in human years.

        .. activecode:: functions_in_cpp_AC_5a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           int dogToHumanYears (int dogAge) {
               if (dogAge == 1) {
                   return 15;
               }
               return 24 + (dogAge - 2) * 4;
           }
           ====
           #define CATCH_CONFIG_MAIN
           #include <catch.hpp>

           TEST_CASE("dogToHumanYears function for 1 and under") {
               REQUIRE(dogToHumanYears (1) == 15);
           }

           TEST_CASE("dogToHumanYears function for >1") {
               REQUIRE(dogToHumanYears (2) == 24);
               REQUIRE(dogToHumanYears (3) == 28);
               REQUIRE(dogToHumanYears (5) == 36);
           }

.. activecode:: functions_in_cpp_AC_6q
    :language: cpp
    :practice: T

    A number is a common factor of two other numbers if it divides evenly into both of the
    other numbers. For example, 2 is a common factor of 4 and 18, because 2 goes evenly into
    4 and 18. Write the function ``isCommonFactor``, which takes three parameters,
    ``num1``, ``num2``, and ``factor``. ``isCommonFactor`` returns ``true`` if ``factor`` is a
    factor of both ``num1`` and ``num2``, and returns ``false`` otherwise. Run and test your code!
    ~~~~
    #include <iostream>
    using namespace std;

    bool isCommonFactor (int num1, int num2, int factor) {
        // Write your implementation here.
    }
    ====
    #define CATCH_CONFIG_MAIN
    #include <catch.hpp>

    TEST_CASE("isCommonFactor function: true cases") {
        REQUIRE(isCommonFactor (24, 8, 4) == 1);
        REQUIRE(isCommonFactor (75, 20, 5) == 1);
    }

    TEST_CASE("isCommonFactor function: false cases") {
        REQUIRE(isCommonFactor (132, 42, 11) == 0);
        REQUIRE(isCommonFactor (74, 23, 3) == 0);
    }

.. tabbed:: functions_in_cpp_7

    .. tab:: Question

        Ever wanted to know how much you'd weigh on another planet? Write a function
        called ``weightConversion`` which takes an ``int planet`` and a ``double weight``
        as parameters. Use ``planet`` as an identifier for which planet weight you want
        to convert to (1 is Mercury, 2 is Venus, 3 is Mars), then return your weight on that
        planet by multiplying your weight by the scaling factor (0.378 for Mercury, 0.907 for
        Venus, and 0.377 for Mars). If the planet number is invalid, just return the original weight.

        .. activecode:: functions_in_cpp_AC_7q
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           // Write your function here.
           ====
           #define CATCH_CONFIG_MAIN
           #include <catch.hpp>

           TEST_CASE("Mercury") {
               REQUIRE(weightConversion (1, 1) == 0.378);
               REQUIRE(weightConversion (1, 100) == 37.8);
           }

           TEST_CASE("Venus") {
               REQUIRE(weightConversion (2, 1) == 0.907);
               REQUIRE(weightConversion (2, 100) == 90.7);
           }

           TEST_CASE("Mars") {
               REQUIRE(weightConversion (3, 1) == 0.377);
               REQUIRE(weightConversion (3, 100) == 37.7);
           }

           TEST_CASE("Invalid") {
               REQUIRE(weightConversion (8, 1) == 1);
           }


    .. tab:: Answer

        Below is one way to implement the program. We can use conditionals to determine which
        factor to scale by.

        .. activecode:: functions_in_cpp_AC_7a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           double weightConversion (int planet, double weight) {
               if (planet == 1) {
                   return 0.378 * weight;
               }
               else if (planet == 2) {
                   return 0.907 * weight;
               }
               else if (planet == 3) {
                   return 0.377 * weight;
               }
               return weight;
           }
           ====
           #define CATCH_CONFIG_MAIN
           #include <catch.hpp>

           TEST_CASE("Mercury") {
               REQUIRE(weightConversion (1, 1) == 0.378);
               REQUIRE(weightConversion (1, 100) == 37.8);
           }

           TEST_CASE("Venus") {
               REQUIRE(weightConversion (2, 1) == 0.907);
               REQUIRE(weightConversion (2, 100) == 90.7);
           }

           TEST_CASE("Mars") {
               REQUIRE(weightConversion (3, 1) == 0.377);
               REQUIRE(weightConversion (3, 100) == 37.7);
           }

           TEST_CASE("Invalid") {
               REQUIRE(weightConversion (8, 1) == 1);
           }

.. activecode:: functions_in_cpp_AC_8q
    :language: cpp
    :practice: T

    The Manhattan Distance between two points is the number of blocks you'd need
    to walk to get from one point to another. In a grid like city like Manhattan,
    you can only walk north, south, east, or west to get from one point
    to another. For example, if we start at (0,0) and we want to get to (3,5),
    the Manhattan Distance would be 8, since we need to walk 3 blocks east, then 5 blocks north.
    Write the function ``manDistance`` which takes in two pairs of x and y locations
    and returns the distance.
    ~~~~
    #include <iostream>
    using namespace std;

    int manDistance (int x1, int y1, int x2, int y2) {
        // Write your implementation here.
    }
    ====
    #define CATCH_CONFIG_MAIN
    #include <catch.hpp>

    TEST_CASE("manDistance function") {
        REQUIRE(isPoisonous (0, 0, 3, 5) == 8);
        REQUIRE(isPoisonous (1, 2, 3, 4,) == 4);
        REQUIRE(isPoisonous (-2, -4, 4, -2) == 8);
    }

.. tabbed:: functions_in_cpp_9

    .. tab:: Question

        We know that a factorial is the product of an integer and all the integers below it.
        For example, four factorial (4!) is 24. A triangular number is the same as a factorial,
        except you add all the numbers instead of multiplying. For example, the 1st triangular
        number is 1, the 2nd is 3, the 3rd is 6, the 4th is 10, the 5th is 15, etc. You can imagine
        rows of dots, where each successive row has one more dot, thus forming a triangular shape.
        Write the ``triangularNum`` function, which takes an ``int n`` as a parameter and returns
        the ``n``\th triangular number. Use recursion. Run and test your code!

        .. activecode:: functions_in_cpp_AC_9q
           :language: cpp
           :practice: T

           #include <iostream>
           using namespace std;

           int triangularNum (int n) {
               // Write your implementation here.
           }
           ====
           #define CATCH_CONFIG_MAIN
           #include <catch.hpp>

           TEST_CASE("triangularNum function") {
               REQUIRE(triangularNum (1) == 1);
               REQUIRE(triangularNum (3) == 6);
               REQUIRE(triangularNum (6) == 21);
               REQUIRE(triangularNum (17) == 153);
           }


    .. tab:: Answer

        Below is one way to implement the program. We can use conditionals to
        separate the base case and recursive cases. Our base case is when ``n``
        is 1, and in that case we return 1. Otherwise, we recursively
        call ``triangularNum`` on ``n-1``.

        .. activecode:: functions_in_cpp_AC_9a
           :language: cpp
           :optional:

           #include <iostream>
           using namespace std;

           int triangularNum (int n) {
               if (n == 1) {
                   return 1;
               }
               else {
                   return n + triangularNum(n - 1);
               }
           }
           ====
           #define CATCH_CONFIG_MAIN
           #include <catch.hpp>

           TEST_CASE("triangularNum function") {
               REQUIRE(triangularNum (1) == 1);
               REQUIRE(triangularNum (3) == 6);
               REQUIRE(triangularNum (6) == 21);
               REQUIRE(triangularNum (17) == 153);
           }

.. activecode:: functions_in_cpp_AC_10q
    :language: cpp
    :practice: T

    Write the function ``digitSum`` which takes an ``int num`` as a parameter
    and returns the sum of all its digits. For example, ``digitSum (1423)``
    would return 10. Use recursion. Run and test your code!
    ~~~~
    #include <iostream>
    using namespace std;

    int digitSum (int num) {
        // Write your implementation here.
    }
    ====
    #define CATCH_CONFIG_MAIN
    #include <catch.hpp>

    TEST_CASE("digitSum function") {
        REQUIRE(digitSum (123) == 6);
        REQUIRE(digitSum (8739) == 27);
        REQUIRE(digitSum (440) == 8);
        REQUIRE(digitSum (2) == 2);
    }
