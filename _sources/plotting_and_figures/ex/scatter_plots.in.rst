Now that we've seen some of the basics of plotting, let's use a larger dataset and make some scatter plots! You may have noticed that in the previous exercise, the data was stored in the MATLAB script in vectors. As we saw in Ch. 3, this can cause problems. For instance, what if I had accidentally mistyped a number when I was typing my data into the script? A better way to handle data is to store it in a separate data file, and then read it into your MATLAB script.

For the next few examples, we're going to work with a dataset of 75 known star systems within 16.3 light-years of Earth. (Of great interest, this dataset includes Proxima Centauri, the closest star to the sun, and the star that our planet Proxima b orbits!) This dataset is adapted from this `Wikipedia chart <https://en.wikipedia.org/wiki/List_of_nearest_stars_and_brown_dwarfs>`_.

|

.. image:: img/proxima_centauri.jpg
  :width: 250
  :align: center
  :alt: An image of Proxima Centauri taken by the Hubble Space Telescope in 2013. The bright lines are diffraction spikes (lines radiating from bright light sources).
  
*An image of Proxima Centauri taken by the Hubble Space Telescope in 2013. The bright lines are diffraction spikes (lines radiating from bright light sources).*

|

Open up the dataset file (:code:`star_data.xlsx`) in Excel, Numbers, or a similar program. You'll see lots of interesting data about stars contained here! Here's what's in the dataset:

* The **name** of each star.
* The **distance** of each star from Earth in light-years.
* The **mass** of each star, measured using the Sun as a reference point (e.g., the Sun has a mass of 1, and every other star has a mass relative to this).
* The **apparent magnitude** measures how bright each star is as observed from Earth. The lower the number, the brighter the star appears. That's why the Sun has such a low value (-26.74) - it's clearly the brightest object in the sky!
* The number of **confirmed planets** orbiting each star (hello, Proxima b).
* The **stellar class** of each star. The stellar class is a classification system based on the temperature of the star (e.g., red dwarfs are much cooler than white dwarfs).

|

.. image:: img/star_life.jpg
  :width: 560
  :align: center
  :alt: The life and death of a star.
  
*A diagram showing how some dwarf stars are formed. Right-click and open in a new tab to enlarge.*
  
|

.. tip:: 
  An important thing to note about this data: some of the stars don't have information about their mass or magnitude. In those cases, I filled in the missing data with a 0 value. When you work with the mass and magnitude data, you'll want to eliminate all of the stars that have a 0 in those categories. You can do this using **logical indexing**.

We can make some really neat plots with all of this data. Make sure that you've downloaded :code:`AnalyzeStars.m` from the beginning of this chapter. We will use this as a starter script for making plots.

.. youtube:: 0W1MoVqHSOU
  :divid: ch06_04_vid_scatter_plots
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

  In general, when we are plotting a dataset, we will take the following steps:

  1. Input data (for example, from a :code:`.csv` file or an Excel file).
  2. Extract data into vectors.
  3. Perform calculations on the data.
  4. Display data in a plot.

  We can create a scatter plot using :code:`scatter`. We can set the range (e.g., the minimum and maximum values) of the x-axis and y-axis using the :code:`xlim` and :code:`ylim`. We can also display the grid on our plots using :code:`grid on` (similarly, :code:`grid off` turns off the grid).


When should you use a scatter plot, and when should you use a line plot?
  
**Use a line plot when you want to connect your data points to form a continuous line.** This can help you visually interpolate what the data would look like between your data points, where you don't actually have any data to look at. It also gives you a good sense of which way the data is trending.
  
**Use a scatter plot when you want to show your data points without connecting them.** This can be good when you are showing a lot of data points, and connecting them would make a crazy-looking line. A scatter plot can be effective when you are showing raw data, and you want to look at where there is a high density of data points and where is a low density.

.. mchoice:: ch06_02_ex_plot
  :answer_a: A and B will give the same result.
  :answer_b: When you run B, the plot automatically switches from a line plot to a scatter plot.
  :answer_c: B appears to cross back over itself.
  :answer_d: When you run B, the plot switches axes to keep the plot a mathematical function.
  :correct: c
  :feedback_a: Oops! Try running this in MATLAB - the plot is not the same.
  :feedback_b: Oops! Unless you tell MATLAB to switch plotting styles, it will not switch.
  :feedback_c: Correct! MATLAB plots in the order of the vector so having the series out of order will result in an odd-looking line graph.
  :feedback_d: Oops! MATLAB will not switch axes without any prompting.


    Consider the following vectors.

  .. code-block:: matlab
  
    x_ordered = [1 2 3 4 5];
    y_ordered = [3 20 16 9 19];

    x_unordered = [1 4 5 3 2];
    y_unordered = [3 9 19 16 20];

  In the above code, :code:`x_unordered` and :code:`y_unordered` contain the same pairings as :code:`x_ordered` and :code:`y_ordered`, but they are in a different order. If you call :code:`scatter(x_ordered, y_ordered)` and :code:`scatter(x_unordered, y_unordered)`, you will get the same result.

  Consider the following two calls of :code:`plot`:

  **A**
  
  .. code-block:: matlab

    plot(x_ordered, y_ordered)

  **B**

  .. code-block:: matlab

    plot(x_unordered, y_unordered)

  Will **A** and **B** give the same result? (If you're not sure, try it out in MATLAB!)
