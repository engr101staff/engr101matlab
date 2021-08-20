In this chapter, we'll take a look at how to use MATLAB to manipulate images, like this boat image:

.. figure:: img/boat_color.png
   :width: 400
   :align: center
   :alt: boat_color.png

   *"Speed & Foam", Michel Brousseau*

Before we jump into talking about images, let's review some matrix operations that we'll need  (these will be used on images later in this chapter!). Recall that MATLAB is very efficient at storing numbers in a matrix. These numbers can represent calculations, data, and even colors!

For the following questions, use the matrix :code:`a`:

.. raw:: html

  <div class="container-fluid">
    <center>
    <table><tbody>
      <tr>
        <td>
          <div class="matcrab-vis-exp">
            a = [1 2 3; 4 5 6; 7 8 9];
            a;
          </div>
        </td>
      </tr>
    </tbody></table>
    </center>
    <br />
  </div>



For each of the expressions below, determine the result of the operation. There’s also a MatCrab workspace below the questions you can use to check your work, if you like.

.. list-table::
  :align: left

  * - .. shortanswer:: ch05_03_ex_warm_up_01

        What is the result of multiplying :code:`a` by 2?

    - .. shortanswer:: ch05_03_ex_warm_up_02

        Set all values in :code:`a` greater than 10 equal to zero using logical indexing. What is the result?

MatCrab can help you check any of your work above, if you would like. (To get it to show the result, make sure to store your result in a variable, e.g. :code:`result = a .* 2`.)

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        a = [1 2 3; 4 5 6; 7 8 9]
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-success matcrab-run">Run</a>
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <div class="matcrab-workspace list-group matlab-vars"></div>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

In this chapter, we will be using matrices to represent images, with each cell representing the color of a single pixel.
