.. qnum::
   :prefix: Q
   :start: 1

==================
Functions and Data
==================

^^^^^^^
Warm Up
^^^^^^^

Recall the Exchangeable Sodium Percentage (ESP), which affects the suitability of soil for farming. It is determined as a ratio of several chemical elements present in the soil according to the formula:

.. math::

  ESP = \frac{Na}{K + Ca + Mg + Ca}


Let's say you have many different soil samples taken by the Proxima b probe, and you need to perform the ESP calculation for each. Below is a table of the samples and an approach to writing a *script* that performs the ESP computations.

.. list-table:: 
  :align: left

  * - .. csv-table:: 
        :file: ../_static/functions_and_data/site_samples.csv
        :widths: 20, 20, 20, 20, 20
        :header-rows: 1
        :align: center

    - .. code-block:: matlab

        Na = 10.9; K = 68.2;
        Ca = 25.4; Mg = 13.8;
        display(Na ./ (K + Ca + Mg + Ca));

        Na = 13.8; K = 66.3;
        Ca = 26.4; Mg = 13.2;
        display(Na ./ K + Ca + Mg + Ca);

        Na = 14.3; k = 67.0;
        Ca = 26.7; Mg = 13.0;
        display(Na ./ (K + Ca + Mg + Ca))

        Na = 14.1; K = 72.2;
        Ca = 25.5; Mg = 17.3;
        ...

Is this a good approach? Consider a few questions...

.. tip::
  If you're working on a laptop, you can open this page in two windows side-by-side so that you can view the content above and the questions below at the same time!

.. include:: ex/warm_up_01.in.rst
.. include:: ex/warm_up_02.in.rst
.. include:: ex/warm_up_03.in.rst


.. admonition:: Walkthrough

  .. reveal:: walkthrough_1

    .. youtube:: Tu4ZUHTl65w
      :divid: yt2
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^
Defining Custom Functions
^^^^^^^^^^^^^^^^^^^^^^^^^

.. youtube:: 0l2W4gd9gMU
  :divid: yt3
  :height: 315
  :width: 560
  :align: center
  
-------------------------
Exercise: Function Basics
-------------------------

Which of these are correct implementations of a function :code:`square()` that returns the square of a number (e.g. :code:`x * x`)?


.. list-table:: 
  :align: left

  * - .. mchoice:: functions_and_data_02_01
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: a
        :feedback_a: Yep, this one is correct! The variable s is computed by multiplying the input x by itself, and the result is returned since s is designated as the return variable.
        :feedback_b: This one is actually ok. The variable s is computed by multiplying the input x by itself, and the result is returned since s is designated as the return variable.

        .. code-block:: matlab

          function [ s ] = square( x )
            s = x .* x;
          end

    - .. mchoice:: functions_and_data_02_02
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: b
        :feedback_a: This one has an error. Check the input parameter and return variable...something's not quite right there.
        :feedback_b: You're right, this one has an error. In particular, the input and return variables are switched around in the function header. s should be the return variable (output) and x should be the input parameter.

        .. code-block:: matlab

          function [ x ] = square( s )
            s = x .* x;
          end

  * - .. mchoice:: functions_and_data_02_03
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: b
        :feedback_a: This one has an error. It has to do with the way MATLAB specifies what gets returned from a function.
        :feedback_b: You're right, this one has an error. Some programming languages use an explicit return statement, but in MATLAB you never have to type "return". Instead, the function should specify what variables to return inside of the square brackets [ ].

        .. code-block:: matlab

          function [  ] = square( x )
            return = x .* x;
          end

    - .. mchoice:: functions_and_data_02_04
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: b
        :feedback_a: This one has an error. It has to do with the syntax in the function header.
        :feedback_b: You're right, this one has an error. The return variable must be specified with square brackets [ ] rather than parentheses ( ). MATLAB and other programming languages are pretty strict about syntax, but the good news is MATLAB will generally underline syntax errors as you're writing the code so that you can fix it.

        .. code-block:: matlab

          function [  ] = square( x )
            return = x .* x;
          end

  * - .. mchoice:: functions_and_data_02_05
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: a
        :feedback_a: Yep, this one is correct! It is fine to use the same variable for input and to return (for output). x starts with the input value, and is then updated inside the function before its new value is returned.
        :feedback_b: This one is actually ok. It is fine to use the same variable for input and to return (for output). x starts with the input value, and is then updated inside the function before its new value is returned.

        .. code-block:: matlab

          function [ x ] = square( x )
            x = x .* x;
          end

    - .. mchoice:: functions_and_data_02_06
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: b
        :feedback_a: This one has a sneaky mistake. It actually computes and returns the right value, but it does not follow best design practices for functions... See if you can identify what's wrong on your own, or select "incorrect" and check the answer to see an explanation.
        :feedback_b: Although this implementation computes the right answer, it doesn't suppress output for individual computations. We don't want noisy functions, so each of the assignments in the implementation should end with a semicolon ; to suppress the output.

        .. code-block:: matlab

          function [  ] = square( x )
            return = x .* x;
          end

