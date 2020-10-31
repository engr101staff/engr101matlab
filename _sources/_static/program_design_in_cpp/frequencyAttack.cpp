#include <iostream>
#include <fstream>
#include <vector>
#include <string>

using namespace std;

#include "document.h"

int main() {

  // open file into file stream
  ifstream fin("notes.txt");
  vector<string> words;
  loadDocument(fin, words);
  
  vector<double> freq = letterFrequency(words);

  char c = 'a';
  for(int i = 0; i < freq.size(); ++i) {
    cout << c << ": " << freq[i] << endl;
    ++c;
  }

}
