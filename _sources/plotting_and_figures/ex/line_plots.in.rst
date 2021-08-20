Let's begin by looking at how to make line plots.

For the following video, make sure that you've downloaded :code:`InternetUsers.m` from the beginning of the chapter. Follow along with the video using this starter script; the exercise after the video will ask you to make some additional changes.

.. youtube:: kNECN3_kndw
  :divid: ch06_02_vid_line_plots
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

  We can create a line plot using :code:`plot`. We can add a title, x-axis and y-axis labels, and a legend using the commands :code:`title`, :code:`xlabel`, :code:`ylabel`, and :code:`legend`. We can also customize the line style, marker type, and color for the plotted line (refer to the documentation for :code:`plot` for customization examples).
    
  If we want to plot two lines on the same graph, there are two ways to do it. First, we can give additional arguments to the :code:`plot` function. Second, we can create a :code:`figure` and use :code:`hold on` to call :code:`plot` multiple times. (Use :code:`hold off` to turn off this behavior.)

.. tip::
  
  There is a technical difference between using single quotes and double quotes around words (we'll get to this more in later chapters!), but in many cases they are interchangeable.

Once you've created a plot, you can save it to a file:

.. code:: matlab

  print('myImageFile.png', '-dpng');
