Make sure you have :file:`boat_gray.png` downloaded and moved into your current MATLAB folder (see the files table at the start of this chapter).

Then, load the image and display it:

.. code:: matlab

  grayImg = imread('boat_gray.png');
  imshow(grayImg);
  
You should see a boat image with very poor contrast. The boat fades into the background.

.. figure:: img/boat_gray.png
   :width: 400
   :align: center
   :alt: boat_gray.png

We are going to fix this image using **contrast stretching**, an operation that "stretches out" the range of intensity values. (Follow along using the :file:`ImageScript.m` file from the beginning of the chapter.)

.. youtube:: s088CRrwJdU
  :divid: ch05_04_vid_contrast_stretching
  :height: 315
  :width: 560
  :align: center

.. admonition:: Video Recap

  **Contrast stretching** "stretches out" the range of intensity values by making sure that the values go all the way from 0 to 255 (instead of having a narrower range of values). To do contrast stretching, first we need to determine the maximum and minimum values in the image. Then, we need to use linear interpolation to stretch the values from 0 to 255.

The washed-out image is only using a small part of the possible range of intensity values - no wonder this image looks washed out! As you saw in the video, the standard algorithm for contrast stretching is based on a linear interpolation from the original range of intensity values to a new, larger range.

.. figure:: img/contrast_stretch_diagram.png
   :width: 500
   :align: center

   Linear interpolation can be used to stretch a small range of intensity values into a larger range.

Here's the full algorithm for doing contrast stretching via linear interpolation:

1. **Find the min/max in the original image**. These define the original range of intensities.

2. **Determine a stretch factor**. This is the size of the final intensity range we would like divided by the size of the original intensity range we have.

3. **Stretch each pixel**. Compute a new intensity value for each pixel according to the following formula (:code:`p` is the original pixel value):

.. code:: matlab

  new_min + stretch_factor * (p - original_min);
  
.. tip::

  Any time you see an algorithm in MATLAB that calls for an operation on each element of a matrix (or each pixel in an image!), vectorization is your tool of choice. Look at the formula in step #3 above - what would happen if in place of :code:`p` we used the whole image matrix?

--------------------------------
Exercise: Contrast Stretching
--------------------------------

Now, we would like you to write a function to implement contrast stretching. The function should take the following input parameters:

- The original image
- The desired new min intensity value
- The desired new max intensity value

The function should return the new, adjusted image.

We have provided a starter file :code:`adjust_contrast.m` at the top of the chapter that you should use to get started. Take note of the comments there, which match the algorithm described above. Some lines of code for steps 1 and 3 are missing pieces - you'll need to fill these in. Step 2 is already done for you.

To test your :code:`adjust_contrast` function, you can call it from the command line, providing the grayscale image from earlier as the first parameter. Try a few different combinations of new min/max values. We find that 30, 255 works pretty well. For example:

.. code-block:: matlab

  adjustedImg = adjust_contrast(grayImg, 30, 255);
  imshow(adjustedImg);

|
  
.. shortanswer:: ch05_04_ex_contrast_stretching_function

  Paste in a copy of your completed :file:`adjust_contrast.m` file.
