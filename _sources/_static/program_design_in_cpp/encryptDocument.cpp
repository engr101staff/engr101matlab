#include <iostream>
#include <fstream>
#include <vector>
#include <string>

using namespace std;

#include "caesar.h"
#include "document.h"

int main() {

  
  // open file into file stream
  ifstream fin("notes.txt");
  vector<string> words;
  
  // load document into vector of strings
  loadDocument(fin, words);

  cout << words.size() << endl;
  
  // loop through words and encrypt each one
  for(int i = 0; i < words.size(); ++i) {
    words[i] = encrypt_word(words[i], -7);
  }

  // write encrypted document/words to a file
  ofstream fout("encrypted.txt");
  writeDocument(fout, words, " ");

}
