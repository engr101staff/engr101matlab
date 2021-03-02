Mixed Up Code Exercises
-----------------------

Answer the following **Mixed-Up Code** questions to assess what you have learned in this chapter.

.. parsonsprob:: branching_mixed_up_code_1
   :numbered: left
   :adaptive:
   :practice: T

   Construct a program that prints the price (with 8% sales tax) of an item with after using a 30% off coupon.
   -----
   int main() {
   =====
    double item = 16.00;
   =====
    double discount = item * 0.30;
   =====
    double final = (item - discount) * 1.08;
   =====
    double final = (item - discount) * 0.08; #paired
   =====
    double final = item - discount * 0.08; #paired
   =====
    cout << final;
   =====
   }

.. parsonsprob:: branching_mixed_up_code_2
   :numbered: left
   :adaptive:
   :practice: T

   Construct a program that takes a dollar amount and cent amount and prints the total amount of money that you have.
   -----
   int main() {
   =====
    int dollars = 12;
    int cents = 375;
   =====
    int dollarTotal = dollars + cents / 100;
   =====  
    double dollarTotal = dollars + cents / 100.0; #paired
   =====
    double centTotal = cents % 100;
   =====
    double centTotal = cents / 100; #paired
   =====
    cout << "$" << dollarTotal << "." << centTotal;
   =====
    cout << "$" << dollarTotal << centTotal; #paired
   =====
   }

.. parsonsprob:: branching_mixed_up_code_3
   :numbered: left
   :adaptive:
   :practice: T

   In Michigan, the probability that it snows on any given day in the winter is about 14%.  The probability of having a snow day on any given day in the winter is about 4%.  The probability that is snows and you have a snow day is 8%.  
   Construct a program that calculates the probability of a having a snow day, given the fact that it will snow tonight.  
   For reference, the formula for conditional probability is: P(A|B) = P(B and A) / P(B).
   -----
   int main() {
   =====
    double probSnow = 0.14;
    double probSnowday = 0.04;
    double probBoth = 0.08;
   =====
    double prob = probBoth / probSnow;
   =====
    double prob = probSnow / probBoth; #paired
   =====
    double prob = probBoth / probSnowday; #paired
   =====
    cout << prob;
   =====
   }

.. parsonsprob:: branching_mixed_up_code_4
   :numbered: left
   :adaptive:
   :practice: T

   Construct a program that correctly calculates the volume of a cone with as 
   much precision as possible and prints the value to the terminal.  Use 3.14 for pi.
   -----
   int main() {
   =====
    double r = 4.0;
    double h = 7.5;
   =====
    double vol = 1/3.0 * 3.14 * r * r * h;
   =====
    double vol = 1/3 * 3.14 * r * r * h; #paired
   =====
    int vol = 1/3 * 3.14 * r * r * h; #paired
   =====
    int vol = 1/3.0 * 3.14 * r * r * h; #paired
   =====
    cout << vol;
   =====
   }

