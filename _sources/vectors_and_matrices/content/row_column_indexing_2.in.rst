Indexing can actually get kind of complicated, but the good news is there are three common patterns that generally do the trick:


**1** - Selecting a single, specific element by row/column:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [4,2,6,3,8,2;7,2,4,3,1,5;4,6,8,1,0,9];
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
              y = x(1,3);
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

**2** - Selecting a full row or column. For example, here's selecting the second row:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [4,2,6,3,8,2;7,2,4,3,1,5;4,6,8,1,0,9];
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
              y = x(2, :);
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

**3** - Selecting a range of rows/columns. For example, here's how to select every other column:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [4,2,6,3,8,2;7,2,4,3,1,5;4,6,8,1,0,9];
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
              y = x(:, 1:2:end);
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