.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/matlab.css">
   <script src="../_static/common/js/common.js"></script>
   <script src="../_static/common/js/matcrab-exercises.bundle.js"></script>


===================
Working with Images
===================

.. figure:: img/boat_color.png
   :width: 400
   :align: center
   :alt: boat_color.png

   *"Speed & Foam", Michel Brousseau*

^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^

.. include:: ex/warm_up.in.rst

.. admonition:: Chapter Files

  We'll be using several files throughout this chapter's exercises. These include starter code files as well as image files used as examples. It might be helpful to go ahead and download each of them now and move them to your current folder in MATLAB. (It's also a good idea to go ahead and create a new folder for this chapter and use that as your current folder, so that you don't clutter up whatever else you were working on.)

  .. list-table:: 
    :align: left
    :widths: auto

    * - :download:`boat_gray.png <../_static/working_with_images/boat_gray.png>`

      - .. reveal:: boat_gray_png_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>boat_gray.png</code>

          .. image:: img/boat_gray.png
            :width: 350
            :align: center
            :alt: boat_gray.png

      - Grayscale image of a boat (PNG format)

    * - :download:`boat_color.png <../_static/working_with_images/boat_color.png>`

      - .. reveal:: boat_color_png_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>boat_color.png</code>

          .. image:: img/boat_color.png
            :width: 350
            :align: center
            :alt: boat_color.png (PNG format)

      - Color image of a boat

    * - :download:`ImageScript.m <../_static/working_with_images/ImageScript.m>`

      - .. reveal:: ImageScript_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>ImageScript.m</code>

          .. literalinclude:: ../_static/working_with_images/ImageScript.m
            :language: matlab

      - Starter script file for videos on contrast and thresholding
      
    * - :download:`adjust_contrast.m <../_static/working_with_images/adjust_contrast.m>`

      - .. reveal:: adjust_contrast_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>adjust_contrast.m</code>

          .. literalinclude:: ../_static/working_with_images/adjust_contrast.m
            :language: matlab

      - Starter function file for contrast stretching exercise
    
  .. reveal:: working_with_images_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for MATLAB
    
    .. include:: ../common/matlab_download_instructions.in.rst
      

.. admonition:: Heads Up!

  For some of the videos in this chapter, the *file names* you see us using might be slightly different than the versions you download. Make sure you're using the correct name, which might not match the video or might have a slightly different file extension (e.g. :file:`.jpg` vs. :file:`.jpeg`).

^^^^^^^^^^^^^^^^^^^^^^^^^
Loading and Saving Images
^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 3

Matlab has built-in functions for saving and loading images. Let's look at an example:

.. youtube:: hfjwgcbH44M
  :divid: ch05_03_vid_loading_and_saving_images
  :height: 315
  :width: 560
  :align: center

|

Here's the recap:

- To **load** image data from a file into a matrix, use the :code:`imread()` function:

  .. code-block:: matlab

    img = imread('filename.png');
    % The matrix img now contains the data for the given image file

- To **save** a matrix as an image file, use the :code:`imwrite()` function:

  .. code-block:: matlab

    % Assume img is a matrix containing a representation of image data
    % This line will save that into a new image file named newFile.png
    imwrite(img, 'newFile.png');

- To **display** a matrix as an image in a **figure window**, use the :code:`imshow()` function:

  .. code-block:: matlab

    imshow(img);

  By the way, sometimes the figure window will open "underneath" the other matlab window. You might need to go to your taskbar to find it.

MATLAB can handle most common image file formats including :file:`.jpg`, :file:`.png`, :file:`.gif`, :file:`.bmp`, :file:`.ppm`, etc.

.. admonition:: Pro Tip

  Remember, when you specify a file name for MATLAB, you should use the single quotes and make sure to include the file extension (the part after the dot in the file name).

  Finally, you'll usually want to remember to **add the semicolon** :code:`;` **to suppress output when working with images**, since otherwise the result will print out at the command window - for an image, the result may be *huge*, which makes this behavior annoying.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Grayscale Images as Matrices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. figure:: img/ansel_adams.jpg
   :width: 400
   :align: center
   :alt: ansel_adams.jpg

   *The Tetons and Snake River, Grand Teton National Park, Wyoming. Ansel Adams*

We can use matlab to create, store, and manipulate grayscale images. A grayscale image is just a grid of *intensity values* (i.e. bright vs. dark). In MATLAB, we represent this as matrix of numbers!

We're going to talk about two ways to represent an image numerically: either using **integers** or using **doubles**. Like in math, integers are defined as whole real numbers, or your counting numbers: 1, 2, 3 etc. Doubles are defined as a number with floating points, a fancy way of saying any number with decimals like 1.5, 2.7, and 3.0.

.. youtube:: J6PU1e6K0T8
  :divid: ch05_02_vid_grayscale_images
  :height: 315
  :width: 560
  :align: center

|

Each cell in the matrix represents a pixel of the picture. The intensity value determines the shade of gray based on a gradient. The higher the intensity value, the closer to white. The value can be represented 2 ways:

