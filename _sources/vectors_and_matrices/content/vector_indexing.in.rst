.. admonition:: Video Recap

  The **indexing** operator :code:`( )` allows you to select elements in a vector. Indexing starts at 1. The :code:`end` keyword gives the last index. You can select multiple elements by putting a vector of indices in the :code:`( )`. To select all elements, use the :code:`:` operator in the :code:`( )`.

Here's more examples of the different ways you can specify indices. Feel free to mess around with each to get a handle on what's going on.

Use a **single** number in the parentheses to select **one element**:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [8, 6, 7, 5, 3, 0, 9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x(3);
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

Use a **vector of indices** in the parentheses to select **multiple elements**:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [8, 6, 7, 5, 3, 0, 9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x([3, 5, 1]);
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

Use **range notation** in the parentheses to conveniently select **a range of elements**. The :code:`end` keyword works nicely here so that you don't have to figure out and hardcode the last index.

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [8, 6, 7, 5, 3, 0, 9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x(3:2:end);
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

Use the **colon operator** in the parentheses to select **all elements**. You get them back as a column vector.

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [8, 6, 7, 5, 3, 0, 9];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x(:);
            </textarea>
          </td>
          <td>
          <div class="matcrab-vis" style="height: 350px">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>