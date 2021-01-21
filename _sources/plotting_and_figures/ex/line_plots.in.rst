For the following video, make sure that you've downloaded :code:`InternetUsers.m` from the File Download box above. Follow along with the video using this starter script; the exercise after the video will ask you to make some additional changes.

(video going through plotting Internet and Facebook users)

Let's review some of the commands that we used to create line plots. If we have a vector of x-values (say, :code:`internet_years`) and a vector of y-values (say, :code:`internet_users`), we can create a line plot.

.. code-block:: matlab

  plot(internet_years, internet_users);
  
We can add a title, x-axis and y-axis labels, and a legend. In this example, we are placing the legend in the "Northwest" (e.g., upper left) corner of the plot.

.. code-block:: matlab

    title('Growth in Internet Users');
    xlabel('Year');
    ylabel('Number of Users (millions)');
    legend("Internet Users", "Location", "Northwest");
    
We can also customize the line style, marker type, and color for the plotted line. For example, the following example uses a dashed, blue line with circles at the data points. Refer to the documentation for :code:`plot` for more customization examples.

.. code-block:: matlab

    plot(internet_years, internet_users, 'b--o');
    
If we want to plot two lines on the same graph (e.g., Internet users *and* Facebook users), there are two ways to do it. First, we can give additional arguments to the :code:`plot` function.

.. code-block:: matlab

    plot(internet_years, internet_users, facebook_years, facebook_users);
    
Second, we can create a :code:`figure` and use :code:`hold on` to call :code:`plot` multiple times. (Use :code:`hold off` to turn off this behavior.)

.. code-block:: matlab

    figure();
    plot(internet_years, internet_users);
    hold on;
    plot(facebook_years, facebook_users);