- An integer between 0 and 255, inclusive
- A real number (a double) between 0 and 1, inclusive

By default, images you load through :code:`imread()` are generally going to be in the 0 to 255 format, so we'll work with that for now.

^^^^^^^^^^^^^^^^
Image Operations
^^^^^^^^^^^^^^^^
.. section 4

Let's work through a few examples to give you some practice loading and working with images, as well as highlight a couple common image operations.

----------------------------
Example: Contrast Stretching
----------------------------

.. include:: ex/contrast_stretching.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch05_04_revealwt_contrast_stretching

    Please check the Piazza Q&A thread for links to the walkthrough videos.


---------------------
Example: Thresholding
---------------------

Sometimes you might be interested in identifying particular pixels in an image which are above or below a particular threshold. Logical indexing works well for this.

.. youtube:: uCQ4LK4Zrgs
  :divid: ch05_04_vid_thresholding
  :height: 315
  :width: 560
  :align: center

|

.. tip::

  You can also use :code:`imshow` to display a logical matrix directly, e.g. :code:`imshow(img > 200)`, and the figure window will show a black-and-white image (white corresponds to true values in the image, and black to false).


^^^^^^^^^^^^^^^^
RGB Color Images
^^^^^^^^^^^^^^^^
.. section 5

We can use a matrix of numbers to represent a grayscale image, with values between 0 and 255 for different shades of gray. If we want a color image, how could we describe the color of each pixel?

We could try to have a number for each color, e.g. 0 = red, 1 = orange, 2 = blue, etc. Although a box of 256 crayons would be pretty awesome, we really need a strategy that can represent every possible color, and there are a lot more than 256! A fixed set of colors also doesn't allow us to dynamically adjust colors (e.g. to be lighter, darker, more intense, etc.) in a way that matches our human understanding of color.

You may be familiar with the way printers use a combination of three *primary colors* to create other colors. We'll do something similar, but using the primary colors of light which are red, green, and blue (RGB). This representation is inspired by the way our eyes perceive color and also aligned with the way computer displays produce color. If we use 256 possible values for each primary color, we get a total of over 16 million different color combinations!

In MATLAB RGB images, we need to find a way to describe where each pixel is and also describe the amount of red, green, and blue in each pixel. We do this with a matrix for each *color channel* in the image. If we wanted to, we could store these channels as individual matrices, but that could get confusing fast. Instead, we'll take advantage of MATLAB's capability to make 3D matrices and store each RGB color channel as one layer.

Here's the details:

.. youtube:: Q97m7naKIfo
  :divid: ch05_05_vid_color_images
  :height: 315
  :width: 560
  :align: center

|

-----------------------------------
Exercise: Row/Column/Layer Indexing
-----------------------------------

.. include:: ex/row_column_layer_indexing.in.rst

.. admonition:: Walkthrough

  .. reveal:: ch05_05_revealwt_row_column_layer_indexing

    Please check the Piazza Q&A thread for links to the walkthrough videos.


|

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Manipulating Images as 3D Matrices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 6

Given the representation of an RGB image as three channels stored in layers of a 3D matrix, there are two main ways you might choose to work with an image: 1) all the channels together (the whole image) OR 2) one channel at a time. Let's look at some examples:

**Working With The Whole Image**

.. youtube:: jYiWOYHOvpw
  :divid: ch05_06_vid_whole_image
  :height: 315
  :width: 560
  :align: center

|

**Working With A Single Channel**

.. youtube:: WOxAHmEYnOY
  :divid: ch05_06_vid_single_channel
  :height: 315
  :width: 560
  :align: center

|

To review, here's what the two look like as indexing expressions:

- :code:`img(___, ___, :)` means that you want the **whole** image. The colon in the layer indicator means that you're selecting all of the channels (layers) at once.
- :code:`img(___, ___, 2)` means, for example, that you want a **single channel** - the **2nd (green)** in this case.

Also, when you would like to do more complicated operations on one of the channels in an image, you sometimes need to "take out the channel, work with it, and then copy it back in".

.. code-block:: matlab

  % Pull out a copy of the red channel
  % to work with it individually.
  red = img(:,:,1);

  % Make changes to the red channel.
  red(:) = 255;

  % Copy the red channel data back into the original image.
  % You need this, otherwise the image isn't changed.
  img(:,:,1) = red;

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
HSV Image Representation and Application
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. section 7

We also want to introduce another representation for color images that uses channels for the hue, saturation, and value (HSV) of each pixel, instead of RGB. We'll explain what those mean in a moment, but first let's look at an application - *color desaturation* - that motivates the need for a different representation.

.. figure:: img/desaturation.png
   :width: 600
   :align: center
   :alt: desaturation.png

   Desaturation is the process of removing color from all or part of an image (e.g. the blue sea/sky in this image). It can produce some pretty cool, dramatic effects.

.. youtube:: ATHtSPAy4-w
  :divid: ch05_06_vid_rgb_desaturation
  :height: 315
  :width: 560
  :align: center

