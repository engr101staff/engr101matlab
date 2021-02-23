Multiple Choice Exercises
-------------------------

Answer the following **Multiple Choice** questions to
assess what you have learned in this chapter.


.. mchoice:: intro_to_cpp_mcq_1
    :practice: T

    **Multiple Response** What are benefits of using C++ compared to using MATLAB? Select all the correct answers.

    -   C++ handles branching and iteration very well.

        +   We'll take a look at how C++ handles control flow in later chapters.

    -   C++ has built in support for vectors and matrices.

        -   MATLAB has built in support for vectors and matrices, but not C++.

    -   C++ is a well-established and widely-used programming language.

        +   C++ is widely used in the computer science field.

    -   C++ will help you learn how computer programs actually work.

        -   We'll see how in later chapters.


.. mchoice:: intro_to_cpp_mcq_2
    :practice: T

    What is the function of the compiler?

    -   It loads the program from its saved location and makes the computer execute it.

        -   This is the function of an executor.  If you use a compiler, you must also
            use an executer to run your code.

    -   It reads a high-level program and translates everything at once, before executing
        any of the commands.

        +   If there are any errors in your code, the program will not compile.  It is an
            all-or-nothing process.

    -   It translates the program from the low-level language you coded in to a high-level
        language that the computer can understand.

        -   You, the programmer, write your program in a HIGH-level language.  It is then
            translated to a LOW-level language that the computer can understand.

    -   It translates the program line-by-line, alternately reading lines and carrying 
        out commands.

        -   This is the function of an interpreter.


.. mchoice:: intro_to_cpp_mcq_3
    :practice: T

    What is the difference between **source code** and **machine code**?

    -   Source code can contain simple things like variables and values. Machine code 
        can contain more complex objects like data structures.

        -   Source code and object code both contain variables, values, and data structures.
            They're just written in a different way.

    -   Machine code can contain simple things like variables and values.  Source code 
        can contain more complex objects like data structures.

        -   Source code and object code both contain variables, values, and data structures.
            They're just written in a different way.

    -   Machine code is the code that your program is written in.  Source code is the
        translated version of this code that the computer can understand.

        -   You seem to have things a bit mixed up!

    -   Source code is the code that your program is written in.  Machine code is the
        translated version of this code that the computer can understand.

        +   The computer can either use an interpreter or a compiler to make the 
            translation.


.. mchoice:: intro_to_cpp_mcq_4
    :practice: T

    If we wanted to write a program that could store a person's name, age, 
    height in feet, and whether or not the person is male, what types of variables
    should we use?

    -   string, int, double, string

        -   If a student can either be male or not male, what type of variable should we use to store this information?

    -   string, int, int, bool

        -   A person can have a height that is a non-whole number.

    -   string, int, double, bool

        +   We can use different C++ types to represent many kinds of data.

    -   string, double, int, int

        -   A person's age is a whole number.


.. mchoice:: intro_to_cpp_mcq_5
    :practice: T

    What is the type of x?

    ::
        
        x = "3";

    -   integer

        -   ``1`` is an integer.

    -   double

        -   ``1.0`` is a double.

    -   character

        -   ``'1'`` is a character.

    -   string

        +   Anything in double quotes is a string.


.. mchoice:: intro_to_cpp_mcq_6
    :practice: T

    Take a look at the following program.  How many lines of output will be produced?

    ::

        int main() {
          int hour = 7;
          int min = 50;
          cout << "The current time is: " << endl;
          cout << hour;
          cout << ":";  cout << minute;
          cout << endl;
          cout << "I'm going to be late for my 8am!";
        }

    -   6

        -   There *are* 6 ``cout`` statements, but that doesn't mean there are 6 lines of output!

    -   5

        -   There *are* 5 lines of ``cout`` statments, but that doesn't mean there are 5 lines of output!

    -   3

        +   Even though there are 6 ``cout`` staments written on 5 lines, there are only 3 lines of output in the terminal.

    -   2

        -   There *are* 2 ``endl`` statements.  But what happens when you have more output after the ``endl``?

    -   0! There is an error!

        -   Everything is syntacticly legal! You can have ``cout`` statements on *multiple lines of code* that have *one* line of output... or you can have multiple ``cout`` statements on *one* line of code that have *multiple* lines of output!


.. mchoice:: intro_to_cpp_mcq_7
    :practice: T

    What is printed when the following code is run?

    ::
        
        int main() {
          int x;
          int y = 2;
          int z = 4;
          x = z;
          z = 6;
          y = x + z;
          cout << y + z;
        }

    -   ``6``

        -   The variables ``y`` and ``z`` have been re-assigned.

    -   ``10``

        -   This would be correct if we had written ``cout << x + z``.

    -   ``16``

        +   Walking through each line of code and keeping track of variables, like you just did, is called **tracing**.

    -   ``yz``

        -   If y and z were characters ``'y'`` and ``'z'``, it would be legal to add them together.  But the result ``243`` might surprise you!


.. mchoice:: intro_to_cpp_mcq_8
    :practice: T

    What type of error would the following code cause?  Assume you are
    trying to calculate the volume of a cylinder:

    .. code-block:: cpp

        int radius = 7;
        int height = 8;
        double volume = 3.14 * radius * height;

    -   Syntax error

        -   There is nothing wrong with the structure of this program.

    -   Run-time error

        -   There are no errors that will surface at runtime.

    -   Semantic error

        +   This is not the correct formula for calculating the volume of a
            cylinder.  This program will go on to calculate the wrong volume
            because it doesn't know any better.

    -   No error

        -   Take a look at the area formula.


.. mchoice:: intro_to_cpp_mcq_9
    :practice: T

    What type of error would the following generate?  Assume you are
    trying to calculate the volume of a cylinder:

    .. code-block:: cpp

        int radius = 7;
        int height = 8
        double volume = 3.14 * r * r * height;

    -   Syntax error

        +   You are missing a semicolon on the second line, and you are using
            the variable ``r`` without defining it on the third line.  your
            program will not compile.

    -   Run-time error

        -   There are no errors that will surface at runtime.

    -   Semantic error

        -   Everything looks good with your volume calculations.

    -   No error

        -   Take a closer look at the structure of the code.


.. mchoice:: intro_to_cpp_mcq_10
    :practice: T

    What line does the first error occur in the following program? If there is no error, what is the output?

    .. code-block:: 
       :linenos:
        
       int main() {
         string Tom = "Tom";
         string friend = "Jerry";
         cout << tom;
         cout << "is friends with"; cout << friend;
       }

    -   line 2, a variable cannot have the same name as its value

        -   A variable can have any value... as long as the types are the same.

    -   line 3, you cannot have a variable named friend

        +   ``friend`` is a reserved keyword in C++ and can't be used as a variable name.  What a shame, since Tom and Jerry are the best of friends!

    -   line 5, you cannot have two statements on the same line

        -   You can have as many statements as you want on one line, as long as you terminate each one with a semicolon.

    -   No error, ``Tom is friends with Jerry``

        -   If the code runs, C++ doesn't automatically add spaces between consecutive strings.

    -   No error, ``Tomis friends withJerry``

        -   If the error was corrected, this would be the output. Unfortunately, there is an error that prevents this line from executing.