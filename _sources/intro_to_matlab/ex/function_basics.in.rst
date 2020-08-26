Which of these are correct implementations of a function :code:`square()` that returns the square of a number (e.g. :code:`x * x`)?

.. list-table:: 
  :align: left

  * - .. mchoice:: ch03_02_ex_function_basics_01
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: a
        :feedback_a: Yep, this one is correct! The variable s is computed by multiplying the input x by itself, and the result is returned since s is designated as the return variable.
        :feedback_b: This one is actually ok. The variable s is computed by multiplying the input x by itself, and the result is returned since s is designated as the return variable.

        .. code-block:: matlab

          function [ s ] = square( x )
            s = x .* x;
          end

    - .. mchoice:: ch03_02_ex_function_basics_02
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: b
        :feedback_a: This one has an error. Check the input parameter and return variable...something's not quite right there.
        :feedback_b: You're right, this one has an error. In particular, the input and return variables are switched around in the function header. s should be the return variable (output) and x should be the input parameter.

        .. code-block:: matlab

          function [ x ] = square( s )
            s = x .* x;
          end

  * - .. mchoice:: ch03_02_ex_function_basics_03
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: b
        :feedback_a: This one has an error. It has to do with the way MATLAB specifies what gets returned from a function.
        :feedback_b: You're right, this one has an error. Some programming languages use an explicit return statement, but in MATLAB you never have to type "return". Instead, the function should specify what variables to return inside of the square brackets [ ].

        .. code-block:: matlab

          function [  ] = square( x )
            return = x .* x;
          end

    - .. mchoice:: ch03_02_ex_function_basics_04
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: b
        :feedback_a: This one has an error. It has to do with the syntax in the function header.
        :feedback_b: You're right, this one has an error. The return variable must be specified with square brackets [ ] rather than parentheses ( ). MATLAB and other programming languages are pretty strict about syntax, but the good news is MATLAB will generally underline syntax errors as you're writing the code so that you can fix it.

        .. code-block:: matlab

          function ( s ) = square( x )
            s = x .* x;
          end


  * - .. mchoice:: ch03_02_ex_function_basics_05
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: a
        :feedback_a: Yep, this one is correct! It is fine to use the same variable for input and to return (for output). x starts with the input value, and is then updated inside the function before its new value is returned.
        :feedback_b: This one is actually ok. It is fine to use the same variable for input and to return (for output). x starts with the input value, and is then updated inside the function before its new value is returned.

        .. code-block:: matlab

          function [ x ] = square( x )
            x = x .* x;
          end

    - .. mchoice:: ch03_02_ex_function_basics_06
        :answer_a: Correct
        :answer_b: Incorrect
        :correct: b
        :feedback_a: This one has a sneaky mistake. It actually computes and returns the right value, but it does not follow best design practices for functions... See if you can identify what's wrong on your own, or select "incorrect" and check the answer to see an explanation.
        :feedback_b: Although this implementation computes the right answer, it doesn't suppress output for individual computations. We don't want noisy functions, so each of the assignments in the implementation should end with a semicolon ; to suppress the output.

        .. code-block:: matlab

          function [ res ] = square( x )
            s = x .* x
            res = s
          end
