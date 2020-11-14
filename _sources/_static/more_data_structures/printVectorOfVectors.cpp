#include <iostream>
#include <vector>
#include <cmath>
#include <cstdlib>

using namespace std;

// prints out a vector of vector of integers
// TODO: complete the missing code
void printVecOfVecs(const vector<vector<int>> &vecs)
{

  // TODO: fill in what's missing in the line below
  for (int i = 0; i <      .size(); ++i)
  { 
    cout << "{ ";

    // TODO: fill in what's missing in the line below
    for (int k = 0; k <       .size(); ++k)
    {
      // TODO: your code here to print out the element in the vector of vectors

      

    }
    cout << "}" << endl;
  }
}

int main()
{
  // DO NOT CHANGE ANYTHING IN THE MAIN FUNCTION

  // declare v2 as a vector of vectors
  vector<vector<int>> v2;

  // make a vector
  vector<int> v = {1, 2, 3, 4};

  // add this vector to v2
  v2.push_back(v);

  // change v
  v.pop_back();

  // add new version of v to v2
  v2.push_back(v);

  // add a few elements to v
  for (int i = 6; i < 10; ++i){
    v.push_back(i);
  }

  // add new version of v to v2
  v2.push_back(v);

  // clear v
  v.clear();

  // add new version of v to v2
  v2.push_back(v);

  // add an element to v
  v.push_back(0);

  // add new version of v to v2
  v2.push_back(v);

  // print what is in v2
  printVecOfVecs(v2);

}