|

This is a good example of a case where RGB colors don't provide an intuitive way to manipulate an image, even though they mimic the way our eyes perceive color. We can't identify the blue colors in the background by just looking at the blue channel, because making the color "blue" actually depends on the ratio of all three R, G, and B channels.

Instead, let's turn to HSV, which is another three-channel representation: hue, saturation, and value. Here's the basic idea of each:

- Hue: "which basic color is it?"
- Saturation: "how strong is the color?"
- Value: "how bright is it?"

.. figure:: img/hsv.png
   :width: 400
   :align: center
   :alt: hsv.png

   The HSV color space

Here's the boat picture again and a representation of what the data in each channel looks like:

.. list-table:: 
  :align: center
  :widths: auto

  * - .. figure:: img/boat_color.png
        :width: 180
        :align: center
        :alt: boat_color.png

        Original

    - .. figure:: img/boat_hue.jpg
        :width: 180
        :align: center
        :alt: boat_hue.jpg

        Hue
    - .. figure:: img/boat_saturation.jpg
        :width: 180
        :align: center
        :alt: boat_saturation.jpg

        Saturation
    - .. figure:: img/boat_value.jpg
        :width: 180
        :align: center
        :alt: boat_value.jpg

        Value

Take a moment to think about why the hue, saturation, and value channels look the way they do for the boat image.

- **Hue.** All the blue colors in this hue channel we expect to see, but note that the sails (which look white in the original picture) have varying hues throughout. Why?
- **Saturation.** In the picture above, we can see some areas have lower (darker) saturation, while others have high (lighter) saturation. The reason the sails look white in the original picture, and not blue, orange, or pink, is that the corresponding saturation levels are low -- there might be a color, but there is very little of that color. You can see this in the color space diagram - as you dial down saturation and go the center of the cylinder, you approach gray regardless of the hue.
- **Value.** Finally, the value channel determines the brightness of a pixel. For example, the waves have a lower (darker) value than the sky, since they are a darker shade of blue.

Now, we can start to see how all three channels work together to represent the original picture. The dark blue water has a blue hue, medium saturation, and low value. The white sails have varying hues throughout, but the low saturation and high value combine to give the sails their more-or-less white color. 

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Converting Between RGB and HSV
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

MATLAB provides two functions for converting between RGB and HSV image represenations. Let's say you have a 3D matrix called :code:`img` representing an image in RGB and want to convert it to a 3D matrix with HSV representation:

.. code-block:: matlab

  hsv = rgb2hsv(img);

In the other direction, you can convert back using:

.. code-block:: matlab

  img = hsv2rgb(hsv);

Something to keep in mind is that you should *only* use :code:`imshow()` with RGB matrices. If you want to look at an HSV image, convert it before using :code:`imshow()`. Otherwise the result you see looks really weird.

Finally, the HSV represenation in MATLAB uses values that range between 0 and 1, rather than integers between 0 and 255. So a "full" saturation pixel would have a value of 1 in the saturation channel, for example.

--------------------------------------
Exercise: Image Desaturation using HSV
--------------------------------------
.. section 8

.. include:: ex/image_desaturation.in.rst

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* To load images into a matrix, use :code:`imread()`. To save an image matrix as a file, use :code:`imwrite()`. To display a matrix as an image, use :code:`imshow()`.
* **Integers** are whole real numbers (e.g,. 1, 2, 3). **Doubles** are floating point numbers (e.g., decimals like 1.5, 2.7, and 3.0).
* In MATLAB, grayscale images are represented by a matrix with intensity values (0-255 or 0-1).
* Three steps are required to do **contrast stretching** (improving or "stretching" the contrast of an image):

    1. Determine the min/max of the original image.
    2. Determine a stretch factor (size of final intensity range / size of original intensity range).
    3. Stretch each pixel using the formula: :code:`new_min + stretch_factor * (orig_pixels - original_min)`.

* In MATLAB, RGB color images are represented by a matrix with three separate channels (three different 2D matrices) which represent the red, green, and blue portions of each pixel.
* There are multiple ways to manipulate images as 3D matrices:

    1. Working with the whole image - when you take all three channels at the same time. This is indexed as :code:`imageMatrix(row, column, :)`.
    2. Working with a single channel - when you only want one channel at a time. This is indexed as :code:`imageMatrix(row, column, channel)`.
    3. More complicated manipulation - you must make a copy of the channel then make adjustments, and replace the original channel.
        a. :code:`red = img(:,:,1);`
        b. :code:`red(:) = 255;`
        c. :code:`img(:,:,1) = red;`
    
* In MATLAB, RGB color images are represented by a matrix with three separate channels (three different 2D matrices) which represent the hue, saturation, and brightness value portions of each pixel.
* To convert from RGB to HSV, use :code:`rgb2hsv()`. To convert from HSV to RGB, use :code:`hsv2rgb()`. Remember that to show an image using :code:`imshow()`, it **must be** an RGB image so don't forget to convert before using that command.

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
