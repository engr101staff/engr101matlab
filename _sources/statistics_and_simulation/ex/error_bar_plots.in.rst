This exercise uses the following files.

- :file:`newBatteryLife.mat`
- :file:`AnalyzeBatteries.m`

Please ensure you have downloaded these exercise files (see the chapter files box at the beginning of this chapter) and placed them in your current MATLAB folder.

Our company has manufactured new batteries that we hope will have better performance. Re-run the above analysis on the new battery data to see if we can make the following claims for the new batteries:

1. Our phones have 3 hours battery life when new.
2. After 2 years, our phones will still have 2 hours of battery life.

First, make a copy of the AnalyzeBatteries.m file and name it :file:`AnalyzeNewBatteries.m`. Then, make appropriate changes to the code in :file:`AnalyzeNewBatteries.m` to implement the following algorithm:

1. Clear old data and close figures
2. Load the MATLAB workspace variables from the :file:`newBatteryLife.mat` file
3. Create an error bar plot with the new battery data.

Customize the plot so that it looks better:

- Set the line width to be 3 for the graphics object (the graphics object is the error bar plot)
- Add the title "Battery Lifetime Performance" 
- Add the x-axis label "Years of Use"
- Add the y-axis label "Full-Charge Battery Life (hours)"
- Use gca to improve the plot:
  - font size = 20
  - x-axis limits of 0 to 7
  - y-axis limits of 0 to 5
  - line width = 2
- Turn the grid on

.. hint::
  You just have to change a few things in the AnalyzeNewBatteries.m file. Most of the code to implement the algorithm is already there because we already wrote the code when we analyzed the original set of batteries. We're doing the same analysis, just on a different set of data, so we shouldn't have to change too much.

Check to see if your plot matches this one (the shape of the plot might be different, but that's okay):

.. figure:: img/NewBatteryPerformance.png
  :width: 450
  :align: center
  :alt: An error-bar plot showing performance of the new set of batteries.

  ..

Based on your analysis, report whether each claim by the company is true or false.

.. mchoice:: ch07_06_ex_error_bar_plots_01
  :answer_a: true
  :answer_b: false
  :correct: a
  :feedback_a: Correct! The mean of the battery lifetimes at 0 years of use is greater than 3 hours, and the lower end of the error bar is also above 3 hours.
  :feedback_b: Incorrect. Look again at the graph, especially when the battery is new (0 years of use).

  Our phones have 3 hours battery life when new.

.. mchoice:: ch07_06_ex_error_bar_plots_02
  :answer_a: true
  :answer_b: false
  :correct: a
  :feedback_a: Correct! The mean of the battery lifetimes at 2 years of use is greater than 2 hours, and the lower end of the error bar is also above 2 hours.
  :feedback_b: Incorrect. Look again at the graph, especially when the battery is at 2 years of use.

  After 2 years, our phones will still have 2 hours of battery life.