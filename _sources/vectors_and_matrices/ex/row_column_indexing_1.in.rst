Here's a few practice exercises so you can get the syntax down:

.. mchoice:: ch02_05_ex_row_column_indexing_01
  :answer_a: x[2, 3]
  :answer_b: x(3, 2)
  :answer_c: x(2, 3)
  :answer_d: x(4)
  :correct: c
  :feedback_a: Oops! Remember that indexing uses :code:`( )` not :code:`[ ]`.
  :feedback_b: Oops! Remember that you need to specify the row(s) first, and then the column(s).
  :feedback_c: Correct! This element is in row 2, column 3.
  :feedback_d: Oops! 4 is the correct value, but you need to select by the location (i.e. row and column).

  Which expression below selects the element shown from the matrix :code:`x`?

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = [4,2,6,3;7,2,4,3;4,6,8,1];
      y = x(2,3)
    </div>

.. mchoice:: ch02_05_ex_row_column_indexing_02
  :answer_a: y = x(7, 3, 3)
  :answer_b: y = x(2,[1,4,4])
  :answer_c: y = x(2,[1,4])
  :correct: b
  :feedback_a: The 7, 3, and 3 are the values in the elements of :code:`x`. Think about how you index into x to select the elements that have those values.
  :feedback_b: Correct! The 2 in the row index selects only the second row, while :code:`[1,4,4]` for the column indices selects the first element in the second row, the fourth element, and then the fourth element again.
  :feedback_c: Almost! This statement selects the correct elements, but we want to select one of the elements twice. How can you do that with indexing?

  Which expression below selects the element shown from the matrix :code:`x`?

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = [4,2,6,3;7,2,4,3;4,6,8,1];
      y = x(2,[1,4,4])
    </div>