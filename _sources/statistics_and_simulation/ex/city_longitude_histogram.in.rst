This exercise uses :file:`cities.xslx` and :file:`MakeCityLatitudeHistogram.m` (available at the top of the chapter).

Open :file:`MakeCityLatitudeHistogram.m` in MATLAB. We've provided an outline for your code, as well as initial code to read data from the Excel file, :file:`cities.xlsx`, and extract the data into three parallel vectors :code:`pop`, :code:`lat`, and :code:`lon` representing the cities' populations, latitudes, and longitudes, respectively. (Don't worry about how specifically the :code:`xlsread` function works - we'll come back to this in a later chapter.)

In the :file:`MakeCityLatitudeHistogram.m` file, copy and paste the code that makes the latitudes histogram. Make appropriate changes to the copied code to generate a histogram of the longitudes of the cities. Check to see if your longitudes histogram matches our longitudes histogram (the size and bins of your histogram may be a little different, but that's okay). Make sure to update the axes labels appropriately!

.. figure:: img/Histogram_2.png
  :width: 450
  :align: center
  :alt: A histogram showing the distribution of longitudes of the World's most populous cities.

  ..

.. shortanswer:: ch07_04_city_longitude_histogram

  Paste in a copy of your completed :file:`MakeCityLatitudeHistogram.m` script file.