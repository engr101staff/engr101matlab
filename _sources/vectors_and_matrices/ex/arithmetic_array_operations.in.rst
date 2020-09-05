Assume you have these variables :code:`a`, :code:`b`, :code:`c`, and :code:`d`:

.. raw:: html

  <div class="container-fluid">
    <table><tbody>
      <tr>
        <td>
          <div class="matcrab-vis-exp">
            a = [3,4,2;6,5,1];
            a
          </div>
        </td>
        <td>
          <div class="matcrab-vis-exp">
            b = [2,1,4;1,3,7];
            b
          </div>
        </td>
        <td>
          <div class="matcrab-vis-exp">
            c = 1;
            c
          </div>
        </td>
        <td>
          <div class="matcrab-vis-exp">
            d = [1,7;2,5];
            d
          </div>
        </td>
      </tr>
    </tbody></table>
    <br />
  </div>

For each of the expressions below, determine the result of the operation (or if there is an error, explain what is wrong). There's also a MatCrab workspace below the questions you can use to check your work, if you like.

.. tip::
  If you're working on a laptop, you can open this page in two windows side-by-side so that you can view the content above and the questions below at the same time!

.. list-table:: 
  :align: left

  * - .. shortanswer:: ch02_03_ex_arithmetic_array_operations_01

        What is the result of :code:`a*b`?

    - .. shortanswer:: ch02_03_ex_arithmetic_array_operations_02

        What is the result of :code:`b - c .* 2`?

  * - .. shortanswer:: ch02_03_ex_arithmetic_array_operations_03

        What is the result of :code:`d ./ c`?

    - .. shortanswer:: ch02_03_ex_arithmetic_array_operations_04

        What is the result of :code:`a + d`?

  * - .. shortanswer:: ch02_03_ex_arithmetic_array_operations_05

        What is the result of :code:`10 - d`?

    - .. shortanswer:: ch02_03_ex_arithmetic_array_operations_06

        What is the result of :code:`a .* b`?

MatCrab can help you check any of your work above, if you would like.

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        a = [3,4,2;6,5,1];
        b = [2,1,4;1,3,7];
        c = 1;
        d = [1,7;2,5];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
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