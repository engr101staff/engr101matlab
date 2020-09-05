Here's some MatCrab examples that showcase what we saw in the video.

Creating a basic matrix:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
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
            <textarea class="form-control matcrab-entry" style="resize: none">
              x = [3,7;2,8]
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

|

You can also use smaller matrices as components:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
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
            <textarea class="form-control matcrab-entry" style="resize: none">
              x = [3,7;2,8];
              z = [x , x]
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

|

And the next time you're at a (socially distanced) party, you can show off this one:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
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
            <textarea class="form-control matcrab-entry" style="resize: none">
              x = [3,7;2,8];
              y = [1,2,3,4,5];
              z = [x,x,[3;4] ; y]
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>