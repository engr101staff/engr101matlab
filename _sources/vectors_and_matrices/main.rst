
.. qnum::
   :prefix: Q
   :start: 1

========================
 Vectors and Matrices
========================

.. mchoice:: intro_to_matlab_01
  :practice: T
  :answer_a: It's great!
  :answer_b: I don't like it.
  :correct: a
  :feedback_a: You're right, it is great!
  :feedback_b: WHAT?!? Why not???

  What do you think of this MATLAB code?

  .. code-block:: matlab

    function [numPallets] = additionalPallets(roofHeight, pallets, palletHeight)
      %additionalPallets computes the number of additional storage pallets
      %     that can fit in the storage area of the structure
      %     roofHeight: scalar representing the height of the roof
      %     pallets: a matrix representing the number of pallets in 
      %              each storage cell of the storage area
      %     palletHeight: scalar representing the height of a single pallet
      %
      %     numPallets: number of additional pallets that can fit in 
      %                 the storage area
      
      remainingHeights = roofHeight - pallets .* palletHeight;
      remainingPallets = floor(remainingHeights ./ palletHeight);
      numPallets = sum(sum(remainingPallets));
    end



^^^^^^^^^^^^^^^^^^^^
 Q/A From Last Time
^^^^^^^^^^^^^^^^^^^^

^^^^^^^^^^
 Exercise
^^^^^^^^^^

.. dragndrop:: vectors_and_matrices_02
   :feedback: Try using the MatCrab box to check expressions you're not sure about!
   :match_1: <img src="../_static/vectors_and_matrices/img/dnd1.png" style="height: 30px; pointer-events: none"><br />|||x = [1, 2, 5]
   :match_2: <img src="../_static/vectors_and_matrices/img/dnd2.png" style="height: 30px; pointer-events: none"><br />|||x = 1:6
   :match_3: <img src="../_static/vectors_and_matrices/img/dnd3.png" style="height: 30px; pointer-events: none"><br />|||x = 1:2:8
   :match_4: <img src="../_static/vectors_and_matrices/img/dnd4.png" style="height: 30px; pointer-events: none"><br />|||x = 1, 2, 3
   :match_5: <img src="../_static/vectors_and_matrices/img/dnd5.png" style="height: 30px; pointer-events: none"><br />|||y = [1, 2]<br />x = [y, y]
   :match_6: MATLAB Error|||x = [5:-1:1]

   The question goes here.


