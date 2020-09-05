To recap, range notation uses the colon operator (:code:`:`) in this pattern:

.. raw:: html

  <div class="container-fluid" style="text-align: center">

:code:`first:step:last`

.. raw:: html

  </div>

- :code:`first` - the starting value; this will be the value of the first element in the vector
- :code:`step` - how much to add to the previous value in the vector; the total value will be placed in the next element in the vector (if omitted, defaults to 1)
- :code:`last` - the ending value of the vector; if adding the value of step creates a value beyond last, then the element is not created

Here's a MatCrab, if you want to try it out yourself:

.. raw:: html

  <div class="container-fluid">
    <div class="matcrab-example">
      <table><tbody>
        <tr>
          <td style="text-align: center">
            <img src="/_static/common/img/crabster.jpg" style="height: 35px" />
            <br />
            <a role="button" class="btn btn-success matcrab-run">Run</a>
            <br />
            <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
          </td>
          <td>
            <textarea class="form-control matcrab-entry" style="resize: none">
              1:3:10
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