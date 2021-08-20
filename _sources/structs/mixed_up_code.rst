Mixed Up Code Exercises
-----------------------

These questions are **completely OPTIONAL**. We provide these exercises to give you more practice with the material that you've learned. 
Additionally, they may be a helpful resource when reviewing for assessments. Some lines contain **mistakes** or are **unnecessary** for 
the function - these lines should not be selected. Make sure to place the blocks at the right indentation levels!

.. parsonsprob:: structs_mixed_up_code_1
    :numbered: left
    :adaptive:

    Let's write the code for the struct definition of ``Song``. 
    The Song structure will have the instance variables ``string title``, 
    ``string artist``, ``string album``, and ``int year`` in that order. 
    Put the necessary blocks of code in the correct order.
    -----
    struct Song {
    =====
    struct song { #paired
    =====
        string title;
    =====
        string artist;
    =====
        string album;
    =====
        int year;
    =====
        string year;  #distractor
    =====
    };
    =====
    } #distractor

.. parsonsprob:: structs_mixed_up_code_2
    :numbered: left
    :adaptive:

    Let's write the code for the ``printSong`` function. ``printSong``
    takes a ``Song`` as a parameter and prints out the instance variables
    in the following format: ``"title" by artist (album, year)``. Put the necessary blocks of 
    code in the correct order.
    -----
    void printSong (Song &s) {
    =====
        cout << "\"" << s.title << "\" by " << s.artist;
    =====
        cout << " (" << s.album << ", " << s.year << ")" << endl;
    =====
        cout << title << artist << album << year;  #distractor
    =====
        cout << "\"" << title << "\" by " << artist;  #distractor
    =====
    }

.. parsonsprob:: structs_mixed_up_code_3
    :numbered: left
    :adaptive:

    Let's write the code for the struct definition of ``Unicorn``. 
    The ``Unicorn`` structure will have the instance variables ``name``, 
    ``age``, ``hornLength``, ``hairColor``, and ``isSparkly`` in that order. A Unicorn's
    ``hornLength`` is measured to the nearest tenth of a unit and ``isSparkly`` is a boolean.
    Put the necessary blocks of code in the correct order.
    -----
    struct Unicorn {
    =====
    Struct Unicorn {  #distractor
    =====
        string name;
    =====
        int age;
    =====
        double hornLength;
    =====
        string hairColor;
    =====
        bool isSparkly;
    =====
        int hornLength;  #distractor
    =====
    };
    =====
    } #distractor

.. parsonsprob:: structs_mixed_up_code_4_re
    :numbered: left
    :adaptive:

    Let's write the code for the ``convertToHumanAge`` function. ``convertToHumanAge``
    takes a ``Unicorn`` as a parameter and returns the equivalent human age.
    If a unicorn ``isSparkly``, then its equivalent human age is three times its ``age`` in unicorn years
    plus the ``hornLength``. If a unicorn is not sparkly, then its equivalent human age is
    four times its ``age`` in unicorn years plus twice the ``hornLength``. In the code, use an ``else`` statement to
    do calculations for a unicorn that is not sparkly. Put the necessary blocks of code in the correct order.
    -----
    int convertToHumanAge (const Unicorn &u) {
    =====
    void convertToHumanAge (const Unicorn &u) {  #paired
    =====
        if (u.isSparkly) {
    =====
        if (isSparkly) {  #paired
    =====
            return 3 * u.age + u.hornLength;
    =====
            return 3 * age + hornLength;  #paired
    =====
        } else {
    =====
            return 4 * u.age + 2 * u.hornLength;
    =====
            return 4 * age + 2 * hornLength;  #distractor
    =====
        }
    =====
    }

.. parsonsprob:: structs_mixed_up_code_5
    :numbered: left
    :adaptive:

    Let's write the code for the struct definitions of ``Address`` and ``Employee``. 
    The ``Address`` structure will have the instance variables ``houseNumber``, 
    ``state`` (abbreviation), and ``postalAddress`` in that order. The ``Employee`` 
    structure will be a nested structure with the instance variables ``name``, an
    ``Address``, and an integer ``id`` value in that order. 
    Put the necessary blocks of code in the correct order, with Address defined before Employee.
    -----
    struct Address {
    =====
    Struct Address {  #distractor
    =====
        int houseNumber;
    =====
        string state;
    =====
        string postalAddress;
    =====
    };
    =====
    struct Employee {
    =====
    Struct Employee {  #distractor
    =====
        string name;
    =====
        Address address;
    =====
        int id;
    =====
    };
    =====
    }  #distractor

.. parsonsprob:: structs_mixed_up_code_6
    :numbered: left
    :adaptive:

    Let's write the code for the ``printAddress`` function. ``printAddress`` takes
    an ``Employee`` as a parameter and should print out the information of the employee in the 
    following format: ``name (id) lives at houseNumber in state, postalAddress``.
    Put the necessary blocks of code in the correct order.
    -----
    void printAddress (const Employee &e) {
    =====
    string printAddress (Employee &e) {  #paired 
    =====
        cout << e.name << " (" << e.id << ") lives at ";
    =====
        cout << e.address.name << " (" << e.address.id << ") lives at ";  #distractor
    =====
        cout << e.name << "(" << e.address.id << ") lives at";  #distractor
    =====
        cout << e.address.houseNumber << " in " << e.address.state << ", " << e.address.postalAddress << endl;
    =====
        cout << e.houseNumber << " in " << e.state << ", " << e.postalAddress << endl;  #distractor
    =====
    }

.. parsonsprob:: structs_mixed_up_code_7_re
    :numbered: left
    :adaptive:

    Sometimes employees will move around and thus we'll need to update their addresses.
    Let's write the code for the ``updateAddress`` function. ``updateAddress`` takes an
    ``Employee`` and a new ``Address`` as parameters and sets the employee's address to the new address.
    Put the necessary blocks of code in the correct order.
    -----
    void updateAddress (Employee &e, const Address &a) {
    =====
    void updateAddress (Employee e, Address a) {  #distractor
    =====
        e.address = a;
    =====
        e.address.state = a.state;  #distractor
    =====
        e.address.houseNumber = a.houseNumber;  #distractor
    =====
        e.address.postalAddress = a.postalAddress;  #distractor
    =====
    }
    =====
    };  #distractor

.. parsonsprob:: structs_mixed_up_code_8_re
    :numbered: left
    :adaptive:

    Let's write the code for the ``storeEmployeeData`` function. ``storeEmployeeData`` should be a void function that takes an empty ``Employee`` as an input.
    ``storeEmployeeData`` prompts the user for information regarding their ``name``, ``houseNumber``, ``state``, and ``postalAddress`` in that order.
    It then stores the user's information in the inputted empty ``Employee`` structure. Put the necessary blocks of code in the correct order.
    -----
    void storeEmployeeData (Employee &e) {
    =====
        cout << "What is your full name? ";
    =====
        cin >> e.name;
    =====
        cout << "What is your house number? ";
    =====
        cin >> e.address.houseNumber;
    =====
        cin >> e.houseNumber;  #paired
    =====
        cout << "What state do you live in? ";
    =====
        cin >> e.address.state;
    =====
        cout << "What is your postal address? ";
    =====
        cin >> e.address.postalAddress;
    =====
        return Employee e;  #distractor
    =====
    }