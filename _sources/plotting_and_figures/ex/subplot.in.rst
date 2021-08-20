We've seen how to make a plot that has two sets of data on it, but what if you want to plot those two sets of data on separate graphs in the same figure? You can use MATLAB's :code:`subplot` function to do this.

.. youtube:: MdAAXuvl4Ck
  :divid: ch06_01_vid_subplot
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

  The :code:`subplot` function allows multiple axes per figure, arranged in a grid-like configuration.

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

  .. reveal:: ch06_06_revealwt_subplot

    (Note: The question numbers are not correct in the following walkthrough video, but the walkthrough is still accurate and helpful!)
  
    .. youtube:: oSOzHEUPfQk
      :divid: ch06_06_wt_subplot
      :height: 315
      :width: 560
      :align: center

----------------------------------
Exercise: Side-by-side Plots
----------------------------------

Arrange the lines of code below to write a program that plots two graphs side-by-side (one on the left, one on the right). The left graph should be a cosine wave from 0 to 10. The right plot should be a straight line plot. Plot the left graph first, and then the right graph.

Some lines contain **mistakes** or are **unnecessary** for the function - these lines should not be selected. Make sure to place the blocks at the right indentation levels!

.. parsonsprob:: ch6_01_ex_subplot
    :language: matlab

    -----
    subplot(1,2,1);
    =====
    x = linspace(0,10,100);
    plot(x, cos(x));
    =====
    subplot(1,2,2);
    =====
    plot([1,2,3],[4,5,6]);
    =====
    subplot(2,1,1); #distractor
    =====
    subplot(2,1,2); #distractor
    =====
    subplot(2,2,1); #distractor
    =====
  
.. admonition:: Walkthrough

  .. reveal:: ch06_06_revealwt_subplot2
  
    .. youtube:: iaIbOvK6Dtw
      :divid: ch06_06_wt_subplot2
      :height: 315
      :width: 560
      :align: center