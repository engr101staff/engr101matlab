For this exercise, use the starter script :code:`AnalyzeStars.m` and the dataset :code:`star_data.xlsx` (which you can download at the top of this chapter).

Create a new pie chart using these steps:

1. Close all previous figures, and create a new figure in your script.
2. Count the number of stars with zero planets. Store this in a variable :code:`zero_counts`. Do the same for stars with one planet, two planets, three planets, four planets, and eight planets. (There are no stars with five, six, seven, or greater than eight planets.)
3. Put all of the counts from step 2 into a vector :code:`all_counts`.
4. Create a vector of labels. Include the labels "zero", "one", "two", "three", "four", and "eight".
5. Create a pie chart of :code:`all_counts`.
6. Try including the labels on the pie chart by including them as a parameter of :code:`pie`. Try also including the labels as a separate legend (you may need to move the location of the legend). Keep whichever version looks better.

.. shortanswer:: ch06_03_creating_pie_chart

  Paste in a copy of your completed :file:`AnalyzeStars.m` script file.
  
