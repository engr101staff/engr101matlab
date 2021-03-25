.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html


   <script src="../_static/common/js/common3.js"></script>

.. include:: ../common/include_lobster_exercises.in.rst

.. raw:: html

   <style>
      .btn {
         margin: 0;
      }
      .tab-pane {
         padding: 0;
      }
   </style>

=================================================
Introduction to Data Structures and Algorithms
=================================================

^^^^^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^^^^^

TODO introductory video
- 1-3

^^^^^^^^^^^^^^^^
Time Complexity
^^^^^^^^^^^^^^^^

We are going to be running our :code:`chargeRover` a lot of times, so we want to make sure that our function is efficient.

TODO insert code that we wrote for chargeRover

Let’s suppose we have 20 rovers in our fleet, and our vector of rovers is in a random order (e.g., the rovers aren’t sorted in any way). We are looking for a particular rover to charge.

.. mchoice:: ch21_01_ex_time_complexity_01

   In the **best case scenario** how many rovers will we have to look at before we find the rover we are looking for?

   - 1 rover

     + Correct! In the best case scenario, the first rover that we look at it is the rover that we’re looking for.

   - 5 rovers

     - Oops! The best case scenario is the scenario where we need to look at as few rovers as possible to find the one we’re looking for.

   - 10 rovers

     - Oops! The best case scenario is the scenario where we need to look at as few rovers as possible to find the one we’re looking for.

   - 20 rovers

     - Oops! The best case scenario is the scenario where we need to look at as few rovers as possible to find the one we’re looking for.

|

.. mchoice:: ch21_01_ex_time_complexity_02

   In the **worst case scenario** how many rovers will we have to look at before we find the rover we are looking for?

   - 1 rover

     - Oops! The worst case scenario is the scenario where we need to look at the maximum number of rovers before we find the one we’re looking for.

   - 5 rovers

     - Oops! The worst case scenario is the scenario where we need to look at the maximum number of rovers before we find the one we’re looking for.

   - 10 rovers

     - Oops! The worst case scenario is the scenario where we need to look at the maximum number of rovers before we find the one we’re looking for.

   - 20 rovers

     + Correct! In the worst case scenario, we’ll have to look at every single rover before we find the rover that we’re looking for.

|

.. mchoice:: ch21_01_ex_time_complexity_03

   **On average** how many rovers will we have to look at before we find the rover we are looking for?

   - 1 rover

     - Oops! This is the best case scenario, but we’re not always going to have the best case scenario.

   - 5 rovers

     - Oops! This guess is lower than what the average will be.

   - 10 rovers

     + Correct! On average, we will need to look at half of the rovers.

   - 20 rovers

     - Oops! This is the worst case scenario, but we’re not always going to have the worst case scenario.

|

TODO time complexity video
- Slides 4-11

Assume :code:`fleet` is a vector of Rovers. What is the worst-case time complexity of the following snippets of code? (Here, **n** = size of :code:`fleet`.)

.. mchoice:: ch21_01_ex_time_complexity_04

   .. code :: cpp

      // finds the largest amount that TWO rovers can carry together
      biggestTwoRoverCapacity = -1;
      for (int i = 0; i < fleet.size(); ++i) {
         for(int j = 0; j < fleet.size(); ++j) {
            twoRoverCapacity = fleet[i].capacity + fleet[j].capacity;
            if (biggestTwoRoverCapacity == -1 || twoRoverCapacity > biggestTwoRoverCapacity) {
               biggestTwoRoverCapacity = twoRoverCapacity;
            }
         }
      }

   - Constant time

     - Oops! If the size of the fleet is five, the outer loop will run five times, and the inner loop will run five times *for each rover* - this means that the code in the middle of the nested loops will run twenty-five times total. If the size of the fleet is ten, then the code in the middle of the nested loops will run one hundred times total. The time the loop takes to run is changing based on the size of the fleet, so this can’t be constant time.

   - Logarithmic time

     - Oops! If the size of the fleet is five, the outer loop will run five times, and the inner loop will run five times *for each rover* - this means that the code in the middle of the nested loops will run twenty-five times total. If the size of the fleet is ten, then the code in the middle of the nested loops will run one hundred times total. The time the algorithm takes to run is growing faster than logarithmic time.

   - Linear time

     - Oops! If the size of the fleet is five, the outer loop will run five times, and the inner loop will run five times *for each rover* - this means that the code in the middle of the nested loops will run twenty-five times total. If the size of the fleet is ten, then the code in the middle of the nested loops will run one hundred times total. The time the algorithm takes to run is growing faster than linear time.

   - Polynomial time

     + Correct! Anytime we see nested loops iterating through vectors, it’s pretty likely that the algorithm will be at least polynomial time. In this case, if the size of the fleet is five, the outer loop will run five times, and the inner loop will run five times *for each rover* - this means that the code in the middle of the nested loops will run twenty-five times total. If the size of the fleet is ten, then the code in the middle of the nested loops will run one hundred times total. This is growing polynomially.

|

.. mchoice:: ch21_01_ex_time_complexity_05

   .. code :: cpp

      // Print out the id the first five rovers (if they exist)
      for(int i = 0; i < 5; ++i) {
         if (fleet.size() <= i) {
            cout << fleet[i].id << endl;
         }
      }

   - Constant time

     + Correct! No matter how big our fleet is, the loop will only run 10 times.

   - Logarithmic time

     - Oops! Think about how long this code would take to run if the fleet had five rovers v. if the fleet had ten rovers.

   - Linear time

     - Oops! Think about how long this code would take to run if the fleet had five rovers v. if the fleet had ten rovers. Even though there's a loop here, the loop isn't going through the entire vector.

   - Polynomial time

     - Oops! Think about how long this code would take to run if the fleet had five rovers v. if the fleet had ten rovers.

|

.. mchoice:: ch21_01_ex_time_complexity_06

   .. code :: cpp

      // How many rovers are selected for the mission?
      numSelected = 0;
      for(int i = 0; i < fleet.size(); ++i) {
         if (fleet[i].isSelected) {
            numSelected += 1;
         }
      }

   - Constant time

     - Oops! If the size of the fleet is five, the loop will run five times. If the size of the fleet is ten, the loop will run ten times. The time the loop takes to run is changing based on the size of the fleet, so this can’t be constant time.

   - Logarithmic time

     - Oops! If the size of the fleet is five, the loop will run five times. If the size of the fleet is ten, the loop will run ten times. This is growing too fast to be logarithmic time.

   - Linear time

     - Correct! Anytime we see a single loop going through an entire vector, it’s pretty likely that the algorithm will be at least linear time. In this case, if the size of the fleet is five, the loop will run five times. If the size of the fleet is ten, the loop will run ten times. This is growing linearly.

   - Polynomial time

     - Oops! If the size of the fleet is five, the loop will run five times. If the size of the fleet is ten, the loop will run ten times. This is growing too slow to be polynomial time.

|

^^^^^^^^^^^^^^^^
Searching
^^^^^^^^^^^^^^^^

Linear search v. binary search

^^^^^^^^^^^^^^^^
Sorting
^^^^^^^^^^^^^^^^

TODO video introducing sorting algorithms and selection sort in particular

Selection sort? (Lobster problem / Parson's problem)

^^^^^^^^^^^^^^^^^^^^^^
Algorithm Efficiency
^^^^^^^^^^^^^^^^^^^^^^

Basic discussion of time/space efficiency / complexity. Super simple examples, e.g., indexing to get an element rather than "counting up to it", finding the min with a loop rather than sorting and finding the first, etc.

Depends on the dataset

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Data Structures: Binary Search Tree
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* 

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.