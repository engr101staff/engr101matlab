*This section is completely optional. We provide it here if you are looking for extra practice with this material on a real-life problem.*

.. figure:: img/fire.jpeg
   :width: 400
   :align: center
   :alt: A forest fire rages

   A forest fire rages.

Forest fires are a serious environmental issue. They can create financial and ecological damage, as well as put human lives in danger. We are going to work with a dataset that records various factors related to forest fires in the northeast region of Portugal. You can find out more about this data and how some researchers used it to detect forest fires by looking at `their paper here <http://www3.dsi.uminho.pt/pcortez/fires.pdf>`_. (I've simplified this data slightly from the original data used in the paper.)

Before we start, go ahead and download the data that we're going to work with.

.. admonition:: Data File

  .. list-table::
    :align: left
    :widths: auto

    * - :download:`forest_fires.csv <../_static/functions_and_data/forest_fires.csv>`

      - .. reveal:: forest_fires_csv_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>forest_fires.csv</code>

          .. literalinclude:: ../_static/functions_and_data/forest_fires.csv
            :lines: 1-7
            :append: ...

      - Data file containing information about 517 forest fires.

  .. reveal:: forest_fires_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for MATLAB
    
    .. include:: ../common/matlab_download_instructions.in.rst

Once you download the data file, open up the file and look at (you can open it in Excel, Numbers, or a basic word processer, like Notepad). Each line in the file is data about a single forest fire. There are eight columns of information:

    **index** - A unique identifier for each forest fire (numbered from 1 to 517)

    **month** - The month the forest fire took place (January = 1, February = 2, etc.)
    
    **day** - The day of the week the forest fire took place (Sunday = 1, Monday = 2, etc.)
    
    **temp** - the average temperature in Celsius degrees (ranges from 2.2 to 33.3)
    
    **RH** - the relative humidity as a percentage (ranges from 15% to 100%)
    
    **wind** - the wind speed in km/h (ranges from 0.4 to 9.4)
    
    **rain** - outside rain in mm/m2 (ranges from 0 to 6.4)
    
    **area** - the burned area of the forest in ha (ranges from 0 to 1090.84)

First, open MATLAB create a new script called :code:`forestFires.m`. In this script, open the data file using :code:`csvread()`. Don't forget to skip the first line of the file (the header row).

Put each column of information in a separate vector. For instance, the second column contains the **month** information; store this column in a variable called :code:`month`. Do this for all the columns.

One potentially interesting use of this data is to see which pieces of information correspond with a smaller or larger forest fire. The size of the forest fire is captured by the column **area**, which contains the area of forest burned in a particular fire. We are going to write a function to look at how much area is burned for fires that have a high value for a certain piece of data.

Create a new function file :code:`highData.m`. This function should take in two parameters: :code:`data` (this will be one of the columns from our data file), and :code:`area` (the column in our data file that corresponds to the area of the forest fire). The function should return one variable, :code:`avgArea`. Inside the function, you should do a few things:

    1. Calculate the maximum value of :code:`data`.
    2. Calculate 90% of the maximum value from step 1 (this should be 0.9 multiplied by the value from step 1).
    3. We want to look at every forest fire where data is equal to or exceeds the value calculated in step 2.
    4. For these forest fires, calculate the average area.
    5. Return the average area from your function.
    

