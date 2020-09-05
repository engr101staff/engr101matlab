
.. raw:: html

  <link rel="stylesheet" href="../../_static/common/css/matlab.css">
  <script src="../../_static/common/js/exercises.bundle.js"></script>


.. qnum::
   :prefix: Q
   :start: 1

=====================
 Vectors and Matrices
=====================


.. admonition:: TODO

  This isn't a real lecture, I was just playing around with some features.

.. raw:: html

  <div class="container-fluid alert alert-warning">
    <div style="text-align: center; font-weight: bold; border-bottom: solid 1px #cccccc; padding-bottom: 5px; margin-bottom: 5px">
      <image src="/_static/common/img/crabster.jpg" style="height: 2em">
      MatCrab Exercise
    </div>
    <div style="margin-left: auto; margin-right: auto" id="exercise-group" class="matcrab-variable-exercise-group"></div>
    <div style="margin-top: 10px">
      <div class="col-xs-4" style="background-color:lavender;">
          <div style="text-align: center;">Workspace Variables</div>
          <ul class="list-group matlab-vars" id = "vars" ></ul>
      </div>
      <div class="col-xs-8">
          <textarea id="expression_in" class="form-control matlab-entry" rows="2"></textarea>
          <div class="matcrab-visualization" style="max-height: 300px" id = "visualization">

          </div>
          <div class="matcrab-visualization" style="max-height: 300px" id = "ansVisualization">

          </div>
      </div>
    </div>
  </div>

.. fillintheblank:: vectors_and_matrices_01
  :casei:

  Complete the MatCrab exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :banana: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.

  
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

.. raw:: html

  <div class="container-fluid alert alert-warning">
    <div class="matcrab-vis-exp">[1,2,3]</div>
  </div>

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

