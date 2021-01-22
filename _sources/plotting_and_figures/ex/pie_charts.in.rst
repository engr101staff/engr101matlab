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
    
.. tip::
    The :code:`pie3` function works similarly but produces a 3D pie chart instead.

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

.. mchoice:: ch06_03_ex_figure
  :answer_a: Figure 2 remains unchanged.
  :answer_b: The original Figure 2 was replaced by the new :code:`figure(2)` command.
  :correct: b
  :feedback_a: Oops! Calling :code:`figure(2)` again will overwrite the existing Figure 2.
  :feedback_b: Correct! The original figure gets replaced by MATLAB when you call :code:`figure(2)` a second time.
  
  Consider the following code.

  .. code-block:: matlab

    figure();
    plot(mass, magnitude);

    figure();
    scatter(magnitude, planets);
    
  If you run this script, Figure 2 is a scatter plot of :code:`magnitude` v. :code:`planets`. Now, suppose you type the following into the command window:

  .. code-block:: matlab

    figure(2);
    plot(mass, planets);

  What happened to Figure 2?
