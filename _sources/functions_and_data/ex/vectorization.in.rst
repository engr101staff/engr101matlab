Now that we've created the :code:`ESP()` function, let's see how we can use it. If you want to follow along with the video, you can download :code:`site_samples.csv` from the top of the chapter.

.. youtube:: HEBnzRdsQbg
    :divid: ch03_03_vid_data_files
    :height: 315
    :width: 560
    :align: center
    

.. admonition:: Video Recap

    We can organize our data by putting it in vectors, where each column corresponds to a different variable, and each row corresponds to a different data sample.

    A **vectorized function** works on vectors and matrices, as well as scalars. The function's operation is applied element-by-element. When vectorizing a function, don’t forget to use the dot in your operators, so they work with vectors (e.g., :code:`.*` rather than :code:`*`).

    :code:`csvread` is a function that loads a comma-separated value (CSV) file into your program. The input to the function is the name of the file that you want to load, and the output is a matrix with the data. Remember that :code:`csvread` can only handle numeric data, so if there is a header row in the file with text data, we want MATLAB to skip the first row of the file. For instance, to load the file :code:`site_samples.csv` and skip the first row, we use the statement:

    .. code-block:: matlab

        data = csvread('site_samples.csv', 1, 0)

    The 1 indicates that MATLAB should skip 1 row, and the 0 indicates that MATLAB should skip 0 columns. (You can change these numbers if you want to skip a different number of rows or columns.)

