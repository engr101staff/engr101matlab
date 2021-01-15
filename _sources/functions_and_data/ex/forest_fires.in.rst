*This section is COMPLETELY optional. We provide it here if you are looking for extra practice with this material on a real-life problem. You can use this to review the material, or come back later and use it for exam prep. We estimate that this exercise will take around 30-45 minutes to complete.*

.. figure:: img/fire.jpeg
   :width: 400
   :align: center
   :alt: A forest fire rages

   A forest fire rages.

Forest fires are a serious environmental issue. They can create financial and ecological damage, as well as put human lives in danger. We are going to work with a dataset that records various factors related to forest fires in the northeast region of Portugal. You can find out more about this data and how some researchers used it to detect forest fires by looking at `their paper here <http://www3.dsi.uminho.pt/pcortez/fires.pdf>`_. (I've simplified this data slightly from the original data used in the paper.)

Before we start, go ahead and download the data that we're going to work with.

.. admonition:: Data File

  .. list-table::
    :align: left
    :widths: auto

    * - :download:`forest_fires.csv <../_static/functions_and_data/forest_fires.csv>`

      - .. reveal:: forest_fires_csv_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>forest_fires.csv</code>

          .. literalinclude:: ../_static/functions_and_data/forest_fires.csv
            :lines: 1-7
            :append: ...

      - Data file containing information about 517 forest fires.

  .. reveal:: forest_fires_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for MATLAB
    
    .. include:: ../common/matlab_download_instructions.in.rst

Once you download the data file, open up the file and look at (you can open it in Excel, Numbers, or a basic word processor, like Notepad). Each line in the file is data about a single forest fire. There are eight columns of information:

    **index** - A unique identifier for each forest fire (numbered from 1 to 517)

    **month** - The month the forest fire took place (January = 1, February = 2, etc.)
    
    **day** - The day of the week the forest fire took place (Sunday = 1, Monday = 2, etc.)
    
    **temp** - the average temperature in Celsius degrees (ranges from 2.2 to 33.3)
    
    **RH** - the relative humidity as a percentage (ranges from 15% to 100%)
    
    **wind** - the wind speed in km/h (ranges from 0.4 to 9.4)
    
    **rain** - outside rain in mm/:math:`m^2` (ranges from 0 to 6.4)
    
    **area** - the burned area of the forest in ha (ranges from 0 to 1090.84)

One interesting thing we can look at with this data is how two columns of data **correlate** with each other. If two columns have a positive correlation, it means that as the values in one column increase, the values in the second column increase also. If two columns have a negative correlation, it means that as the values in one column decrease, the values in the second column decrease also. We can measure correlation using **Pearson's correlation coefficient r**. This value will be between -1 and 1, where negative values mean there's a negative correlation and positive values mean there's a positive correlation. A value of 0 means that there's no correlation.

To get a sense for how correlation works, let's say that you have two columns of data, **x** and **y**. In each column, you have seven rows of data, and the columns correspond to each other (e.g., the first row of **x** goes with the first row of **y**). You can plot these data points on a graph (each point on the graph is a row of data where the x-value of the point is the value in **x** and the y-value of the point is the value in **y**). Here's a few sample graphs of what this might look like (click for larger image):

.. figure:: img/pearson.png
   :width: 516
   :align: center
   :alt: Sample graphs with their corresponding Pearson correlation values.
   
   Image from Newcastle University.
   
Pearson's correlation (**r**) is shown on each of the graphs above. Notice that the first three graphs have a positive correlation. The larger **r** is, the stronger the correlation. In the middle graph, there is no correlation, and in the last three graphs, there is a negative correlation.

For our data, we are particularly interested in the correlations between environmental factors (e.g., wind, humidity, temperature) and how big the forest fire was (the area column in our dataset). Use this algorithm to write a function that implements Pearson correlation:

1. **Open MATLAB and create a new script called** :code:`ForestFires.m` .

2. In the :code:`ForestFires` script:
    a. Open the data file using :code:`csvread()`. Don't forget to skip the first line of the file (the header row).
    b. Use matrix indexing to put each column of information in a separate vector. For instance, the second column contains the **month** information; store this column in a variable called :code:`month`. Do this for all the columns.

3. **Create a new function file called** :code:`pearson.m` . Fill in the function name, parameters, and return variables. This function should be called :code:`pearson()` and should take two inputs, :math:`x` and :math:`y`, the two columns that we want to calculate correlation between. The output of this function will be :math:`r`, the correlation value.

4. Inside the :code:`pearson()` function, calculate Pearson's correlation:
    a. We'll first create a number of intermediate variables to help us in the final calculation. To start, calculate :math:`n`, the number of items in :math:`x`. Store this in a variable.
    b. Calculate :math:`\sum{xy}`, the sum of the products of :math:`x` and :math:`y`. Store this in a variable.
    c. Calculate :math:`\sum{x}`, the sum of :math:`x`. Store this in a variable.
    d. Calculate :math:`\sum{y}`, the sum of :math:`y`. Store this in a variable.
    e. Calculate :math:`\sum{x^2}`, the sum of the squared :math:`x` values (hint: :math:`x^2` is :math:`x` multiplied by itself). Store this in a variable.
    f. Calculate :math:`\sum{y^2}`, the sum of the squared :math:`y`. Store this in a variable.
    g. Now we'll put it all together. Using the intermediate variables that you've calculated in *a-f*, calculate :math:`r` using this formula:
    
    .. math::
        
        r = \frac{n(\sum{xy}) - (\sum{x})(\sum{y})}{\sqrt{[n\sum{x^2}-(\sum{x})^2][n\sum{y^2}-(\sum{y})^2]}}
    
    (hint: you don't need to calculate the whole formula in one line of code. You can break it down further - for instance, you could calculate the numerator and the denominator separately, and then divide the numerator by the denominator. You could also calculate the denominator in several pieces.)
    
.. tip:
    
    Writing your own function to calculate Pearson gives you a lot of practice in working with functions and matrices, which is why we've presented it here. However, MATLAB also has a built-in function that calculates Pearson correlation, :code:`corrcoef()`. Like our function, it takes two parameters which are vectors of data. So, if you wanted to find out the correlation between :code:`wind` and :code:`area`, you could call the function like this: :code:`corrcoef(wind,area)`. You can also use this function to help you check and debug the function that you are writing!
    
.. tip:

    If your function doesn't work properly, and you are getting stuck, try debugging with a small example. Create two vectors with two elements in them, and then manually calculate the Pearson's correlation by hand. Then, go through your function line by line and make sure that the calculations in your function match the calculations that you've done by hand.
    
5. **Use the** :code:`pearson()` **function to calculate the correlation between different columns of your data:**

*(Remember, this section is COMPLETELY optional. These questions don't count towards your Runestone assignment.)*

.. fillintheblank:: ch05_01_ex_forestFires_01

  What is the correlation between :code:`temp` and :code:`area`?

  - :0.0978: Correct! This is a small positive correlation, which means that as the temperature increases (gets warmer), the area burned by the forest fire increases slightly.
    :x: Nope, try again!

.. fillintheblank:: ch05_01_ex_forestFires_02

  What is the correlation between :code:`RH` and :code:`area`?

  - :-0.0755: Correct! This is a small negative correlation.
    :x: Nope, try again!

.. fillintheblank:: ch05_01_ex_forestFires_03

  What is the correlation between :code:`wind` and :code:`area`?

  - :0.0123: Correct! This is a small positive correlation.
    :x: Nope, try again!

.. fillintheblank:: ch05_01_ex_forestFires_04

  What is the correlation between :code:`rain` and :code:`area`?

  - :-0.0074: Correct! This is a small negative correlation.
    :x: Nope, try again!

.. fillintheblank:: ch05_01_ex_forestFires_05

  Of the four columns that we looked at (:code:`temp`, :code:`RH`, :code:`wind`, and :code:`rain`), which one has the strongest correlation (either positive or negative) with the area burned by the forest fire

  - :temp: Correct! All of them have fairly small correlations, but temperature has the largest correlation of the four that we looked at.
    :x: Nope, try again!

(walkthrough video here)

We have only scratched the surface of what you can do with an interesting dataset like this. Feel free to keep playing around with it. For example, here are some questions that you could ask that you will be able to calculate in MATLAB:

    What month are forest fires most likely to happen?
    
    What day of the week are forest fires most likely to happen?
    
    Is the wind level correlated with the temperature or the humidity?
    
    How much total area was burned by forest fires in the fires recorded here?
    
... and many, many more questions!
