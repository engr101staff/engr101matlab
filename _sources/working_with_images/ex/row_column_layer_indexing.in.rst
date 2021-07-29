Let's get some practice with selecting certain elements inside of an RGB image file. For the following exercises, assume we have an RBG image stored in a matrix called :code:`img`.

.. mchoice:: ch05_05_ex_row_column_layer_indexing_01
  :answer_a: img(1, 1, :)
  :answer_b: img(:, :, 1)
  :answer_c: img(1, :, :)
  :correct: b
  :feedback_a: Oops! This indexing expression selects all of the layers for the pixel at location (1,1).
  :feedback_b: Correct! This indexing expression will select all pixels and just layer 1.
  :feedback_c: Oops! This indexing expression will select all of row 1 and all three layers.

  What MATLAB indexing expression selects just the red channel from the image?

.. mchoice:: ch05_05_ex_row_column_layer_indexing_02
  :answer_a: img(:, :, 3)
  :answer_b: img(:, :, B)
  :answer_c: img(3, 3, :)
  :correct: a
  :feedback_a: Correct! This indexing expression will select all pixels and just layer 3.
  :feedback_b: Oops! This indexing expression will return an error or will select whatever layer B is set to (provided B is an integer between 1 and 3).
  :feedback_c: Oops! This indexing expression will select the pixel at row 3, column 3 and all layers.

  What MATLAB indexing expression selects just the blue channel from the image?

.. mchoice:: ch05_05_ex_row_column_layer_indexing_03
  :answer_a: img(4, :, 2)
  :answer_b: img(:, 4, 2)
  :answer_c: img(2, 4, :)
  :correct: a
  :feedback_a: Correct! This indexing expression will select all pixels in row 4 and in the green layer. 
  :feedback_b: Oops! This indexing expression will select all pixels in column 4 and in the green layer. 
  :feedback_c: Oops! Remember, the ordering of indices is row, column, layer!

  What MATLAB indexing expression will select the 4th row in the green layer?

.. mchoice:: ch05_05_ex_row_column_layer_indexing_04
  :answer_a: img(2, 4, 3)
  :answer_b: img(:, [2,4], 3)
  :answer_c: img(:, [2:4], 3)
  :correct: c
  :feedback_a: Oops! This indexing expression will select the pixel in row 2 column 4 and the blue layer. 
  :feedback_b: Oops! This indexing expression will select all pixels in columns 2 and 4 in the blue layer. 
  :feedback_c: Correct! This indexing expression will select all pixels in columns 2,3 &4 and in the blue layer. 

  What MATLAB indexing expression will select columns 2 through 4 of the blue channel? 

.. mchoice:: ch05_05_ex_row_column_layer_indexing_05
  :answer_a: img(:, 3, end)
  :answer_b: img(3, end, :)
  :answer_c: img(3, end, 1)
  :correct: b
  :feedback_a: Oops! Remember, the ordering of indices is row, column, layer!
  :feedback_b: Correct! Using the : to select each layer will give you a selection for the R, G, and B values.
  :feedback_c: Oops! Using 1 for the layer index only selects the red channel. How can you select all of the channels?

  What MATLAB indexing expression will select the R, G, and B values of the pixel in the 3rd row and last column? 
