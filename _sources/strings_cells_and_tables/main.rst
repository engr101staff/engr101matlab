.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <script src="../_static/common/js/common.js"></script>

==========================
Strings, Cells, and Tables
==========================

.. admonition:: Chapter Files

  We'll be using several files throughout this chapter's exercises. It might be helpful to go ahead and download each of them now and move them to your current folder in MATLAB. (It's also a good idea to go ahead and create a new folder for this chapter and use that as your current folder, so that you don't clutter up whatever else you were working on.)

  .. list-table:: 
    :align: left
    :widths: auto

    * - :download:`cities.xlsx <../_static/statistics_and_simulation/cities.xlsx>`

      - .. reveal:: cities_xlsx_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>cities.xlsx</code>

          .. image:: img/cities_xlsx_preview.png
            :width: 400
            :align: center

      - Dataset containing information about the world's most populous cities.

    * - :download:`CityLatitudes.m <../_static/statistics_and_simulation/CityLatitudes.m>`

      - .. reveal:: CityLatitudes_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>CityLatitudes.m</code>

          .. literalinclude:: ../_static/statistics_and_simulation/CityLatitudes.m
            :language: matlab

      - Starter file for analyzing city data

    * - :download:`MakeCityLatitudeHistogram.m <../_static/statistics_and_simulation/MakeCityLatitudeHistogram.m>`

      - .. reveal:: MakeCityLatitudeHistogram_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>MakeCityLatitudeHistogram.m</code>

          .. literalinclude:: ../_static/statistics_and_simulation/MakeCityLatitudeHistogram.m
            :language: matlab

      - Starter file for plotting city data

    * - :download:`newBatteryLife.mat <../_static/statistics_and_simulation/newBatteryLife.mat>`

      - .. reveal:: newBatteryLife_mat_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>newBatteryLife.mat</code>

          No preview available

      - Matlab saved workspace containing variables with battery experiment data

    * - :download:`AnalyzeBatteries.m <../_static/statistics_and_simulation/AnalyzeBatteries.m>`

      - .. reveal:: AnalyzeBatteries_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>AnalyzeBatteries.m</code>

          .. literalinclude:: ../_static/statistics_and_simulation/AnalyzeBatteries.m
            :language: matlab

      - Starter file for battery analysis exercise
    
  .. reveal:: statistics_and_simulation_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for MATLAB
    
    .. include:: ../common/matlab_download_instructions.in.rst
      

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
BLAH
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 1

.. include:: content/warm_up.in.rst

-------------------------------------
Exercise: :code:`linspace()` Practice
-------------------------------------

.. include:: ex/warm_up.in.rst

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Simulation: Projectile Motion
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 8

.. include:: content/projectile_motion.in.rst

--------------------------
Exercise: Throwing an Item
--------------------------

.. include:: ex/projectile_motion.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch07_08_revealwt_projectile_motion
  
    .. youtube:: cteuB7_WmeI
      :divid: ch07_08_wt_projectile_motion
      :height: 315
      :width: 560
      :align: center

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Sampling From Random Distributions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 9

.. include:: content/sampling.in.rst

--------------------------
Exercise: Rolling Two Dice
--------------------------

.. include:: ex/sampling.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch07_09_revealwt_sampling
  
    .. youtube:: 2b0ULygAisw
      :divid: ch07_09_wt_sampling
      :height: 315
      :width: 560
      :align: center

MATLAB supports many different random distributions in addition to the distributions we've seen here. There are discrete random distributions for describing random sets of integers; some examples include the Binomial, Multinomial, Geometric, and Poisson distributions. There are continuous random distributions for describing random numbers that can be any value; some examples include the Beta, Gamma, Exponential, Chi-square distributions. As always, check the MATLAB documentation for more information. 
