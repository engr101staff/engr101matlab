Recall the Exchangeable Sodium Percentage (ESP) from the Practice Project, which affects the suitability of soil for farming. It is determined as a ratio of several chemical elements present in the soil according to the formula:

.. math::

  ESP = \frac{Na}{K + Ca + Mg + Na}


Let's say you have many different soil samples taken by the Proxima b probe, and you need to perform the ESP calculation for each. Below is a table of the samples and an approach to writing a script that performs the ESP computations.

.. list-table:: 
  :align: left

  * - .. csv-table:: 
        :file: ../../_static/functions_and_data/site_samples.csv
        :widths: 20, 20, 20, 20, 20
        :header-rows: 1
        :align: center

    - .. code-block:: matlab

        Na = 10.9; K = 68.2;
        Ca = 25.4; Mg = 13.8;
        display(Na ./ (K + Ca + Mg + Na));

        Na = 13.8; K = 66.3;
        Ca = 26.4; Mg = 13.2;
        display(Na ./ K + Ca + Mg + Na);

        Na = 14.3; k = 67.0;
        Ca = 26.7; Mg = 13.0;
        display(Na ./ (K + Ca + Mg + Na))

        Na = 14.1; K = 72.2;
        Ca = 25.5; Mg = 17.3;
        ...

Is this a good approach? Consider a few questions...

.. tip::
  If you're working on a laptop, you can open this page in two windows side-by-side so that you can view the content above and the questions below at the same time!

.. shortanswer:: ch03_02_ex_warm_up_01

  Unfortunately, there are some mistakes in the script above. Find at least one of them and briefly describe it here.

.. shortanswer:: ch03_02_ex_warm_up_02

  The code above contains a lot of **code duplication**, where we have multiple lines of code that do the same thing (although with different data). Give one reason why code duplication can make mistakes like the one you identified more likely.

.. shortanswer:: ch03_02_ex_warm_up_03

  There's another subtle error above. Take a close look at the data for site #2 in the table and in the code. What's wrong? Can you think of a way we could avoid this kind of error?
