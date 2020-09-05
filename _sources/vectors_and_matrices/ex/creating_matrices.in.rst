Using the matrix :code:`a` and the vector :code:`b`, create the matrix :code:`c`:

.. hint::

  You want to put two copies of :code:`b` on top of each other *before* attaching a copy of :code:`a` to the side. If MATLAB doesn't do these operations in the correct order, you can use an extra set of square brackets :code:`[ ]` around part of your matrix construction expression to control "order of operations", just like you might use parentheses :code:`( )` for a regular expression.

  (Or, you can also do the two steps on two different lines using an intermediate variable!)

.. raw:: html

  <div class="matcrab-variable-target-exercise container-fluid alert alert-warning">
    <div class="matcrab-setup">
      a = [3,6;9,8];
      b = [1 6 11 16 21];
    </div>
    <div class="matcrab-variable-target" data-name="c">
      [1,6,11,16,21,3,6;
      1,6,11,16,21,9,8]
    </div>
    <div class="matcrab-exercise-complete">
      Well done! The secret word is "noodle".
    </div>
    <div style="text-align: center; font-weight: bold; border-bottom: solid 1px #cccccc; padding-bottom: 5px; margin-bottom: 5px">
      
      <image src="../_static/common/img/crabster.jpg" style="height: 2em">
      MatCrab Exercise
    </div>
    <div style="margin-left: auto; margin-right: auto" class="matcrab-exercise-status matcrab-variable-exercise-group"></div>
    <div style="margin-top: 10px">
      <div class="col-xs-4" style="background-color:lavender;">
          <div style="text-align: center;">Workspace Variables</div>
          <ul class="matcrab-workspace list-group matlab-vars" ></ul>
      </div>
      <div class="col-xs-8">
          <textarea class="form-control matcrab-entry matlab-entry" rows="2" style="margin-bottom: 10px"></textarea>
          <div class="matcrab-vis matcrab-visualization" style="max-height: 300px">

          </div>
      </div>
    </div>
  </div>

.. fillintheblank:: ch02_02_ex_creating_matrices
  :casei:

  Complete the MatCrab exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :noodle: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.