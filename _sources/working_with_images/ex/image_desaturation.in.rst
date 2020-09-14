This exercise will walk you through each step in creating a script to desaturate the background in the boat image. To follow along, make sure you have the :file:`boat_color.png` image downloaded and in your current folder, and then create a new script. (You can call the script whatever you like.)

For each step, we'll ask you to identify the correct code from a set of choices, and there's a short walkthrough video so that you can check your answer. Add the code from each step into your script as you go.

.. mchoice:: ch05_08_ex_image_desaturation_01
  :answer_a:
  :answer_b:
  :answer_c:
  :answer_d:
  :correct: d
  :feedback_a: Oops! Remember that in MATLAB you have to pull in the image before you can convert it to something else. 
  :feedback_b: Oops! The conversion function is backwards here.
  :feedback_c: Oops! Be sure to put the file name in single quotes - otherwise MATLAB will try to treat boat_color.jp as a variable name, which won't work.
  :feedback_d: Correct! Using commands imread and rgb2hsv will read in the image then convert it from RGB to HSV. 

  First, we need to read in the image file and convert it to HSV - how can you do this?

  .. list-table:: 
    :align: left
    :widths: 10 90

    * - **A**

      - .. code-block:: matlab

          hsv = rgb2hsv(boat);
          boat = imread('boat_color.png');

    * - **B**

      - .. code-block:: matlab

          boat = imread('boat_color.png');
          hsv = hsv2rgb(boat);

    * - **C**

      - .. code-block:: matlab

          boat = imread(boat_color.png); 
          hsv = rgb2hsv(boat);

    * - **D**

      - .. code-block:: matlab

          boat = imread('boat_color.png');
          hsv = rgb2hsv(boat);

.. youtube:: Xuu8X9fbiaU
  :divid: ch05_08_vid_image_desaturation_01
  :height: 315
  :width: 560
  :align: center

|



.. mchoice:: ch05_08_ex_image_desaturation_02
  :answer_a:
  :answer_b:
  :answer_c:
  :answer_d:
  :correct: a
  :feedback_a: Correct! The third element of the hsv matrix contains the hue and saturation channels.
  :feedback_b: Oops! The order of HSV files is row, column, layer so this command is referencing pixel (1,1) and all the channels.
  :feedback_c: Oops! The hue channel is referencing the saturation channel and the saturation channel is referencing the brightness value. 
  :feedback_d: Oops! It looks like you've got the hue and saturation channels flipped. Remember, HSV stands for Hue, Saturation, (brightness) Value!

  We will need copies of the hue and saturation channels to work with. Which code is correct?

  .. list-table:: 
    :align: left
    :widths: 10 90

    * - **A**

      - .. code-block:: matlab

          hue = hsv(:,:,1);
          sat = hsv(:,:,2);

    * - **B**

      - .. code-block:: matlab

          hue = hsv(1,1,:);
          sat = hsv(:,1,1);

    * - **C**

      - .. code-block:: matlab

          hue = hsv(:,:,2); 
          sat = hsv(:,:,3);

    * - **D**

      - .. code-block:: matlab

          hue = hsv(:,:,2); 
          sat = hsv(:,:,1);


.. youtube:: IbVJDfihe0Q
  :divid: ch05_08_vid_image_desaturation_02
  :height: 315
  :width: 560
  :align: center

|



.. mchoice:: ch05_08_ex_image_desaturation_03
  :answer_a:
  :answer_b:
  :answer_c:
  :answer_d:
  :correct: b
  :feedback_a: Oops! It looks like you've got your greater-than signs mixed up. Make sure that you're finding the hues between 0.5 and 0.65! 
  :feedback_b: Correct! You've correctly identified what logical statement will find the indexes which are within the given range, and how to change the saturation values of them. 
  :feedback_c: Oops! Keep in mind that a saturation of 0 is the lowest strength, while 1 is highest.
  :feedback_d: Oops! It looks like you’re mixing up your logical indexing. Remember that to adjust the values of a certain variable you must place a logical inside of that variable (i.e. sat(logical) to adjust saturation). 

  Now, the fun part! We need to find the pixels with blue hues and reduce their saturation. Here's how the range of hue values between 0 and 1 corresponds to the color:

  .. figure:: img/hues.png
    :width: 500
    :align: center
    :alt: hues.png

    *The range of possible hue values between 0 and 1*

  Select the code below that finds all pixels with a hue between 0.5 and 0.65, and sets their saturation to 0 (i.e. meaning color "strength" of 0). Hint: Use logical indexing.

  .. list-table:: 
    :align: left
    :widths: 10 90

    * - **A**

      - .. code-block:: matlab

          sat(0.5 > hue & hue > 0.65) = 0;

    * - **B**

      - .. code-block:: matlab

          sat(0.5 < hue & hue < .65)= 0;

    * - **C**

      - .. code-block:: matlab

          sat(0.5 < hue & hue < 0.65) = 1;

    * - **D**

      - .. code-block:: matlab

          hue(0.5 < hue & hue < 0.65) = 0;

.. youtube:: ec3X4De-dgI
  :divid: ch05_08_vid_image_desaturation_03
  :height: 315
  :width: 560
  :align: center

|



.. mchoice:: ch05_08_ex_image_desaturation_04
  :answer_a:
  :answer_b:
  :answer_c:
  :answer_d:
  :correct: a
  :feedback_a: Correct! It's important to copy the channel back in because the image won't be changed if you don't. Also don't forget matlab does not like to display HSV images so the RGB conversion must be done as well. 
  :feedback_b: Oops! Looks like you've just copied the new saturation values into the hue channel of the HSV image. 
  :feedback_c: Oops! You've just copied the hue values back into the HSV image - double check what the question is asking.

  Finally, copy the saturation channel back in (we don't need to do this for hue, we didn't change it), convert back to rgb format, and display using imshow.

  .. list-table:: 
    :align: left
    :widths: 10 90

    * - **A**

      - .. code-block:: matlab

          hsv(:,:,2) = sat; 
          imshow(hsv2rgb(hsv));

    * - **B**

      - .. code-block:: matlab

          hsv(:,:,1) = sat; 
          imshow(hsv2rgb(hsv));

    * - **C**

      - .. code-block:: matlab

          hsv(:,:,1) = hue; 
          imshow(hsv2rgb(hsv));

    * - **D**

      - .. code-block:: matlab

          boat = imread('boat_color.png');
          hsv = rgb2hsv(boat);

.. youtube:: jhgAdfceKqw
  :divid: ch05_08_vid_image_desaturation_04
  :height: 315
  :width: 560
  :align: center

|

Finally, we'll leave you with a question...what hue values do you see here? Vote in the poll on the Piazza Q&A thread!

.. figure:: img/dress.png
  :width: 250
  :align: center
  :alt: dress.png

  *The infamous dress*
