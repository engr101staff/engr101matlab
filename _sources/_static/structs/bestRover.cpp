#include <iostream>
#include <string>
#include <vector>

using namespace std;

struct Rover {
    int type;
    string id;
    double charge;
    int capacity;
    bool isSelected;
};

double desirability(const Rover &rover) {
    // SPECIAL CASE
    if (rover.charge > 0.9) {
        return rover.capacity / 0.1;
    }

    // REGULAR CASE
    return rover.capacity / (1 - rover.charge);
}

// Returns the index of the most desirable
// non-selected Rover in the given
// vector that needs less than the available
// amount of charge. If no such
// rover exists, returns -1
int bestRover(const vector<Rover> &rovers, double availableCharge) {

  // YOUR CODE HERE

}

int main() {
    // Test your function
    vector<Rover> emptyRovers;
    cout << bestRover(emptyRovers,2) << endl; // Should be -1
  
    Rover rover1 = {1, "a238", 0.6, 200};
    Rover rover2 = {2, "a294", 0.1, 300};
    Rover rover3 = {3, "c321", 0.7, 400};
    vector<Rover> rovers;
    rovers.push_back(rover1);
    rovers.push_back(rover2);
    rovers.push_back(rover3);

    cout << bestRover(rovers,2) << endl; // Should be 2
}