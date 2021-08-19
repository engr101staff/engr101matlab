Multiple Choice Exercises
-------------------------

These questions are **completely OPTIONAL**. We provide these exercises to give you more practice with the 
material that you've learned. Additionally, they may be a helpful resource when reviewing for assessments.

.. mchoice:: structs_mcq_1
    :practice: T

    Which of the following are compound values?

    .. code-block:: cpp

      struct Student {
        string firstName, lastName;
        int year;
        double gpa;
      };

      struct Professor {
        string firstName, lastName;
        string department;
        int class;
      };

      int main() {
        Student x = { "John", "Doe", 2, 3.46 };
        Student y = { "Jane", "Doe", 3, 3.68 };
        Professor z = { "Richard", "Roe", "Computer Science", 101 };
        string college = "University of College";
        int studentPop = 3400;
        double avgGPA = 3.2;
      }
        
    - ``x``

      + ``x`` is a ``Student`` which is a ``struct``.

    - ``y``

      + ``y`` is a ``Student`` which is a ``struct``.

    - ``z``

      + ``z`` is a ``Professor`` which is a ``struct``.

    - ``college``

      + ``college`` is a ``string`` which is made up of characters.

    - ``studentPop``

      - An ``int`` is not a compound value.

    - ``avgGPA``

      - A ``double`` is not a compound value.

.. mchoice:: structs_mcq_2
    :practice: T

    What is wrong with the following ``struct`` definition?

    .. code-block:: cpp

      struct Chicken {
        string name;
        int numLegs;
        int eggs;
        bool eggs;
      }

    - The word "struct" needs to be capitalized.

      - "struct" shouldn't be capitalized in a ``struct`` definition.

    - There needs to be a semicolon after the end curly brace.

      + It is a common error to forgot the semicolon at the end of ``struct`` definitions.

    - The ``struct`` cannot have two instance variables that are both named ``eggs``.

      - One is an ``int`` and one is a ``bool`` so this is allowed.

    - There is nothing wrong with the ``struct`` definition.

      - There is an error with the definition. Can you find it?

.. mchoice:: structs_mcq_3
    :practice: T

    How do we assign the value of 4 to the instance variable ``numLegs`` of the ``Dog`` object?

    .. code-block:: cpp

      struct Dog {
        string name;
        int numLegs;
        bool isPanting;
      };

      int main() {
        Dog doug = { "Doug", 0, true };
      }

    - ``Dog.numLegs = 4;``

      - The ``Dog`` object is ``doug``. We can use the dot notation on an object.

    - ``doug.legs = 4;``

      - Check the name of the instance variable in the ``struct`` definition.

    - ``doug[legs] = 4;``

      - We can assign values to the instance variables of a ``struct`` using dot notation.

    - ``doug.numLegs = 4;``

      + Using dot notation on ``doug``, we can set the value of ``numLegs`` to 4.

.. mchoice:: structs_mcq_4
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

      struct Cube {
        int edgeLength;
        int volume;
        int mass;
      };

      int main() {
        Cube c;
        c.edgeLength = 4;
        c.volume = 64;
        c.mass = 128;
        cout << c.edgeLength << ", " << c.mass << ", " << c.volume << ", ";
        int density = c.mass / c.volume;
        cout << density;
      }

    - 4, 64, 128, 2

      - Check the ordering of the output statements.

    - 4, 128, 64

      - Take a closer look at the output statements.

    - 4, 128, 64, 2

      + The code outputs all instance variables and the density in the proper order.

    - edgeLength, volume, mass, density

      - Dot notation accesses the values of the instance variables, not the names.

.. mchoice:: structs_mcq_5
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

      struct Cube {
        int edgeLength;
        int volume;
        int mass;
      };

      int calculateDensity (Cube c) {
        return c.mass / c.volume;
      }

      int main() {
        Cube c;
        c = (Cube){ 2, 8, 4 };
        int density = calculateDensity (c);
        cout << density;
      }

    - 0

      + Because of integer division, ``density`` is 0 and thus the output is 0.

    - 2

      - Density is mass divided by volume.

    - 0.5

      - Take a closer look at what kind of division we are doing.

    - 1

      - Integer division truncates the extra digits.

