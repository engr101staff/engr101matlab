Make sure that you've downloaded :code:`AnalyzeStars.m` and :code:`star_data.xlsx` from the beginning of this chapter. We will use this as a starter script and dataset for making plots.

.. youtube:: 5M7B4UvVZg8
  :divid: ch06_06_vid_pie_charts
  :height: 315
  :width: 560
  :align: center

|

To review what we covered in the video, if we have a vector of counts (e.g., :code:`all_counts`), we can make a pie chart of these counts. (This function also works with a vector of percentages.)

.. code-block:: matlab

    pie(all_counts);


There are two ways to add labels to our pie chart. We can add the labels directly to the pie chart by passing them as a parameter to :code:`pie`.

.. code-block:: matlab

    pie(all_counts, stellar_class_labels);
    
We can also create a separate legend for the labels.

.. code-block:: matlab

    pie(all_counts);
    legend(stellar_class_labels);
    
In MATLAB, figures are used to display graphics in a separate window. There may be several figures visible at any one time. Each figure has a unique number, usually beginning with Figure 1, Figure 2, … The current figure will be the target of the MATLAB display. To manage figures, use the figure function.

.. code-block:: matlab

    % creates a new figure, which becomes the current figure
    figure();

    % sets figure n to be the current figure, creating one if not defined
    figure(n);
    
To close the current figure, use :code:`close`. To close all figures, use :code:`close all`. To close a particular figure n, use :code:`close n`.

.. tip::
    Pie charts can sometime be useful, but they can also be deceiving because it can be hard to compare the relative sizes of the different "wedges" in the chart. So, **use pie charts with care**. Also, pie charts are often a really bad way to display data, so consider all your options before you choose a pie chart.

    .. image:: img/bad_pie_chart.png
        :width: 700
        :align: center
        :alt: a terrible looking pie chart

    *Google Slides thought that a pie chart was exactly the right chart type to default to for a column of timestamps. This is definitely not a useful chart.*
    