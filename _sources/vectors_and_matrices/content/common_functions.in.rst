MATLAB has a ton of built-in functions for working with vectors and matrices. Here are some common ones that you might find useful:

The :code:`'` operator implements a **transpose** operation, which basically gives you back a copy of a matrix with the rows turned into columns and columsn turned into rows:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [1,2,3;4,5,6];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = x'
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|

Functions for **flipping** and **rotating** a matrix:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [1,2,3;4,5,6];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = flipud(x)
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [1,2,3;4,5,6];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = fliplr(x)
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [1,2,3;4,5,6];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = rot90(x)
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|

Functions for **creating default matrices** out of zeroes or ones:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              mat = zeros(4)
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|
  
.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              mat = zeros(3, 5)
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|
  
.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">=
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              y = ones(4)
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              mat = ones(3,1)
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|

A function for **creating magic matrices** where all the rows and columns add up to the same number. (This isn't terribly useful, just fun. At least a little bit, maybe.)

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              mat = magic(4)
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

And functions for getting the dimensions of a vector or matrix:

- :code:`numel(x)` yields the # of elements in :code:`x`
- :code:`length(x)` yields the # of elements along the longest dimension of :code:`x`
- :code:`size` yields a vector with the # of elements along each dimension of :code:`x`
  - For 2D matrices, this is a vector containing :code:`[# of rows, # of cols]`

|

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [1,2,3,4;5,6,7,8];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              n = numel(x)
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [1,2,3,4;5,6,7,8];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              n = length(x)
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [1,2,3,4;5,6,7,8];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              n = size(x)
            </textarea>
          </td>
          <td>
            <div class="matcrab-vis" style="height: auto;">
            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  </div>

|

You should be generally familiar with these functions, but nobody memorizes exactly how all these functions work. If you're ever in doubt, you can always consult the MATLAB documentation by using the help search box in MATLAB or searching online.