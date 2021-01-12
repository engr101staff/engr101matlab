MATLAB has a ton of built-in functions for working with vectors and matrices. Below are some common ones that you might find useful:

---------------------------------------------------
Transpose Operator
---------------------------------------------------

The :code:`'` operator implements a **transpose** operation, which basically gives you back a copy of a matrix with the rows turned into columns and columns turned into rows:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <div class="matcrab-setup">
        x = [1,2,3;4,5,6];
      </div>
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <div class="matcrab-workspace list-group matlab-vars"></div>
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

---------------------------------------------------
Flipping and Rotating a Matrix
---------------------------------------------------

Functions for **flipping** and **rotating** a matrix:

* :code:`flipud` - flip a matrix "up/down"
* :code:`fliplr` - flip a matrix "left/right"
* :code:`rot90` - rotate a matrix 90 degrees counter-clockwise

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
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <div class="matcrab-workspace list-group matlab-vars"></div>
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
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <div class="matcrab-workspace list-group matlab-vars"></div>
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
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <div class="matcrab-workspace list-group matlab-vars"></div>
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

---------------------------------------------------
Making Matrices of All Zeros or Ones
---------------------------------------------------

Functions for **creating default matrices** out of zeroes or ones:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
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
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
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
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
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
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
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

---------------------------------------------------
Making the :code:`magic` Matrix
---------------------------------------------------

A function for **creating magic matrices** where all the rows and columns add up to the same number. (This isn't terribly useful, just fun. At least a little bit, maybe.)

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
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


---------------------------------------------------
Getting the Dimensions of a Matrix
---------------------------------------------------

We will be learning how to write *flexible* code; flexible code is code that works correctly for different types and sizes of input data. For example, we might need to analyze a matrix of data but we don't know ahead of time how big that matrix is. Instead, we can design our code to determine some basic characteristics of the matrix that are needed prior to beginning the analysis. Here are some useful functions that give us basic characteristics of vectors of matrices:

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
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <div class="matcrab-workspace list-group matlab-vars"></div>
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
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <div class="matcrab-workspace list-group matlab-vars"></div>
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
            <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <div class="matcrab-workspace list-group matlab-vars"></div>
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

You should be generally familiar with these functions, but nobody memorizes exactly how all these functions work. If you're ever in doubt, you can always consult the MATLAB documentation by using the help search box in MATLAB or searching online. In fact, learning how to efficiently search for programming methods/algorithms online is one of the learning objectives of this course. 


.. image:: img/meme_googling.png
  :width: 350
  :align: center
  :alt: Meme - ENGR 101 Student (googles "how to find number of rows in matlab"). Senior Engineer with 10+ years experience and a master’s degree (googles "how to find number of rows in matlab").


|