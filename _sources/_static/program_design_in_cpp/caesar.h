#include <string>

// NEVER PUT using namespace std; in a .h file

std::string encrypt_word(const std::string &text, int offset);

char shift_letter(char c, int offset);