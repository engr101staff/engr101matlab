Mixed Up Code Exercises
-----------------------

These questions are **completely OPTIONAL**. We provide these exercises to give you more practice with the material that you've learned. 
Additionally, they may be a helpful resource when reviewing for assessments. Some lines contain **mistakes** or are **unnecessary** for 
the function - these lines should not be selected. Make sure to place the blocks at the right indentation levels!

.. parsonsprob:: functions_in_cpp_mixed_up_code_1
   :numbered: left
   :adaptive:
   :practice: T

   Vacation time! But before you go, you need to convert your currency.
   Let's write the code for the dollarToYen function. ``dollarToYen``
   takes dollar as a parameter and returns the equivalent amount of Japanese yen.
   The conversion rate is 1 USD equals 105.42 Japanese yen.
   Put the necessary blocks of code in the correct order.
   -----
   double dollarToYen (double dollar) {
   =====
   int dollarToYen (double dollar) {  #distractor
   =====
   void dollarToYen (double dollar) {  #distractor
   =====
   double dollarToYen () {  #distractor
   =====
      double yen;  #distractor
   =====
      return 105.42 * dollar;
   =====
      return 105.42 * yen;  #distractor
   =====
   }

.. parsonsprob:: functions_in_cpp_mixed_up_code_2
   :numbered: left
   :adaptive:
   :practice: T

   When you buy something, you usually need to pay sales tax. For example,
   a nice shirt could be labeled with a price of exactly $20, but when 
   you pay, you actually need to pay $21.20 in a state with 6% sales tax.
   However, different states have different tax rates. Write the function
   ``priceWithTax``, which takes ``price`` and ``percentTax`` as parameters.
   ``priceWithTax`` calculates the price after tax and returns it.
   For example, ``priceWithTax (20, 6)`` returns 21.2.
   Put the necessary blocks of code in the correct order.
   -----
   double priceWithTax (double price, double percentTax) {
   =====
   int priceWithTax (double price, int percentTax) {  #distractor
   =====
   double priceWithTax (price, percentTax) {  #distractor
   =====
      return (1 + percentTax / 100) * price;
   =====
      return (1 + percentTax) * price;  #distractor
   =====
      return percentTax * price;  #distractor
   =====
   }

.. parsonsprob:: functions_in_cpp_mixed_up_code_3
   :numbered: left
   :adaptive:
   :practice: T

   Most assignments and tests are graded as a percentage, but final
   grades are letters. Let's write the code for the ``percentToLetter`` function. 
   ``percentToLetter`` takes a percentage and returns the corresponding
   letter grade. A 90% and above is an 'A', an 80% and above is a 'B', a 70% and above
   is a 'C', and anything under a 70% is an 'F'.
   Put the necessary blocks of code in the correct order.
   -----
   char percentToLetter (double percentage) {
   =====
   void percentToLetter (double percentage) {  #distractor
   =====
   void percentToLetter (int percentage) {  #distractor
   =====
   char percentToLetter (percentage) {  #distractor
   =====
      if (percentage >= 90) {
   =====
         return 'A';
   =====
         return A;  #paired
   =====
      }
   =====
      else if (percentage >= 80) {
   =====
         return 'B';
   =====
         return 'B'  #paired
   =====
      }
   =====
      else if (percentage >= 70) {
   =====
      else if (percentage > 70) {  #paired
   =====
         return 'C';
   =====
      }
   =====
      else {
   =====
         return 'F';
   =====
      }
   =====
   }

.. parsonsprob:: functions_in_cpp_mixed_up_code_4
   :numbered: left
   :adaptive:
   :practice: T

   Let's write the code for the ``triangleArea`` function. ``triangleArea``
   takes two parameters, ``base`` and ``height``. It returns the 
   area of the triangle using the formula **1/2 * base * height**.
   Put the necessary blocks of code in the correct order.
   -----
   double triangleArea (double base, double height) {
   =====
   int triangleArea (double base, double height) {  #distractor
   =====
   void triangleArea (double base, double height) {  #distractor
   =====
   double triangleArea (base, height) {  #distractor
   =====
      double area;  #distractor
   =====
      return 0.5 * base * height;
   =====
      cout << 0.5 * base * height << endl;  #distractor
   =====
   }

.. parsonsprob:: functions_in_cpp_mixed_up_code_5
   :numbered: left
   :adaptive:
   :practice: T

   Let's write the code for the ``cylinderVolume`` function. ``cylinderVolume``
   takes two parameters, ``radius`` and ``height``. It returns the 
   volume of the cylinder using the formula **pi * radius * radius * height**.
   Put the necessary blocks of code in the correct order.
   -----
   double cylinderVolume (double radius, double height) {
   =====
   void cylinderVolume (double radius, double height) {  #distractor
   =====
   double cylinderVolume (radius, height) {  #distractor
   =====
      double pi = 3.14;
   =====
      return pi * radius * radius * height;
   =====
   }

.. parsonsprob:: functions_in_cpp_mixed_up_code_6
   :numbered: left
   :adaptive:
   :practice: T

   Let's write a function called ``scale`` which takes an input ``x`` and scales it by a factor 
   of 2 is ``x`` is even and a factor of 3 if ``x`` is odd. The function should modify the original
   ``x`` variable, not return the scaled value.
   -----
   void scale(int &x) {
   =====
   void scale(int x) {  #distractor
   =====
   int scale(int x) {  #distractor
   =====
      if (x % 2 == 0) {
   =====
      if (x % 2) {  #paired
   =====
         x = x * 2;
   =====
      }
   =====
      return x * 2; #distractor
   =====
      else {
   =====
         x = x * 3;
   =====
         return x * 3;  #distractor
   =====
      }
   =====
   }

.. parsonsprob:: functions_in_cpp_mixed_up_code_7
   :numbered: left
   :adaptive:
   :practice: T

   Let's write the code for the ``isDoubleDigit`` function. ``isDoubleDigit``
   takes ``num`` as a parameter. ``isDoubleDigit`` returns ``true`` if 
   ``num`` is a double digit number and returns ``false`` otherwise. 
   Put the necessary blocks of code in the correct order.
   -----
   bool isDoubleDigit (int num) {
   =====
   isDoubleDigit (int num) {  #paired
   =====
      if (num >= 10 && num < 100) {
   =====
      if (10 <= num <= 99) {  #distractor
   =====
      if (num > 10 && num < 100) {  #distractor
   =====
      if (num > 10 && num <= 100) {  #distractor
   =====
         return true;
   =====
      }
   =====
      return false;
   =====
   }

.. parsonsprob:: functions_in_cpp_mixed_up_code_8
   :numbered: left
   :adaptive:
   :practice: T

   Let's write the code for the ``compare`` function. The ``compare`` 
   function takes two integers ``a``, ``b``. Compare returns ``1`` if 
   a is greater than b, ``-1`` if a is less than b and ``0`` if they are equal.
   Put the necessary blocks of code in the correct order.
   -----
   int compare (int a, int b) {
   =====
   bool compare (int a, int b) {   #paired
   =====
      if (a > b) {
   =====
      if (a > b && a &lt b) {  #distractor
   =====
         return 1;
   =====
      }
   =====
      else if (a &lt b) {  
   =====
         return -1;
   =====
      }
   =====
      else if (a > 0){ #distractor
   =====
      else {
   =====
         return 0;
   =====
      }
   =====
   }

.. parsonsprob:: functions_in_cpp_mixed_up_code_9
   :numbered: left
   :adaptive:
   :practice: T

   Let's write the code for the ``isFactor`` function. ``isFactor``
   takes two parameters, ``num`` and ``factor``. ``isFactor`` returns ``true`` if 
   factor is a factor of num and returns ``false`` otherwise. A number can be called a factor 
   of another if it can divide without a remainder. For example, 9 is a factor of 18 because 18 / 9 = 2, with 
   a remainder of 0. Put the necessary blocks of code in the correct order.
   -----
   bool isFactor (int num, int factor) {
   =====
   void isFactor (int num, int factor) {  #paired
   =====
      if (num % factor == 0) {
   =====
      if (num / factor == 0) {  #distractor
   =====
      if (num % factor) {  #distractor
   =====
      if (factor % num == 0) {  #distractor
   =====
         return true;
   =====
      }
   =====
      return false;
   =====
   }

.. parsonsprob:: functions_in_cpp_mixed_up_code_10
   :numbered: left
   :adaptive:
   :practice: T

   Let's write the code for the ``isPerfectSquare`` function. ``isPerfectSquare``
   takes ``input`` as a parameter and returns ``true`` if input is a 
   perfect square and returns ``false`` otherwise. A perfect square is a number
   that has an integer square root. For example, 1, 4, 9, and 16 are all perfect squares 
   because the square root of these numbers is a whole number. 
   Put the necessary blocks of code in the correct order.
   -----
   bool isPerfectSquare (int input) {
   =====
   bool isPerfectSquare (int input) #distractor
   =====
   int isPerfectSquare (int input) {  #distractor
   =====
      int root = sqrt (input);
   =====
      double root = sqrt (input);  #distractor
   =====
      if (pow (root, 2) == input) {
   =====
      if (sqrt (input)) {  #distractor
   =====
         return true;
   =====
      }
   =====
      return false;
   =====
   }