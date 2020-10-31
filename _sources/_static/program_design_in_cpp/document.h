#include <iostream>
#include <vector>
#include <string>

void loadDocument(std::istream &is, std::vector<std::string> &doc);

void writeDocument(std::ostream &os, const std::vector<std::string> &doc, const std::string &separator);

vector<double> letterFrequency(const vector<string> &doc);