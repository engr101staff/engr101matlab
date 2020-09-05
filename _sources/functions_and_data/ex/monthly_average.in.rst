In this exercise, you'll work with the ESP data from your write a function to compute the average ESP value for a given month.

.. admonition:: Exercise Files

  This exercise uses the same :file:`daily_samples.csv` and :file:`ESP.m` files as the previous one. See above for the download links.

Create a new function file called :file:`monthlyAverage.m`.

  In that file, define the function :code:`monthlyAverage()`. It takes in a vector of 360 ESP values and a month number (e.g. 1 is January, 12 is December) and returns the average of ESP values for samples during the given month. For example, given the :code:`esp` vector, you could call :code:`monthlyAverage(esp, 3)` to compute the average ESP during March (the 3rd month).


  **Step 1**

  To find the range of days to average based on the month (reminder: we're assuming all months have 30 days), use these formulas:

  * :code:`startDay = 30*(month-1) + 1;`
  * :code:`endDay = startDay + 29;`

  **Step 2**

  To compute the average, use MATLAB's built-in :code:`mean()` function on a subvector of the ESP values selected according to the range of days you just computed.

  .. reveal:: ch03_04_hint_ESP_indexing
    :showtitle: Hint
    :hidetitle: Hide Hint

    .. hint::
      
      Use indexing and range notation to select the subvector of values to average. For example, to select values for January, you could write :code:`data(1:30)`. Of course, you don't want to hardcode :code:`1:30` - instead use your variables containing the appropriate :code:`startDay` and :code:`endDay`.

.. shortanswer:: ch03_04_ex_montly_average

  Paste in a copy of your :file:`monthlyAverage.m` function file.

Finally, call your :code:`monthlyAverage()` function at the end of your :file:`AnalyzeESP.m` script to compute and print the average ESP in months 1 and 7. Run the script to find the answer to the question below.

.. mchoice:: ch03_04_ex_ESP_result
  :answer_a: 0.0828
  :answer_b: 0.0998
  :answer_c: 0.0713
  :answer_d: 0.1321
  :correct: b
  :feedback_a: Incorrect.
  :feedback_b: Correct!
  :feedback_c: Incorrect.
  :feedback_d: Incorrect.


  What is the average ESP in month 7?