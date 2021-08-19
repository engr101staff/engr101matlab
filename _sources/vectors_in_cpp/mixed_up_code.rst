Mixed Up Code Exercises
-----------------------

These questions are **completely OPTIONAL**. We provide these exercises to give you more practice with the material that you've learned. 
Additionally, they may be a helpful resource when reviewing for assessments. Some lines contain **mistakes** or are **unnecessary** for 
the function - these lines should not be selected. Make sure to place the blocks at the right indentation levels!

.. parsonsprob:: vectors_in_cpp_mixed_up_code_1
    :numbered: left
    :adaptive:

    Construct a block of code that loops over a vector called ``numbers``, initialized as ``{1,2,3,4,5}``,
    and transforms the vector so each element is doubled. Put the necessary blocks of code in the correct order.
    -----
    #include <vector>
    using namespace std;
    =====
    int main() {
    =====
        vector<int> numbers = {1, 2, 3, 4, 5};
    =====
        vector numbers = {1, 2, 3, 4, 5}; #paired
    =====
        for (int i = 0; i < numbers.size(); i++) {
    =====
        for (int i = 0; i <= numbers.size(); i++) { #distractor
    =====
            numbers[i] *= 2;
    =====
        }
    =====
    }

.. parsonsprob:: vectors_in_cpp_mixed_up_code_2
    :numbered: left
    :adaptive:

    Suppose you have the vector ``vector<string> words = {"car", "cat", "switch", "princess"}``
    Construct a block of code that transforms the vector to ``vector<string> words = {"cAr", "cAt", "switch", "mArio"}``.
    Put the necessary blocks of code in the correct order.
    -----
    #include <vector>
    #include <string>
    using namespace std;
    =====
    int main() {
    =====
        vector<string> words = {"car", "cat", "switch", "princess"}
    =====
        words.pop_back();
    =====
        words.push_back("mario");
    =====
        for (int i = 0; i < words.size(); i++) {
    =====
            for (int j = 0; j < words[i].size(); j++) {
    =====
                if (words[i][j] == 'a') {
    =====
                    words[i][j] = 'A';
    =====
                }
    =====
            }
    =====
        }
    =====
    }

.. parsonsprob:: vectors_in_cpp_mixed_up_code_3
    :numbered: left
    :adaptive:

    Suppose ``album`` has already been defined as ``vector<string> album = {"imagine", "needy", "NASA", "bloodline", "fake smile", "bad idea", "make up", "ghostin", "in my head", "7 rings", "thank u, next", "break up with your girlfriend, i'm bored"}``
    Construct a block of code that counts how many songs in ``album`` start with b. Put the necessary blocks of code in the correct order.
    -----
    #include <vector>
    #include <string>
    using namespace std;
    =====
    int main() {
    =====
        vector<string> album = {"imagine", "needy", "NASA", "bloodline", "fake smile", "bad idea", "make up", "ghostin", "in my head", "7 rings", "thank u, next", "break up with your girlfriend, i'm bored"};
    =====
        int count = 0;
    =====
        for (int i = 0; i < album.size(); i++) {
    =====
            if (album[i][0] == 'b') {
    =====
            if (album[i] == 'b') { #paired
    =====
                count++;
    =====
            }
    =====
        }
    =====
    }

.. parsonsprob:: vectors_in_cpp_mixed_up_code_4
    :numbered: left
    :adaptive:

    Suppose you have the following two vectors to describe the weekly forecast ``vector<double> temps = {82.0, 76.8, 74.3, 58.8, 79.2, 73.4, 80.1}``,
    ``vector<double> precip = {0.00, 0.30, 0.60, 0.90, 0.10, 0.20, 0.80}``. Your family will go to the beach if the temperature at least 75 degrees and the chance
    of precipitation is less than 50%.  Construct a block of code that counts how many days your family can hit the beach on your vacation.
    Put the necessary blocks of code in the correct order.
    -----
    #include <vector>
    using namespace std;
    =====
    int main() {
    =====
        vector<double> temps = {82.0, 76.8, 74.3, 58.8, 79.2, 73.4, 80.1};
    =====
        vector<double> precip = {0.00, 0.30, 0.60, 0.90, 0.10, 0.20, 0.80};
    =====
        int count = 0;
    =====
        for (int i = 0; i < 7; i++) {
    =====
            if (temps[i] >= 75.0 && precip[i] < 0.50) {
    =====
            if (temps[i] > 75.0 || precip[i] < 0.50) { #paired
    =====
                count++;
    =====
            }
    =====
        }
    =====
    }

.. parsonsprob:: vectors_in_cpp_mixed_up_code_5
    :numbered: left
    :adaptive:

    Suppose you have the following vector ``vector<string> nouns = {"cereal", "Cocoa Puffs", "Mario", "luigi", "Aerosmith"}``.
    Construct a block of code that creates a vector of the proper nouns in ``nouns`` called ``proper``.
    Use the ``isupper`` function to check if a letter is uppercase. Put the necessary blocks of code in the correct order.
    -----
    #include <vector>
    #include <string>
    using namespace std;
    =====
    int main() {
    =====
        vector<string> nouns = {"cereal", "Cocoa Puffs", "Mario", "luigi", "Aerosmith"};
    =====
        vector<string> proper = {};
    =====
        for (int i = 0; i < nouns.size(); i++) {
    =====
            if (isupper(nouns[i][0])) {
    =====
                proper.push_back(nouns[i]);
    =====
            }
    =====
        }
    =====
    }
    =====
    proper.push_back(nouns[i][0]); #distractor
    =====
    proper.pop_back(nouns[i]); #distractor

.. parsonsprob:: vectors_in_cpp_mixed_up_code_6
    :numbered: left
    :adaptive:

    Suppose you have the following function ``howMany`` and vector ``exclamations``
    Construct a block of code that counts how many times ".", "!", and "?" occur in ``exclamations``.
    Save the counts to a vector with "." count as the first element, "!" count as the second, and "?" count as the third.
    Put the necessary blocks of code in the correct order.

    ::

        int howMany (const vector<string>& vec, char let) {
            int count = 0;
            for (int i = 0; i < vec.size(); i++) {
                for (int k = 0; k < vec[i].size(); k++) {
                    if (vec[i][k] == let) {
                        count++;
                    }
                }
            }
            return count;
        }

        vector<string> exclamations = {"what?!", "how???", "fine!", "STOP.", "yay!!!!!", "ugh...!"};

    -----
    #include <vector>
    #include <string>
    using namespace std;
    =====
    int main() {
    =====
        vector<string> exclamations = {"what?!", "how???", "fine!", "STOP.", "yay!!!!!", "ugh...!"};
    =====
        vector<char> punc = {'.', '!', '?'};
    =====
        vector<int> counts = {};
    =====
        for (int i = 0; i < punc.size(); i++) {
    =====
            counts.push_back(howMany(excl, punc[i]));
    =====
        }
    =====
    }

.. parsonsprob:: vectors_in_cpp_mixed_up_code_7
    :numbered: left
    :adaptive:

    Write the function ``endsEven`` that takes a vector and removes elements from the end of the vector until
    it ends with an even number. Put the necessary blocks of code in the correct order.
    -----
    void endsEven (vector<int> &vec) {
    =====
    vector endsEven (vector<int> &vec) { #distractor
    =====
        while (vec.back() % 2 != 0) {
    =====
        for (int i = 0; i < vec.size(); i++) { #paired
    =====
        vec.pop_back();
    =====
        }
    =====
    }

.. parsonsprob:: vectors_in_cpp_mixed_up_code_8
    :numbered: left
    :adaptive:

    Write the function ``randomNums`` that takes two integers: ``num`` which is the number of random numbers
    you wish to generate, and ``max``, which is the maximum value of random number you wish to generate.  Your
    function should return a vector of ``num`` integers that are between 1 and ``max``, inclusive.
    Put the necessary blocks of code in the correct order.
    -----
    vector<int> randomNums (int num, int max) {
    =====
        vector<int> randomVec(num);
    =====
        for (int i = 0; i < num; i++) {
    =====
        for (int i = 0; i <= randomVec.size(); i++) { #paired
    =====
            randomVec[i] = rand() % max + 1;
    =====
        }
    =====
        return randomVec;
    =====
        return randomVec[i]; #distractor
    =====
    }

.. parsonsprob:: vectors_in_cpp_mixed_up_code_9
    :numbered: left
    :adaptive: 

    Write the function ``weird_print`` that prints the first half of a vector of integers in reverse order
    and then prints the second half in the order present in the vector.
    If we had ``vec = {1,2,3,4,5,6}``
    we would print ``3 2 1 4 5 6``.
    You can assume the size of the vector will always be even.
    Put the necessary blocks of code in the correct order.
    -----
    void weird_print (vector<int> vec) {
    =====
        int half = vec.size() / 2;
    =====
        for (int i = vec.size() - 1; i >= half; i--){
    =====
            cout << vec[i-half] << ' ';
    =====
        }
    =====
        for (int h = 0; h < half; h++) {
    =====
            cout << vec[h + half] << ' ';
    =====
        }
    =====
        cout << endl;
    =====
    }