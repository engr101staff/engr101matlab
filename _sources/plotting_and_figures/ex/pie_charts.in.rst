Make sure that you've downloaded :code:`AnalyzeStars.m` and :code:`star_data.xlsx` from the beginning of this chapter. We will use this as a starter script and dataset for making plots.

.. youtube:: 5M7B4UvVZg8
  :divid: ch06_06_vid_pie_charts
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

    We can make a pie chart using :code:`pie`. (This function works with either a vector of counts or a vector of percentages.)

    There are two ways to add labels to our pie chart. We can add the labels directly to the pie chart by passing them as a parameter to :code:`pie`. We can also create a separate legend for the labels.
        
    In MATLAB, figures are used to display graphics in a separate window. There may be several figures visible at any one time. Each figure has a unique number, usually beginning with Figure 1, Figure 2, … The current figure will be the target of the MATLAB display. To manage figures, use the :code:`figure` function. To close the current figure, use :code:`close`. To close all figures, use :code:`close all`. To close a particular Figure *n*, use :code:`close n`.

.. tip::
    Pie charts can sometime be useful, but they can also be deceiving because it can be hard to compare the relative sizes of the different "wedges" in the chart. So, **use pie charts with care**. Also, pie charts are often a really bad way to display data, so consider all your options before you choose a pie chart.

    .. image:: img/bad_pie_chart.png
        :width: 700
        :align: center
        :alt: a terrible looking pie chart

    *Google Slides thought that a pie chart was exactly the right chart type to default to for a column of timestamps. This is definitely not a useful chart.*
    