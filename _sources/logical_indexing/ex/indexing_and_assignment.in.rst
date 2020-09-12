Assume you have matrices :code:`A` and :code:`B`:

.. raw:: html

  <div class="container-fluid">
    <table><tbody>
      <tr>
        <td>
          <div class="matcrab-vis-exp">
            A = [2,6,-2;8,7,-11;3,18,9];
            A
          </div>
        </td>
        <td>
          <div class="matcrab-vis-exp">
            B = [2,-4,-2;8,5,-11;3,-2,9];
            B
          </div>
        </td>
      </tr>
    </tbody></table>
    <br />
  </div>

Using logical indexing, do the following:

- Count the number of elements that match (i.e. same location, same value) between :code:`A` and :code:`B`, but don't count negative numbers. Place the result in a variable called :code:`result`. (Do this before the other exercises that change A and B.)
- Double all elements in A that are less than 5.
- Set all matrix elements in B to their absolute value. (Hint: select only the negative elements and multiply them by -1.)

Each of these operations should only require one line of code (though you can also do them with multiple lines and an intermediate variable for the indexing result).

.. raw:: html

  <div class="matcrab-variable-target-exercise container-fluid alert alert-warning">
    <div class="matcrab-setup">
      A = [2,6,-2;8,7,-11;3,18,9];
      B = [2,-4,-2;8,5,-11;3,-2,9];
    </div>
    <div class="matcrab-variable-target" data-name="result">
      4
    </div>
    <div class="matcrab-variable-target" data-name="A">
      [4,6,-4;8,7,-22;6,18,9]
    </div>
    <div class="matcrab-variable-target" data-name="B">
      [2,4,2;8,5,11;3,2,9]
    </div>
    <div class="matcrab-exercise-complete">
      Well done! The secret word is "starfish".
    </div>
    <div style="text-align: center; font-weight: bold; border-bottom: solid 1px #cccccc; padding-bottom: 5px; margin-bottom: 5px">
      
      <image src="../_static/common/img/crabster.jpg" style="height: 2em">
      MatCrab Exercise
        <a role="button" class="btn btn-warning matcrab-reset" style="margin-left: 1.5em">Reset</a>
    </div>
    <div style="text-align:center; font-weight: bold">Variable Targets:</div>
    <div style="margin-left: auto; margin-right: auto" class="matcrab-exercise-status matcrab-variable-exercise-group"></div>
    <div style="margin-top: 10px">
      <div class="col-xs-4" style="background-color:lavender;">
          <div style="text-align: center;">Workspace Variables</div>
          <ul class="matcrab-workspace list-group matlab-vars" ></ul>
      </div>
      <div class="col-xs-8">
          <textarea class="form-control matcrab-entry matlab-entry" rows="2" style="margin-bottom: 10px"></textarea>
          <div class="matcrab-vis matcrab-visualization" style="height: auto; min-height: 300px">

          </div>
      </div>
    </div>
  </div>

.. fillintheblank:: ch05_05_ex_indexing_and_assignment
  :casei:

  Complete the MatCrab exercise to reveal the *secret word*. Enter it here.
  
  |blank|

  - :starfish: Correct.
    :x: Incorrect. If you finished the exercise, please double check your spelling.