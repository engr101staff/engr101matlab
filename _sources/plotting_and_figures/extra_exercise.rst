^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Optional Exercise: Creating a Pie Chart of Planets
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
*This section is COMPLETELY optional. We provide it here if you are looking for extra practice with this material on a real-life problem. You can use this to review the material, or come back later and use it for exam prep. We estimate that this exercise will take around 15 minutes to complete.*

We didn't want to let you leave this chapter still thinking about that one awful pie chart. Let's make a better one instead!

For this exercise, use the starter script :code:`AnalyzeStars.m` and the dataset :code:`star_data.xlsx` (which you can download at the top of the plotting chapter).

Create a new pie chart using these steps:

1. Close all previous figures, and create a new figure in your script.
2. Count the number of stars with zero planets. Store this in a variable :code:`zero_counts`. Do the same for stars with one planet, two planets, three planets, four planets, and eight planets. (There are no stars with five, six, seven, or greater than eight planets.)
3. Put all of the counts from step 2 into a vector :code:`all_counts`.
4. Create a vector of labels. Include the labels "zero", "one", "two", "three", "four", and "eight".
5. Create a pie chart of :code:`all_counts`.
6. Try including the labels on the pie chart by including them as a parameter of :code:`pie`. Try also including the labels as a separate legend (you may need to move the location of the legend). Keep whichever version looks better.

.. admonition:: Walkthrough

  .. reveal:: ch06_07_revealwt_pie_charts
  
    .. youtube:: uQp6Au06dt4
      :divid: ch06_07_wt_pie_charts
      :height: 315
      :width: 560
      :align: center
      
    .. tip::
  
      Alternatively, here's a concise way to calculate :code:`all_counts` using a single line of code:
  
      .. code-block:: matlab
  
        all_counts = sum(planets == [0 1 2 3 4 8]);
