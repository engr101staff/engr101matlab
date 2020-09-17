
Which is the correct call to linspace to create these vectors?

.. mchoice:: ch07_07_linspace_intro_01
  :answer_a: x = linspace(0,20,6);
  :answer_b: x = linspace(0,6,20); 
  :answer_c: x = linspace(0,4,20);
  :answer_d: x = linspace(0,20,4);
  :correct: a
  :feedback_a: Correct! This vector starts at 0, ends at 20, and has 6 elements.
  :feedback_b: Try Again! Remember that the order of the arguments to linspace is: start, end, number of elements.
  :feedback_c: Try Again! Remember that the order of the arguments to linspace is: start, end, number of elements.
  :feedback_d: Almost! Remember that the last argument is the number of elements, not the step size.

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = linspace(0,20,6);
      x
    </div>
    
.. mchoice:: ch07_07_linspace_intro_02
  :answer_a: x = linspace(5,10,-4);
  :answer_b: x = linspace(5,-1,10);
  :answer_c: x = linspace(5,-4,10);
  :answer_d: x = linspace(5,-4,-1);
  :correct: c
  :feedback_a: Try Again! Remember that the order of the arguments to linspace is: start, end, number of elements
  :feedback_b: Try Again! Remember that the order of the arguments to linspace is: start, end, number of elements
  :feedback_c: Correct! This vector starts at 5, ends at -4, and has 10 elements. MATLAB was able to recognize that the start value was more positive than the end value, so it "counted down" instead of "up". 
  :feedback_d: Almost! Remember that the last argument is the number of elements, not the step size.

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = linspace(5,-4,10);
      x
    </div>