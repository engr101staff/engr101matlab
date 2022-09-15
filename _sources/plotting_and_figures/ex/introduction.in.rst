As an engineer, you will be working with data on a regular basis. Maybe you will have empirical results from stress testing a new product, or measurements from how a bridge holds up under high wind speeds, or records of how many new users visited your phone app in the last month. Whatever data you have, it's important to be able to visualize your data using graphs and figures. A good graph can show relationships between data that are difficult, if not impossible, to explain with words. Graphs and figures can help you (and your audience) grasp what equations and data actually *mean*.

MATLAB has many tools to help you make informative graphs. In this chapter, we'll cover the basics of line plots, scatter plots, pie charts, and bar charts. We'll also talk about how to make graphs that accurately represent your data, and are not accidentally misleading. For example, consider this graph:

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
  :correct: a,b,c
  :feedback_a: Summer has a value of 17%, while spring only has a value of 13%; this should be reflected in the heights of the bars.
  :feedback_b: Both summer and winter have values of 17%, yet they have different bar heights; this is confusing.
  :feedback_c: The heights of the bars don't accurately reflect the values of the bars.
  
  What is problematic with the above plot? Select all that apply.
  
Even though this graph was meant to be informative and interesting, it ended up being misleading because best practices weren't followed. As you create your graphs, it's important to think about what your graphs are communicating and if they are a fair representation of your data. We'll talk more about best practices for graphs in this chapter.