.. parsonsprob:: branching_mixed_up_code_5
   :numbered: left
   :adaptive:
   :practice: T

   Construct a program that prints the difference of a and b if the result
   would result in a positive number.  Otherwise, prints -1.
   -----
   int main() {
   =====
    int a = 4;
    int b = 3;
   =====
    if (a - b > 0) {
   =====
    if (a - b < 0) { #paired
   =====
     cout << a - b;
    }
   =====
    else {
   =====
     cout << -1;
    }
   =====
   }

.. parsonsprob:: branching_mixed_up_code_6
   :numbered: left
   :adaptive:
   :practice: T

   Construct a program that prints "Pick me!" if x is
   equal to y, "Choose me!" if x is less than y, OR "Select me!" 
   if x + y is even.
   -----
   int main() {
   =====
     int x = 7;
     int y = 3
   ===== 
     if (x == y) {
   =====
     if (x = y) { #paired
   =====
       cout << "Pick me!"; }
   =====
     else if (y > x) {
   =====
     if (x < y) { #paired
   =====
       cout << "Choose me!"; } 
   =====
     else if ((x + y) % 2 == 0) {
   =====
     else (x + y % 2 == 0) { #paired
   =====
     else if (x + y % 2 == 0) { #paired
   =====
       cout << "Love me!";
     }
   =====
   } 

.. parsonsprob:: branching_mixed_up_code_7
   :numbered: left
   :adaptive:
   :practice: T

   According to a logic game, a knight is someone who cannot tell a lie,
   and a knave is someone who cannot tell the truth.  Construct a program
   that takes two booleans: the truth value of the story, and the truth value
   told by the person.  The program should print whether the person was a
   knight or a knave.
   -----
   int main() {
   =====
    bool truthStory = true;
    bool truthTold = false;
   =====
    if (truthStory == true) {
   =====
     if (truthTold == true) {
      cout << "Knight";
     }
   =====
     else {
      cout << "Knave";
     }
   =====
    else {
   =====
     if (truthTold == true) {
      cout << "Knave";
     }
   =====
     else {
      cout << "Knight";
     }
   =====
   }

.. parsonsprob:: branching_mixed_up_code_8
   :numbered: left
   :adaptive:
   :practice: T

   Write a program that prints "``num`` is a double digit number" if ``num``
   has two digits and "``num`` is not a double digit number" otherwise.
   Put the necessary blocks of code in the correct order.
   -----
   int main() {
   =====
     int num = 23;   
   =====
     if (num >= 10 && num < 100) {
   =====
     if (10 <= num <= 99) {  #distractor
   =====
     if (num > 10 && num < 100) {  #distractor
   =====
     if (num > 10 && num <= 100) {  #distractor
   =====
       cout << num << " is a double digit number" << endl;
   =====
     }
   =====
     else {
   =====
       cout << num << " is not a double digit number" << endl;
   =====
     }
   =====
   }

.. parsonsprob:: branching_mixed_up_code_9
   :numbered: left
   :adaptive:
   :practice: T

   On a distant planet, depending on the characteristics of an egg, a kenchic,
   an ooseg, or a guinpen might hatch from it. Write a program that prints out 
   an ``int`` corresponding to each type of bird
   (1 for kenchic, 2 for ooseg, and 3 for guinpen). If the egg is round, then it is a 
   guinpen. Otherwise, if the egg isn't round and it isn't gray, then it is a kenchic. If 
   it isn't a guinpen and it isn't a kenchic, then it's an ooseg. 
   Put the necessary blocks of code in the correct order.
   -----
   int main() {
   =====
   bool isRound = true;
   bool isGray = false;
   =====
      if (isRound) {
   =====
      if (isRound && !isGray) {  #paired
   =====
         cout << 1 << endl;
   =====
      }
   =====
      else if (!isRound && !isGray) {
   =====
      else if (!isRound || !isGray)) {  #paired
   =====
         cout << 2 << endl;
   =====
      }
   =====
      else {
   =====
         cout << 3 << endl;
   =====
         cout << 0 << endl;
   =====
      }
   =====
   }

.. parsonsprob:: branching_mixed_up_code_10
   :numbered: left
   :adaptive:
   :practice: T

   Write a program that prints "``factor`` is a factor of ``num``" if 
   ``factor`` is a factor of ``num`` and "Not a factor" otherwise.
   Put the necessary blocks of code in the correct order.
   -----
   int main() {
   =====
      int num = 24;
      int factor = 4;  
   =====
      if (num % factor == 0) {
   =====
      if (num / factor == 0) {  #distractor
   =====
      if (num % factor) {  #distractor
   =====
      if (factor % num == 0) {  #distractor
   =====
         cout << factor << " is a factor of " << num << endl;
   =====
      }
   =====
      else {
   =====
         cout << "Not a factor" << endl;
   =====
      }
   =====
   }