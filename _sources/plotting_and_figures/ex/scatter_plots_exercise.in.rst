For this exercise, use the starter script :code:`AnalyzeStars.m` and the dataset :code:`star_data.xlsx` (which you can download at the top of this chapter).

.. tip::
    If you want to create this scatter plot in the same script as we created the previous scatter plot in, you will need to create a new figure for the new plot. To do this, before doing the steps below, call :code:`figure();` in your MATLAB script. This tells MATLAB that you are creating a new plot, and it will put it in a new figure, and the two plots won't overlap.

Create a new scatter plot using these steps:

1. Select all the elements of :code:`mass` where the mass doesn't equal 0 and the corresponding magnitude doesn't equal 0. Save this in a variable :code:`selected_mass`.
2. Select all the elements of :code:`magnitude` where the corresponding mass doesn't equal 0 and the magnitude doesn't equal 0. Save this in a variable :code:`selected_magnitude`.
3. Plot a scatter graph of :code:`selected_mass` vs. :code:`selected_magnitude`.
4. Add appropriate labels to the x-axis and y-axis.
5. Turn the grid lines on.

.. shortanswer:: ch06_02_creating_scatter_plot

  Paste in a copy of your completed :file:`AnalyzeStars.m` script file.
  
(walkthrough video)
