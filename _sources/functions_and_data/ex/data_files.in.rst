The nutrient cycle of Proxima B is not yet fully understood, so our scientists want to check whether the ESP changes over time. To do this, we'll use a dataset with soil samples taken at the same location every day throughout a year.

For simplicity, we will assume all months have 30 days, such that there are 360 samples total. The data are stored in a file called :file:`daily_samples.csv`.

In this exercise, you'll read in that data using the :code:`csvread()` function and compute the ESP for all daily samples. Make sure that you've downloaded :code:`daily_samples.csv` and :code:`esp.m` from the beginning of the chapter.

Create a new script called :file:`AnalyzeESP.m` and write code that follows these steps:

**Step 1**

Read the data from :file:`daily_samples.csv` into a variable called :code:`dailySamples` using the :code:`csvread()` function. Make sure to skip the first row, which contains the column headings.

**Step 2**

Set :code:`Na`, :code:`K`, :code:`Ca`, and :code:`Mg` variables to hold the data from each corresponding column in the :code:`dailySamples` matrix.

.. reveal:: monthly_average_2_hint
  :showtitle: Hint
  :hidetitle: Hide Hint

  .. hint::
  
    Use row/column indexing to select each column from :code:`dailySamples`. For example, to find the sodium values, you would use :code:`Na = dailySamples(:,2)` to assign the first column data into :code:`Na`. (If you skipped the first column using :code:`csvread()` above, it would be :code:`Na = dailySamples(:,2)` instead.)

**Step 3**

Use the :code:`esp()` function to compute a vector of ESP values for each of the samples (you should pass in the variables from the previous step). Store the result in a variable called :code:`espValues`.

.. Note::

  This kind of script in general is called a **driver** (sometimes **driver script** or **driver program**). Why? It's basically the script that controls and brings together functionality from other parts of the program (e.g. reading in data files or calling functions) to accomplish some task, just like the driver of a car controls the steering wheel, pedals, etc. to get where they're going.

      
.. shortanswer:: ch03_03_ex_data_files

  Paste in a copy of your :file:`AnalyzeESP.m` script.
