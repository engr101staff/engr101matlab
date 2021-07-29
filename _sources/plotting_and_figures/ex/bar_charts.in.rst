Make sure that you've downloaded :code:`AnalyzeStars.m` and :code:`star_data.xlsx` from the beginning of this chapter. We will use this as a starter script and dataset for making plots.

.. youtube:: RgiNHQ655oM
  :divid: ch06_08_vid_bar_charts
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

    To plot a bar chart with only one bar for each x-value, put your data in a column vector and use :code:`bar`. (The :code:`barh` function works similarly but produces a horizontal bar chart.)
    
    If you want to have multiple bars for each x-value, create multiple column vectors and combine them into a matrix (each row should correspond to a single group of bars).

    If you are going to make a plot multiple times, you can put it in a function to make it easier to call repeatedly. You can also pass parameters into this function to customize the plot.

.. mchoice:: ch06_04_bar_charts
  :answer_a: This isn't problematic.
  :answer_b: Average magnitude and average distance aren't related to each other, so they shouldn't be on the same plot.
  :answer_c: Average magnitude and average distance are measured in different units, so the y-axis isn't the same for both of these.
  :correct: c
  :feedback_a: Oops! Try clicking on some of the other answers to find out why this problematic.
  :feedback_b: Oops! Because these are both characteristics of stars, they are potentially related to each other. There is a stronger answer to this question.
  :feedback_c: Correct! Magnitude and distance have different units of measurement, so plotting them on the same y-axis can be misleading.

  In the previous video, we created a bar chart where we plotted average magnitude and average distance on the same chart. Why is this problematic?