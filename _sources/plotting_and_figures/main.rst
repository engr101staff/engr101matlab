.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/matlab.css">
   <script src="../_static/common/js/common3.js"></script>
   <script src="../_static/common/js/matcrab-exercises2.bundle.js"></script>

====================
Plotting and Figures
====================

|

.. image:: img/img13.png
  :width: 400
  :align: center
  :alt: Meme: Yes, Yes, Excellent.

.. raw:: html

    <center><i>No, not that kind of plotting.</i></center>
    
|

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



.. include:: ex/introduction.in.rst

.. admonition:: Chapter Files

  We’ll be using several files throughout this chapter’s exercises. It might be helpful to go ahead and download each of them now and move them to your current folder in MATLAB. (It’s also a good idea to go ahead and create a new folder for this chapter and use that as your current folder, so that you don’t clutter up whatever else you were working on.)

  .. list-table::
    :align: left
    :widths: auto

    * - :download:`InternetUsers.m <../_static/plotting_and_figures/InternetUsers.m>`

      - .. reveal:: InternetUsers_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>InternetUsers.m</code>

          .. literalinclude:: ../_static/plotting_and_figures/InternetUsers.m
            :lines: 1-24
            :append: ...

      - Starter script for plotting the number of Internet and Facebook users
      
    * - :download:`star_data.xlsx <../_static/plotting_and_figures/star_data.xlsx>`

      - .. reveal:: star_data_xlsx_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>star_data.xlsx</code>

          .. image:: img/star_data_xlsx_preview.png
            :width: 400
            :align: center

      - Data on 75 known star systems within 16.3 lightyears
      
    * - :download:`AnalyzeStars.m <../_static/plotting_and_figures/AnalyzeStars.m>`

      - .. reveal:: AnalyzeStars_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>AnalyzeStars.m</code>

          .. literalinclude:: ../_static/plotting_and_figures/AnalyzeStars.m
            :lines: 1-32
            :append: ...

      - Starter script for analyzing the star data


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Line Plots
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ex/line_plots.in.rst

------------------------------------
Exercise: Customizing Line Plots
------------------------------------

.. include:: ex/line_plots_exercise.in.rst
  
.. admonition:: Walkthrough

  .. reveal:: ch06_03_revealwt_line_plots
  
    .. youtube:: p8CcGFVh2w4
      :divid: ch06_03_wt_line_plots
      :height: 315
      :width: 560
      :align: center
  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Scatter Plots
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ex/scatter_plots.in.rst
  
------------------------------------
Exercise: Creating a Scatter Plot
------------------------------------

.. include:: ex/scatter_plots_exercise.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch06_05_revealwt_scatter_plots
  
    .. youtube:: J-I3DqH147M
      :divid: ch06_05_wt_scatter_plots
      :height: 315
      :width: 560
      :align: center


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Pie Charts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ex/pie_charts.in.rst

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Bar Charts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ex/bar_charts.in.rst

^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The :code:`subplot` Function
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

We've seen how to make a plot that has two sets of data on it, but what if you want to plot those two sets of data on separate graphs in the same figure? You can use MATLAB's :code:`subplot` function to do this.

.. youtube:: MdAAXuvl4Ck
  :divid: ch06_01_vid_subplot
  :height: 315
  :width: 560
  :align: center

|

----------------------------------
Exercise: :code:`subplot` Practice
----------------------------------

.. fillintheblank:: ch06_06_ex_subplot_01

  Consider the grid below. Type the :code:`subplot` function call that would be required to create the grid *and* select the cell labeled **A6**. Your answer should be in the format of: :code:`subplot(x,y,z)` with your own values replacing :code:`x`, :code:`y`, and :code:`z`.

  .. figure:: img/SubA.png
    :width: 250
    :align: center

    ..

  - :[ ]*subplot[ ]*\([ ]*3[ ]*,[ ]*3[ ]*,[ ]*6[ ]*\)[ ]*: Correct!
    :x: No, try again.

.. fillintheblank:: ch06_06_ex_subplot_02

  Consider the grid below. Type the :code:`subplot` function call that would be required to create the grid *and* select the cell labeled **A3**. Your answer should be in the format of: :code:`subplot(x,y,z)` with your own values replacing :code:`x`, :code:`y`, and :code:`z`.

  .. figure:: img/SubA.png
    :width: 250
    :align: center

    ..

  - :[ ]*subplot[ ]*\([ ]*3[ ]*,[ ]*3[ ]*,[ ]*8[ ]*\)[ ]*: Correct!
    :x: No, try again.