.. admonition:: Walkthrough

  .. reveal:: walkthrough_2

    .. youtube:: Tu4ZUHTl65w
      :divid: Tu4ZUHTl65w123abcwaaasdfadsfas
      :height: 315
      :width: 560
      :align: center


^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Vectorization and Data Files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. youtube:: K1VyBJ4wkgg
    :height: 315
    :width: 560
    :align: center

----------------------------------
Exercise: Reading Soil Sample Data
----------------------------------

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

  This kind of script in general is called a "driver" (sometimes "driver script" or "driver program". Why? It's basically the script that controls and brings together functionality from other parts of the program (e.g. reading in data files or calling functions) to accomplish some task, just like the driver of a car controls the steering wheel, pedals, etc. to get where they're going.

      
.. shortanswer:: monthly_average_driver

  Paste in a copy of your :file:`AnalyzeESP.m` script.

.. admonition:: Walkthrough

  .. reveal:: walkthrough_3

    .. youtube:: Tu4ZUHTl65w
      :divid: Tu4ZUHTl65w123abcwaahhhh
      :height: 315
      :width: 560
      :align: center


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Built-in Aggregator Functions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. youtube:: K1VyBJ4wkgg
    :divid: asldfjasfhk
    :height: 315
    :width: 560
    :align: center

--------------------------------
Exercise: Monthly Average of ESP
--------------------------------

In this exercise, you'll work with the ESP data from your write a function to compute the average ESP value for a given month.

.. admonition:: Exercise Files

  This exercise uses the same :file:`daily_samples.csv` and :file:`ESP.m` files as the previous one. See above for the download links.

Create a new function file called :file:`monthlyAverage.m`.

  In that file, define the function :code:`monthlyAverage()`. It takes in a vector of 360 ESP values and a month number (e.g. 1 is January, 12 is December) and returns the average of ESP values for samples during the given month. For example, given the :code:`esp` vector, you could call :code:`monthlyAverage(esp, 3)` to compute the average ESP during March (the 3rd month).


  **Step 1**

  To find the range of days to average based on the month, use these formulas:

  * :code:`startDay = 30*(month-1) + 1;`
  * :code:`endDay = startDay + 29;`

  **Step 2**

  To compute the average, use MATLAB's built-in :code:`mean()` function on a subvector of the ESP values selected according to the range of days you just computed.

  .. reveal:: monthly_average_4_hint
    :showtitle: Hint
    :hidetitle: Hide Hint

    .. hint::
      
      * Use indexing and range notation to select the subvector of values to average. For example, to select values for January, you could write :code:`data(1:30)`. Of course, you don't want to hardcode :code:`1:30` - instead use your variables containing the appropriate :code:`startDay` and :code:`endDay`.

.. shortanswer:: monthly_average_function

  Paste in a copy of your :file:`monthlyAverage.m` function file.

Finally, call your :code:`monthlyAverage()` function at the end of your :file:`AnalyzeESP.m` script to compute and print the average ESP in months 1 and 7. Run the script to find the answer to the question below.

.. mchoice:: monthly_average_final
  :answer_a: TODO Incorrect Number
  :answer_b: TODO Correct Number
  :answer_c: TODO Incorrect Number
  :answer_d: TODO Incorrect Number
  :correct: b

  What is the average ESP in month 7?

.. admonition:: Walkthrough

  .. reveal:: walkthrough_4

    .. youtube:: Tu4ZUHTl65w
      :divid: Tu4ZUHTl65w123abcwaahhhh222
      :height: 315
      :width: 560
      :align: center


^^^^^^^^^^^^^^^^^^^^
Scope and Parameters
^^^^^^^^^^^^^^^^^^^^

.. youtube:: K1VyBJ4wkgg
    :divid: lsadfhlak
    :height: 315
    :width: 560
    :align: center

------------------------------
Exercise: Scope and Parameters
------------------------------

.. list-table:: 
  :align: left

  * - .. mchoice:: scope_and_parameters_02_01
        :answer_a: TODO
        :answer_b: TODO
        :answer_c: TODO
        :answer_d: TODO
        :correct: a
        :feedback_a: TODO
        :feedback_b: TODO
        :feedback_c: TODO
        :feedback_d: TODO

        TODO

    - .. mchoice:: scope_and_parameters_02_02
        :answer_a: TODO
        :answer_b: TODO
        :answer_c: TODO
        :answer_d: TODO
        :correct: a
        :feedback_a: TODO
        :feedback_b: TODO
        :feedback_c: TODO
        :feedback_d: TODO

        TODO

  * - .. mchoice:: scope_and_parameters_02_03
        :answer_a: TODO
        :answer_b: TODO
        :answer_c: TODO
        :answer_d: TODO
        :correct: a
        :feedback_a: TODO
        :feedback_b: TODO
        :feedback_c: TODO
        :feedback_d: TODO

        TODO

    - .. mchoice:: scope_and_parameters_02_04
        :answer_a: TODO
        :answer_b: TODO
        :answer_c: TODO
        :answer_d: TODO
        :correct: a
        :feedback_a: TODO
        :feedback_b: TODO
        :feedback_c: TODO
        :feedback_d: TODO

        TODO

.. admonition:: Walkthrough

  .. reveal:: scope_and_parameters_wt

    .. youtube:: Tu4ZUHTl65w
      :divid: afdasfdsagasdgfasdf
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^
Unit Testing
^^^^^^^^^^^^^^^^^^^^

.. youtube:: K1VyBJ4wkgg
    :divid: lsadffasfsdfhlak
    :height: 315
    :width: 560
    :align: center

------------------------------
Exercise: Unit Testing
------------------------------

.. list-table:: 
  :align: left

  * - .. mchoice:: unit_testing_02_01
        :answer_a: TODO
        :answer_b: TODO
        :answer_c: TODO
        :answer_d: TODO
        :correct: a
        :feedback_a: TODO
        :feedback_b: TODO
        :feedback_c: TODO
        :feedback_d: TODO

        TODO

    - .. mchoice:: unit_testing_02_02
        :answer_a: TODO
        :answer_b: TODO
        :answer_c: TODO
        :answer_d: TODO
        :correct: a
        :feedback_a: TODO
        :feedback_b: TODO
        :feedback_c: TODO
        :feedback_d: TODO

        TODO

.. admonition:: Walkthrough

  .. reveal:: unit_testing_wt

    .. youtube:: Tu4ZUHTl65w
      :divid: sdfasfadasdf
      :height: 315
      :width: 560
      :align: center

.. Use the file :download:`daily_samples.csv <../_static/functions_and_data/daily_samples.csv>` for this exercise. (:doc:`Download Instructions<../common/matlab_download_instructions>`)

.. TODO:
.. should we be suggesting they add clear all; 
