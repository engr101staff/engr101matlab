
Let's explore some image operations using the :file:`boat_gray.png` image (see the files table at the start of this chapter). Make sure you have the image downloaded and moved into your current MATLAB folder.

Then go ahead and load the image into a variable using :code:`grayImg = imread('boat_gray.png');`. If you'd like, you can verify everything's there by calling :code:`imshow(grayImg)` on that variable.

The boat image you see has very poor contrast. It fades right into the background. Can we fix this?

.. figure:: img/boat_gray.png
   :width: 400
   :align: center
   :alt: boat_gray.png

   A washed-out grayscale image with very poor contrast

First, let's take a look at how the problem relates to the range of intensity values used by the image, as well as how we can start to address the problem using *contrast stretching*.

.. youtube:: s088CRrwJdU
  :divid: ch05_04_vid_contrast_stretching
  :height: 315
  :width: 560
  :align: center

|

.. First, let's take a look at the range of intensity values used by this image. Remember, the possible range of values is 0 to 255. What range does this image use?

.. .. reveal:: ch05_04_hint_contrast_stretching
..   :showtitle: Hint
..   :hidetitle: Hide Hint

..   .. hint::

..     Use the built-in :code:`min()` and :code:`max()` functions to find the minimum and maximum intensity values. Remember, by default these (and many other) functions operate on a column-by-column basis. That means you'll need to either call :code:`min(min(img))`, :code:`min(img(:))`, or :code:`min(img, 'all')`.

.. .. fillintheblank:: ch05_04_ex_contrast_stretching_min

..    What is the minimum intensity value in the image? |blank|

..    - :152: Correct!
..      :x: No, try again.

.. .. fillintheblank:: ch05_04_ex_contrast_stretching_max

..    What is the maximum intensity value in the image? |blank|

..    - :250: Correct!
..      :x: No, try again.

The washed-out image is only using a small part of the possible range of intensity values - no wonder this image looks washed out! As you saw in the video, the standard algorithm for contrast stretching is based on a linear interpolation from the original range of intensity values to a new, larger range.

.. figure:: img/contrast_stretch_diagram.png
   :width: 500
   :align: center

   Linear interpolation can be used to stretch a small range of intensity values into a larger range.

Here's the full algorithm for doing contrast stretching via linear interpolation:

1. **Find the min/max in the original image**. These define the original range of intensities.

2. **Determine a stretch factor**. This is the size of the final intensity range we would like divided by the size of the original intensity range we have.

3. **Stretch each pixel**. Compute a new intensity value for each pixel according to the formula :code:`new_min + stretch_factor * (p - original_min);` where :code:`p` is the original pixel value.

.. tip::

  Any time you see an algorithm in MATLAB that calls for an operation on each element of a matrix (or each pixel in an image!), vectorization is your tool of choice. Look at the formula in step #3 above - what would happen if in place of :code:`p` we used the whole image matrix?

Now, we would like you to write a function to implement this contrast stretching operation. The input parameters for the function should include:

- The original image
- The desired new min intensity value
- The desired new max intensity value

And the function should return the new, adjusted image.

We have provided a starter file :download:`adjust_contrast.m <../_static/working_with_images/adjust_contrast.m>` that you should use to get started. Take note of the comments there, which match the algorithm described above. Some lines of code for steps 1 and 3 are missing pieces - you'll need to fill these in. Step 2 is already done for you.

To test your :code:`adjust_contrast` function, you can just call it from the command line, providing the grayscale image from earlier as the first parameter. Try a few different combinations of new min/max values. We find that 30, 255 works pretty well. For example:

.. code-block:: matlab

  adjustedImg = adjust_contrast(grayImg, 30, 255);
  imshow(adjustedImg);
  
.. shortanswer:: ch05_04_ex_contrast_stretching_function

  Paste in a copy of your completed :file:`adjust_contrast.m` file.
