Make sure that you've downloaded :code:`AnalyzeStars.m` and :code:`star_data.xlsx` from the beginning of this chapter. We will use this as a starter script and dataset for making plots.

.. youtube:: RgiNHQ655oM
  :divid: ch06_08_vid_bar_charts
  :height: 315
  :width: 560
  :align: center

|

Let's review some of the commands for making bar charts. To plot a bar chart with only one bar for each x-value, put your data in a column vector (e.g., :code:`magnitude_averages`).

.. code-block:: matlab

    bar(magnitude_averages);
    
.. tip::
    The :code:`barh` function works similarly but produces a horizontal bar chart.
    
If you want to have multiple bars for each x-value, create multiple column vectors and combine them into a matrix (each row should correspond to a single group of bars).

.. code-block:: matlab

    bar([magnitude_averages, distance_averages]);
    
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

    
To further customize a plot, use :code:`gca` ("get current axes"). You can call :code:`gca` and store it in a variable, and then you can modify any of the axis characteristics. Here are some examples.

.. code-block:: matlab

    % get current axes in the variable ax
    ax = gca;
    
    % modify via ax, [NOTE, CaseSensitive !!!]
    ax.FontSize = 20;          % Change the font size
    ax.YLim = [0,20];          % Change the y-axis range
    ax.XLim = [0,4];           % Change the x-axis range
    ax.XTickLabel = labels;    % Change the x-tick labels
    ax.YGrid = 'on';           % Turn the y-axis grid on
    ax.GridColor = [1,0,0];    % Change the grid color [R, G, B]
    ax.GridAlpha = 1;          % Grid color on full
    
.. tip::
    When working with :code:`gca`, you can also use the :code:`set` function instead of the dot notation.
    
    .. code-block:: matlab
    
        set(ax,'FontSize',20); % does the same thing as ax.FontSize = 20
        
    In rare cases (or older versions of MATLAB), only the approach using the :code:`set` function will work.
    
.. admonition:: Danger!

    It's tempting to try something like this:
    
    .. code-block:: matlab
    
        gca.FontSize = 20;
        
    This doesn't work! (It actually creates a variable called :code:`gca` that interferes with the regular :code:`gca`. You'll also need to run :code:`clear gca;` before it will work again.)
    
    You always need to "store" the current axes in a variable first:
    
    .. code-block:: matlab
    
        ax = gca;
        ax.FontSize = 20;
        
As we've seen, there's multiple ways to customize a graph in MATLAB: you can directly call functions like :code:`title()` and :code:`legend()`. You can also get the current axes (:code:`gca`) and customize from there. There's yet another way that you can customize MATLAB plots: **graphics objects**.

Plotting functions return graphics objects that can be used to customize the appearance of the plot.

.. code-block:: matlab

    % create a scatterplot
    % store the return graphics object in s
    s = scatter(mass, magnitude);
    
    % modify properties through s
    s.Marker = 'x';
    s.LineWidth = 3;
    s.MarkerEdgeColor = 'red';
    
If you plot more than one thing at a time, you'll get a vector of graphics objects. Index into it to modify properties.

.. code-block:: matlab

    % plot multiple functions
    % store the returned graphics objects in p
    p = plot(internet_years, internet_users, facebook_years, facebook_users)
    
    % modify properties through p
    % index to select which plot
    % the first plot (internet users)
    p(1).LineStyle = ':';
    p(1).Color = 'green';
    p(1).LineWidth = 4;
    
    % the second plot (facebook users)
    p(2).LineStyle = '--';
    p(2).Color = 'red';
    p(2).LineWidth = 2;
    
This only scratches the surface of the kind of customization you can do to your plots in MATLAB! There's so many more options! Here's the truth: *Nobody memorizes all the different kinds of plots and the ways you can customize them.* Refer to online documentation for general guidance, and search online if there's something specific you're looking for.

Here's a few examples of things you can do:

.. image:: img/matlab_plots.png
  :width: 560
  :align: center
  :alt: Many kinds of MATLAB plots.
  
|
  
Refer to `this page <https://www.mathworks.com/help/matlab/creating_plots/types-of-matlab-plots.html>`_ for more info (and even more types of plots!).
