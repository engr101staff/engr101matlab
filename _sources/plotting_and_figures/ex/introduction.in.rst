*Data, data, data!* As engineers, all of you will be working with data on a regular basis. Maybe you will have empirical results from stress testing a new product, or measurements from how a bridge holds up under high wind speeds, or records of how many new users visited your phone app in the last month. Whatever data you are working with, it's important to be able to visualize your data using graphs and figures. A good graph can show relationships between data that are difficult, if not impossible, to explain with words. Graphs and figures can help you (and your audience) grasp what equations and data actually *mean*.

MATLAB has a great variety of tools to help you make informative graphs. In this chapter, we'll cover making line plots, scatter plots, pie charts, and bar charts. We'll also talk about how to make graphs that accurately represent your data, and are not accidentally misleading. For example, consider this graph:

|

.. image:: img/weather_graph.png
  :width: 560
  :align: center
  :alt: A misleading graph plotting responses to a survey question about favorite seasons.

|
  
.. mchoice:: ch06_01_weather_graph
  :answer_a: The bar for summer should be higher than the bar for spring.
  :answer_b: The bars for summer and winter should be the same height.
  :answer_c: The scale of the y-axis is uneven.
  :answer_d: All of the above
  :correct: d
  :feedback_a: Oops! This is a problem, but do you see more problems in this graph?
  :feedback_b: Oops! This is a problem, but do you see more problems in this graph?
  :feedback_c: Oops! This is a problem, but do you see more problems in this graph?
  :feedback_d: Correct! There are a multitude of problems with this graph.
  
Even though this graph was meant to be informative and interesting, it ended up being misleading because best practices weren't followed. As you create your graphs, it's important to think about what your graphs are communicating and if they are a fair representation of your data. We'll talk more about best practices for graphs in this chapter.
