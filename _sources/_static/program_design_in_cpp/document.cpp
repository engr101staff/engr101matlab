#include <iostream>
#include <vector>
#include <string>

using namespace std;

void loadDocument(istream &is, vector<string> &doc) {
    string word;
    while (is >> word) {
        doc.push_back(word);
    }
}

void writeDocument(ostream &os, const vector<string> &doc, const string &separator) {
    for(int i = 0; i < doc.size(); ++i) {
        os << doc[i] << separator;
    }
}

vector<double> letterFrequency(const vector<string> &doc) {

    // A vector that will hold a count/frequency for each letter
    vector<double> freq(26, 0);

    // count occurrences of each letter and total # of letters
    int total_letters = 0;
    for(int w_i = 0; w_i < doc.size(); ++w_i) {
        const string &word = doc[w_i];
        for(int c_i = 0; c_i < word.size(); ++c_i) {
            char letter = word[c_i];
            int letter_pos = letter - 'a';
            ++freq[letter_pos];
            ++total_letters;
        }
    }

    // divide by total to get frequency
    for(int i = 0; i < freq.size(); ++i) {
        freq[i] = freq[i] / total_letters;
    }

    return freq;
}
