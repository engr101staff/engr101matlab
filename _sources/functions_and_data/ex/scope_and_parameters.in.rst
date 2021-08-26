Consider each of the following programs, which attempt to define and call a function for the *dot-product* of two vectors (multiply the two vectors, element-by-element, and then add it all up). If the program is correct, simply write "correct". However, if the program contains a mistake, write a brief explanation of the mistake in terms of scopes, parameters, and/or return values in the MATLAB program.

.. list-table:: 
  :align: left

  * - .. shortanswer:: ch03_05_ex_scope_and_parameters_01

        Program 1

        :file:`dot_product.m`

        .. code-block:: matlab

          function [result] = dot_product(x, y)
            result = sum(x .* y);
          end

        :file:`Script.m`
        
        .. code-block:: matlab

          x = [1, 2, 3];
          y = [1, 2, 3];
          dot_product(x, y);
          disp(result);

        |

    - .. shortanswer:: ch03_05_ex_scope_and_parameters_02

        Program 2

        :file:`dot_product.m`

        .. code-block:: matlab

          function [result] = dot_product(a, b)
            result = sum(a .* b);
          end

        :file:`Script.m`
        
        .. code-block:: matlab

          x = [1, 2, 3];
          y = [1, 2, 3];
          disp(dot_product(x, y));

        |

  * - .. shortanswer:: ch03_05_ex_scope_and_parameters_03

        Program 3

        :file:`dot_product.m`

        .. code-block:: matlab

          function [result] = dot_product()
            result = sum(a .* b);
          end

        :file:`Script.m`
        
        .. code-block:: matlab

          a = [1, 2, 3];
          b = [1, 2, 3];
          result = dot_product();
          disp(result);

        |

    - .. shortanswer:: ch03_05_ex_scope_and_parameters_04

        Program 4

        :file:`dot_product.m`

        .. code-block:: matlab

          function [result] = dot_product(x, y)
            result = sum(x .* y);
          end

        :file:`Script.m`
        
        .. code-block:: matlab

          a = [1, 2, 3];
          b = [1, 2, 3];
          result = dot_product(x, y);
          disp(result);