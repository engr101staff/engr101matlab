The nutrient cycle of Proxima B is not yet fully understood, so our scientists want to check whether the ESP changes over time. To do this, we'll use a dataset with soil samples taken at the same location every day throughout a year.

For simplicitly, we will assume all months have 30 days, such that there are 360 samples total. The data are stored in a file called :file:`daily_samples.csv`.

In this exercise, you'll read in that data using the :code:`csvread()` function and compute the ESP for all daily samples.

.. admonition:: Exercise Files

  Download these files for the exercise.

  .. list-table:: 
    :align: left
    :widths: auto

    * - :download:`daily_samples.csv <../_static/functions_and_data/daily_samples.csv>`

      - .. reveal:: daily_samples_csv_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>daily_samples.csv</code>

          .. literalinclude:: ../_static/functions_and_data/daily_samples.csv
            :lines: 1-7
            :append: ...

      - Data file containing 360 daily soil samples.

    * - :download:`ESP.m <../_static/functions_and_data/ESP.m>`

      - .. reveal:: ESP_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: ESP.m

          .. literalinclude:: ../_static/functions_and_data/ESP.m
            :language: matlab

      - :code:`ESP()` function from earlier.
    
  .. reveal:: monthly_average_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for MATLAB
    
    .. include:: ../common/matlab_download_instructions.in.rst
      

Create a new script called :file:`AnalyzeESP.m` and write code to:

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

  Use the :code:`ESP()` function to compute a vector of ESP values for each of the samples (you should pass in the variables from the previous step). Store the result in a variable called :code:`esp`.

.. Note::

  This kind of script in general is called a "driver" (sometimes "driver script" or "driver program"). Why? It's basically the script that controls and brings together functionality from other parts of the program (e.g. reading in data files or calling functions) to accomplish some task, just like the driver of a car controls the steering wheel, pedals, etc. to get where they're going.

      
.. shortanswer:: ch03_03_ex_data_files

  Paste in a copy of your :file:`AnalyzeESP.m` script.