.. mchoice:: structs_mcq_6
    :practice: T

    What is the value of ``s.coffeeCupFull`` when the code is done running?

    .. code-block:: cpp

      struct Student {
        string name;
        bool isSleepy;
        bool coffeeCupFull;
      };

      void pourCoffee (Student s) {
        s.coffeeCupFull = true;
      }

      int main() {
        Student s = { "Thor Odinson", true, false };
        if (s.isSleepy) {
          pourCoffee (s);
        }
      }

    - true

      - C++ outputs boolean values as either a 0 or 1.

    - false

      - C++ outputs boolean values as either a 0 or 1.

    - 1

      - Take a closer look at the function definition of ``pourCoffee``.

    - 0

      + Since we pass a ``Student`` object by value to ``pourCoffee``, the function makes a copy of the object and does not modify the original. If you wanted the original value to change, pass it by reference!

.. mchoice:: structs_mcq_7
    :practice: T

    What is the value of ``r.batteryLevelPercentage`` when the code is done running?

    .. code-block:: cpp

      struct Robot {
        string name;
        int batteryLevelPercentage;
        bool isFullyCharged;
      };

      void chargeRobot (Robot& r) {
        if (r.batteryLevelPercentage + 50 > 100) {
          r.batteryLevelPercentage = 100;
          r.isFullyCharged = true;
        }
        else {
          r.batteryLevelPercentage = r.batteryLevelPercentage + 50;
        }
      }

      int main() {
        Robot r = { "Rob", 60, false };
        chargeRobot (r);
      }

    - 100

      + The ``Robot`` object is passed by reference to ``chargeRobot``, which caps the ``batteryLevelPercentage`` at 100.

    - 110

      - Take a closer look at the ``chargeRobot`` function.

    - 60

      - Is the ``Robot`` object passed by value or by reference to ``chargeRobot``?

    - 1

      - That is the final value of ``r.isFullyCharged``.

.. mchoice:: structs_mcq_8
    :practice: T

    What is the output of the code below?

    .. code-block:: cpp

      void foo (int& x, int y) {
        x = x + 4;
        y = 2 * x + 3 * y;
      }

      void bar (int x, int y) {
        y = 2 * x;
        x = x - 1;
        foo (x, x);
      }

      void func (int &x, int& y) {
        x = x + 3;
        bar (y, x);
      }

      int main() {
        int x = 4;
        int y = 7;
        func (y, x);
        cout << x << ", " << y;
      }

    - 4, 7

      - Take a closer look at ``func`` and its parameters. Are they passed by value, passed by reference, or both?

    - 4, 10

      + Since ``bar`` doesn't pass either parameter by reference, neither ``bar`` nor ``foo`` affect the values of ``x`` and ``y``.

    - 7, 7

      - Check the order of the arguments passed into ``func``.

    - 35, 8

      - Take a closer look at the three functions. Are they all passed by reference?

.. mchoice:: structs_mcq_9
    :practice: T

    If the user inputted the string "R2-D2", what is the output of the code below?

    .. code-block:: cpp

      int main() {
        string name;
        cin >> name;
        cout << "Hello, " << name << "!";
      }

    - R2-D2

      - Take another look at the ``cout`` statement.

    - Hello name!

      - ``name`` is not in quotes so the value stored in ``name`` will be printed.

    - Hello, R2-D2!

      + "R2-D2" is stored in ``name`` and is then outputted in the ``cout`` statement.

    - name

      - ``cin`` reads input from the user.

.. mchoice:: structs_mcq_10
    :practice: T

    If the user inputted the string "C-3PO", what is the output of the code below?

    .. code-block:: cpp

      int main() {
        char name;
        cin >> name;
        cout << "Hello, " << name << "!";
      }

    - Hello, CPO!

      - ``cin`` reads the first ``char`` in from user input.

    - Hello, C!

      + Since 'C' is the first ``char`` in the input, this is the correct output. The program will ignore everything that comes after the first ``char``.

    - Hello, C-3PO!

      - Check the data type of ``name``.

    - Error, we cannot read a character from user input.

      - We can read characters from user input.

.. mchoice:: structs_mcq_11
    :practice: T

    If the user inputted the string "Darth Vader", what is the output of the code below?

    .. code-block:: cpp

      int main() {
        string quote;
        getline (cin, quote);
        cout << quote << " is the epitome of Star Wars!";
      }

    - quote is the epitome of Star Wars!

      - ``quote`` is not in quotes so the value stored in ``quote`` will be printed.

    - Darth Vader is the epitome of Star Wars!

      + getline reads the entire line until the user hits Return or Enter.

    - Darth is the epitome of Star Wars!

      - Check the manner in which the user input is acquired.

    - D is the epitome of Star Wars!

      - Try Again! Pay attention to the way in which user input is recieved.