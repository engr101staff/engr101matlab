Mixed Up Code Exercises
-----------------------

These questions are **completely OPTIONAL**. We provide these exercises to give you more practice with the material that you've learned. 
Additionally, they may be a helpful resource when reviewing for assessments. Some lines contain **mistakes** or are **unnecessary** for 
the function - these lines should not be selected. Make sure to place the blocks at the right indentation levels!

.. parsonsprob:: branching_mixed_up_code_1
    :numbered: left
    :adaptive:

    Construct a function, ``difference``, that **prints** the difference of ``a`` and ``b`` if the result
    would result in a positive number.  Otherwise, prints ``-1``.
    Put the necessary blocks of code in the correct order.
    -----
    void difference (int a, int b) {
    =====
    int difference (int a, int b) { #paired
    =====
        if (a - b > 0) {
    =====
        if (a - b < 0) { #paired
    =====
            cout << a - b;
    =====
        }
    =====
        else {
    =====
            cout << -1;
    =====
        }
    =====
    }

.. parsonsprob:: branching_mixed_up_code_2
    :numbered: left
    :adaptive:

    Write the function, ``greaterThan``, that compares two ``double`` arguments. 
    ``greaterThan`` prints ``true`` if ``a`` argument is greater than ``b`` argument. Otherwise, print
    ``false``. Put the necessary blocks of code in the correct order.
    -----
    void greaterThan (double a, double b) {
    =====
    void greaterThan (int a , int b) { #paired
    =====
        if (a > b) {
    =====
            cout << "true";
    =====
        }
    =====
        else {
    =====
            cout << "false";
    =====
        }
    =====
        if (double a > double b) { #distractor
    =====
    }

.. parsonsprob:: branching_mixed_up_code_3
    :numbered: left
    :adaptive:

    Construct a function, ``matic``, that takes as inputs 2 integers, ``x`` and ``y``, and prints **automatic** if ``x`` is
    an odd number, **systematic** if ``x`` is greater than ``y``, AND
    **hydromatic** if ``y`` is not equal to ``x``.  Check all 3 conditions.
    Put the necessary blocks of code in the correct order.
    -----
    void matic (int x, int y) {
    =====
    int matic (int x, int y) {    #paired
    =====
        if (x % 2 > 0) {
    =====
        if (x % 2 == 0) { #paired
    =====
            cout << "automatic" << endl;
    =====
        }
    =====
        if (x > y) {
    =====
        else if (x > y) { #paired
    =====
            cout << "systematic" << endl;
    =====
        }
    =====
        if (y != x) {
    =====
        else { #paired
    =====
            cout << "hydromatic" << endl;
    =====
        }
    =====
    }

.. parsonsprob:: branching_mixed_up_code_4
    :numbered: left
    :adaptive:

    Write the function ``exclusiveOr`` that prints ``true`` If
    either ``a`` OR ``b`` is true, and prints ``false`` otherwise.
    Put the necessary blocks of code in the correct order.
    -----
    void exclusiveOr (bool a, bool b) {
    =====
        if (a == true || b == true) {
    =====
            cout << "true";
    =====
        }
    =====
        if (a == true && b == true) { #paired
    =====
        else {
    =====
            cout << "false";
    =====
        }
    =====
    }

.. parsonsprob:: branching_mixed_up_code_5
    :numbered: left
    :adaptive:

    Construct a block of code that prints "Pick me!" if ``x`` is
    equal to ``y``, "Choose me!" if ``x`` is less than ``y``, OR "Love me!" 
    if ``x + y`` is even. Put the necessary blocks of code in the correct order.
    -----
    int main() {
    =====
        if (x == y) {
    =====
        if (x = y) { #paired
    =====
            cout << "Pick me!";
    =====
        }
    =====
        else if (y > x) {
    =====
        if (x < y) { #paired
    =====
            cout << "Choose me!";
    =====
        }
    =====
        else if ((x + y) % 2 == 0) {
    =====
        else (x + y % 2 == 0) { #paired
    =====
        else if (x + y % 2 == 0) { #paired
    =====
            cout << "Love me!";
    =====
        }
    =====
    }

.. parsonsprob:: branching_mixed_up_code_6
    :numbered: left
    :adaptive:

    Construct a function, ``printLetterGrade``, that prints your letter grade according to this scheme.
    [0, 70) = F, [70, 80) = C, [80, 90) = B, and [90, 100] = A. Put the necessary blocks of code in the 
    correct order.
    -----
    void printLetterGrade (double grade) {
    =====
        if (grade < 70) {
    =====
            cout << "F"; }
    =====
        else if (grade < 80) {
    =====
        if (grade < 80) { #paired
    =====
            cout << "C";
    =====
        }
    =====
        else if (grade < 90) {
    =====
        if (grade < 90) { #paired
    =====
            cout << "B";
    =====
        }
    =====
        else {
    =====
            cout << "A";
    =====
        }
    =====
    }

.. parsonsprob:: branching_mixed_up_code_7
    :numbered: left
    :adaptive:

    According to a logic game, a knight is someone who cannot tell a lie according to what is told to them,
    and a knave is someone who cannot tell the truth according to the actual truth.  Construct a function, ``knightKnave``,
    that takes two booleans: the ``truth`` value of the actual story, and the truth value
    ``told`` by the person. If the ``told`` is the ``truth``, the person is a knight. If the ``told`` is not the ``truth``, the
    person is a knave. Put the necessary blocks of code in the correct order.
    -----
    void knightKnave (bool truth, bool told) {
    =====
        if (truth == told) {
    =====
            cout << "Knight! This person is telling the truth as they know it!" << endl;
    =====
        }
    =====
        else if (truth != told) {
    =====
            cout << "Knave! This person is not telling the truth!" << endl;
    =====
        }
    =====
    }

.. parsonsprob:: branching_mixed_up_code_8
    :numbered: left
    :adaptive:

    Construct a recursive function, ``takeSum``, that prompts the user for a positive
    number.  It should then output that number to the terminal.  If the user
    enters a negative number or zero, prompt the user again. Put the necessary blocks of code in the correct order.
    -----
    void takeSum () {
    =====
        cout << "Input a positive number!";
    =====
        int num;
    =====
        cin >> num;
    =====
        if (num < 0) {
    =====
            takeSum ();
    =====
        }
    =====
        cout << num;
    =====
    }