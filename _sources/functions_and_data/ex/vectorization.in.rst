.. youtube:: TiyXzP96r1U
    :divid: ch03_03_vid_data_files
    :height: 315
    :width: 560
    :align: center
    
|

.. tip::
    To recap, :code:`csvread` is a function that loads a comma-separated value (CSV) file into your program. The input to the function is the name of the file that you want to load, and the output is a matrix with the data. Remember that :code:`csvread` can only handle numeric data, so if there is a header row in the file with text data, we want MATLAB to skip the first row of the file. For instance, to load the file :code:`site_samples.csv` and skip the first row, use :code:`data = csvread('site_samples.csv', 1, 0)`. The 1 indicates that MATLAB should skip 1 row, and the 0 indicates that MTALAB should skip 0 columns. (You can change these numbers if you want to skip a different number of rows or columns.)

