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

* The name of each star.
* The distance of each star from Earth in light-years.
* The mass of each star, which is measured using the Sun as a reference point (e.g., the Sun has a mass of 1, and every other star has a mass relative to this).
* The apparent magnitude measures how bright each star is as observed from Earth. The lower the number is, the brighter the star appears. That's why the Sun has such a low value (-26.74) - it's clearly the brightest object in the sky!
* The number of confirmed planets orbiting each star (hello, Proxima b).
* The stellar class of each star. The stellar class is a classification system based on the temperature of the star (e.g., red dwarfs are much cooler than white dwarfs).

|

.. image:: img/star_life.jpg
  :width: 560
  :align: center
  :alt: The life and death of a star.
  
*A diagram showing how some dwarf stars are formed. Right-click and open in a new tab to enlarge.*
  
|

An important thing to note about this data: some of the stars don't have information about their mass or magnitude. In those cases, I filled in the missing data with a 0 value. When you work with the mass and magnitude data, you'll want to eliminate all of the stars that have a 0 in those categories. You can do this using logical indexing.

We can make some really neat plots with all of this data. Make sure that you've downloaded :code:`AnalyzeStars.m` from the beginning of this chapter. We will use this as a starter script for making plots.

.. youtube:: 0W1MoVqHSOU
  :divid: ch06_04_vid_scatter_plots
  :height: 315
  :width: 560
  :align: center

|

In the previous video, we read in our data from an Excel file and used it to create a scatter plot. In general, when we are plotting a dataset, we will take the following steps:

1. Input data (for example, from a :code:`.csv` file or an Excel file).
2. Extract data into vectors.
3. Perform calculations on the data.
4. Display data in a plot.

We specifically created a scatter plot. If we have a vector of x-values (say, :code:`selected_mass`) and a vector of y-values (say, :code:`selected_planets`), we can create a scatter plot.

.. code-block:: matlab

  scatter(selected_mass, selected_planets);
  
.. tip::

  When should you use a scatter plot, and when should you use a line plot?
  
  Use a line plot when you want to connect your data points to form a continuous line. This can help you visually interpolate what the data would look like between your data points, where you don't actually have any data to look at. It also gives you a good sense of which way the data is trending.
  
  Use a scatter plot when you want to show your data points without connecting them. This can be good when you are showing a lot of data points, and connecting them would make a crazy-looking line. A scatter plot can be effective when you are showing raw data, and you want to look at where there is a high density of data points and where is a low density.
  
We can set the range (e.g., the minimum and maximum values) of the x-axis and y-axis using the following commands.

.. code-block:: matlab

    xlim([0, 3]);
    ylim([-1, 9]);
    
We can also display the grid on our plots using :code:`grid on` (similarly, :code:`grid off` turns off the grid).

.. mchoice:: ch06_02_ex_plot
  :answer_a: plot(x_ordered, y_ordered) and plot(x_unordered, y_unordered) will give you the same result.
  :answer_b: When you run plot(x_unordered, y_unordered), the plot automatically switches from a line plot to a scatter plot.
  :answer_c: plot(x_unordered, y_unordered) appears to cross back over itself.
  :answer_d: When you run plot(x_unordered, y_unordered), the plot switches axes to keep the plot a mathematical function.
  :correct: c
  :feedback_a: Oops! Try running this in MATLAB - the plot is not the same.
  :feedback_b: Oops! Unless you tell MATLAB to switch plotting styles, it will not switch.
  :feedback_c: Correct! MATLAB plots in the order of the vector so having the series out of order will result in an odd-looking line graph.
  :feedback_d: Oops! MATLAB will not switch axes without any prompting.


    Consider the following vectors.

  .. code-block:: matlab
  
    x_ordered = [ 1, 2, 3, 4, 5];
    y_ordered = [10,20,30,40,50];
    
    x_unordered = [ 3, 5, 2, 1, 4];
    y_unordered = [30,50,20,10,40];
    

  In the above code, :code:`x_unordered` and :code:`y_unordered` contain the same pairings as :code:`x_ordered` and :code:`y_ordered`, but they are in a different order. If you call :code:`scatter(x_ordered, y_ordered)` and :code:`scatter(x_unordered, y_unordered)`, you will get the same result. But what if you call :code:`plot(x_ordered, y_ordered)` and :code:`plot(x_unordered, y_unordered)`? Will the two calls to :code:`plot` give you the same result? (If you're not sure, try it out in MATLAB!)