.. fillintheblank:: ch06_06_ex_subplot_03

  Consider the grid below. Type the :code:`subplot` function call that would be required to create the grid *and* select the cell labeled **B5**. Your answer should be in the format of: :code:`subplot(x,y,z)` with your own values replacing :code:`x`, :code:`y`, and :code:`z`.

  .. figure:: img/SubB.png
    :width: 250
    :align: center

    ..

  - :[ ]*subplot[ ]*\([ ]*3[ ]*,[ ]*2[ ]*,[ ]*5[ ]*\)[ ]*: Correct!
    :x: No, try again.

.. fillintheblank:: ch06_06_ex_subplot_04

  Consider the grid below. Type the :code:`subplot` function call that would be required to create the grid *and* select the cell labeled **C1**. Your answer should be in the format of: :code:`subplot(x,y,z)` with your own values replacing :code:`x`, :code:`y`, and :code:`z`.

  .. figure:: img/SubC.png
    :width: 250
    :align: center

    ..

  - :[ ]*subplot[ ]*\([ ]*1[ ]*,[ ]*4[ ]*,[ ]*1[ ]*\)[ ]*: Correct!
    :x: No, try again.

.. admonition:: Walkthrough

  (Note: The question numbers are not correct in the following walkthrough video, but the walkthrough is still accurate and helpful!)

  .. reveal:: ch06_06_revealwt_subplot
  
    .. youtube:: oSOzHEUPfQk
      :divid: ch06_06_wt_subplot
      :height: 315
      :width: 560
      :align: center

  
  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
A Few Final Thoughts
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ex/final_thoughts.in.rst


^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* Create line plots using :code:`plot(x_values, y_values, 'b--o')`.
* To plot multiple line plots on the same figure, you can pass more parameters to :code:`plot` (e.g., :code:`plot(x_values1, y_values1, 'b--o', x_values2, y_values2)`). You can also create a :code:`figure()`, use :code:`hold on`, and call :code:`plot` multiple times.
* Create scatter plots using :code:`scatter(x_values, y_values)`.
* Create a pie chart using :code:`pie(counts)`.
* Create a bar chart using :code:`bar(values)`.
* Add a title using :code:`title()`. Add x-axis and y-axis labels using :code:`xlabel()` and :code:`ylabel()`. Add a legend using :code:`legend()`.
* Set the minimum and maximum of the x-axis and y-axis using :code:`xlim()` and :code:`ylim()`.
* Turn the grid on and off using :code:`grid on` and :code:`grid off`.
* Add a legend using :code:`legend()`.
* To create a new figure, use :code:`figure()`. To close all figures, use :code:`close all`.
* Further customize a plot using :code:`gca` ("get current axes"). Assign :code:`gca` to a variable, and then do many, many customizations.
* Another way to customize a plot is using graphics objects. Plotting functions return graphics objects; if you plot more than one thing at a time, you’ll get a vector of graphics objects. Index into it to modify properties.
* The :code:`subplot()` function lets you have multiple axes per figure. The axes are arranged in a grid-like configuration.
* You can always look up more ways to customize your plots! Here's a link to the `MATLAB plot library documentation <https://www.mathworks.com/help/matlab/creating_plots/types-of-matlab-plots.html>`_.

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Optional Exercise: Creating a Pie Chart of Planets
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
*This section is COMPLETELY optional. We provide it here if you are looking for extra practice with this material on a real-life problem. You can use this to review the material, or come back later and use it for exam prep. We estimate that this exercise will take around 15 minutes to complete.*

We didn't want to let you leave this chapter still thinking about that one awful pie chart. Let's make a better one instead!

.. include:: ex/pie_charts_exercise.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch06_07_revealwt_pie_charts
  
    .. youtube:: uQp6Au06dt4
      :divid: ch06_07_wt_pie_charts
      :height: 315
      :width: 560
      :align: center
      
    .. tip::
  
      Alternatively, here's a concise way to calculate :code:`all_counts` using a single line of code:
  
      .. code-block:: matlab
  
        all_counts = sum(planets == [0 1 2 3 4 8]);
