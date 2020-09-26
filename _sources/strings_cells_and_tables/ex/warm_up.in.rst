Please ensure you have downloaded the :file:`GreatLakesMaxIceCoverage.xlsx` file (see the "Chapter Files" box above) for this exercise.

Two basic statistical measures of data are the minimum and maximum of the dataset. Recall that MATLAB has built-in functions for finding the maximum and minimum values in a dataset: :code:`max()` and :code:`min()`. Recall, also, that if you use a compound return when calling these functions, you can get both the minimum (or maximum) value and its location in the dataset:

.. image:: img/MaxCompoundReturn.png
  :width: 400
  :align: center
  :alt: The max() function returns both the max value and the index at which it occurred.

|

Open the GreatLakesMaxIceCoverage.xlsx file and inspect it - these are the maximum ice coverage percentages for each year. That is, for each year what was the highest percent of ice coverage achieved during the winter. Write a script that implements the following algorithm:

1. Read in the data from :file:`GreatLakesMaxIceCoverage.xlsx` using the :code:`xlsread` function.
2. For each of the Great Lakes (Superior, Michigan, Huron, Erie, and Ontario), determine what year had the highest maximum ice coverage.
3. For each of the Great Lakes, determine what year had the lowest maximum ice coverage.

TODO