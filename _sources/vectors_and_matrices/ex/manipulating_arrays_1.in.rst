.. mchoice:: ch02_06_ex_manipulating_arrays_01
  :answer_a: x(1,1:4) = 10;
  :answer_b: x(:,1) = 10;
  :answer_c: x(1,:) = 10;
  :correct: c
  :feedback_a: Hmmm…. this answer works for this particular value of :code:`x`, but it won't work for any size matrix. How can this answer be made to work for any size matrix?
  :feedback_b: Oops! Remember that you need to specify the row(s) first, and then the column(s).
  :feedback_c: Correct! The 1 in the row index selects only the first row, while the : for the column indices selects all of the columns.

  Which expression below sets each element in the first row of :code:`x` to have the value 10, no matter how big the matrix is?

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = [4,2,6,3;7,2,4,3;4,6,8,1];
      x(1,:) = 10
    </div>
    
.. mchoice:: ch02_06_ex_manipulating_arrays_02
  :answer_a: x(end,end) = x(end,end) + 1;
  :answer_b: x(3,4) = x(3,4) + 1;
  :answer_c: x = x(end,end) + 1;
  :correct: c
  :feedback_a: Correct! Using the end keywords selects the bottom right element no matter how big the array is. And since we want to change the value in :code:`x(end,end)`, the left hand side of the assignment operation also has :code:`x(end,end)`.
  :feedback_b: Hmmm…. this answer works for this particular value of :code:`x`, but it won’t work for any size matrix. How can this answer be made to work for any size matrix?
  :feedback_c: Almost! The right hand side of this assignment operation selects the correct element and increases its value by 1. But the left hand side of the assignment says to store this new value in :code:`x` (the whole matrix) and we only want to store the new value in one element of :code:`x`.

  What MATLAB code will increase the bottom-right element by 1, no matter how big the array is?

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = [4,2,6,3;7,2,4,3;4,6,8,1];
      x(end,end) = x(end,end) + 1
    </div>