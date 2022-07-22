.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <script src="../_static/common/js/common3.js"></script>

.. include:: ../common/include_lobster_exercises.in.rst

.. raw:: html

   <style>
      .btn {
         margin: 0;
      }
      .tab-pane {
         padding: 0;
      }
   </style>

------------------------------------
More Practice:
------------------------------------

.. mchoice:: jh-stringsandcells_09_arrays_02
  :author: Joe Hummel
  :answer_a: 

  .. code-block:: cpp
  
     int  i, N;
     cin >> N;
     
     for (i=0; i<N; i=i+1)
     {
        cout << i << " ";
      }

  :answer_b: 

  .. code-block:: cpp
  
     int  i, N;
     cin >> N;
     
     for (i=1; i<N; i=i+1)
     {
        cout << i << " ";
      }

  :answer_c: 

  .. code-block:: cpp
  
     int  i, N;
     cin >> N;
     
     for (i=0; i<=N; i=i+1)
     {
        cout << i << " ";
      }

  :answer_d: 

  .. code-block:: cpp
  
     int  i, N;
     cin >> N;
     
     for (i=1; i<=N; i=i+1)
     {
        cout << i << " ";
      }

  :correct: a
  :feedback_a: Correct!
  :feedback_b: Incorrect. Review the organization of a typical counting pattern and try again!
  :feedback_c: Incorrect. Review the organization of a typical counting pattern and try again!
  :feedback_d: Incorrect. Review the organization of a typical counting pattern and try again!

  The for loop is a concise way of expressing count pattern. Which version below outputs 0, 1, 2, …, N-1, and then stops?

.. mchoice:: jh-stringsandcells_09_arrays_07
  :author: Joe Hummel
  :answer_a: cout << A{0} << ", " << A{7} << endl;
  :answer_b: cout << A{1} << ", " << A{8} << endl;
  :answer_c: cout << A[0] << ", " << A[7] << endl;
  :answer_d: cout << A[1] << ", " << A[8] << endl;
  :correct: c
  :feedback_a: Incorrect. Arrays are indexed by 0...N-1, and are referenced with [].
  :feedback_b: Incorrect. Arrays are indexed by 0...N-1, and are referenced with [].
  :feedback_c: Correct!
  :feedback_d: Incorrect. Arrays are indexed by 0...N-1, and are referenced with [].

  Suppose A is an integer array with 8 elements.  Which C++ code correctly outputs the first and last elements?

.. mchoice:: jh-stringsandcells_14_arrays_07
  :author: Joe Hummel
  :answer_a: 

  .. code-block:: cpp
  
     counts[c] = counts[c] + 1.0;

  :answer_b: 

  .. code-block:: cpp
  
     c = c – 47;
     counts[c] = counts[c] + 1.0;

  :answer_c: 

  .. code-block:: cpp
  
     c = c – '0';
     counts[c] = counts[c] + 1.0;

  :answer_d: 

  .. code-block:: cpp
  
     c = c – 48;
     counts[c] = counts[c] + 1.0;

  :correct: c
  :feedback_a: Incorrect. Review a typical counting pattern and try again!
  :feedback_b: Incorrect. Review a typical counting pattern and try again!
  :feedback_c: Correct!
  :feedback_d: Incorrect. Review a typical counting pattern and try again!

  Everything in the computer is a number.  The characters '0' .. '9' are the numbers 48 .. 57.  Which code below updates the correct counter based on the first digit?

  .. code-block:: cpp
  
     int c = number[0];

.. mchoice:: jh-stringsandcells_14_arrays_12
  :author: Joe Hummel
  :answer_a: 

  .. code-block:: cpp
  
     double ComputeMedian(int scores[], int N)
     {
        if (N%2 == 0)  // even
        {
           double left  = scores[N/2 – 1];
           double right = scores[N/2];
           return (left + right) / 2.0;
         }

        else
        {
           return scores[N/2];
         }
      }

  :answer_b: 

  .. code-block:: cpp
  
     double ComputeMedian(int scores[], int N)
     {
        if (N%2 == 0)  // even
        {
           double left  = scores[N/2];
           double right = scores[N/2 + 1];
           return (left + right) / 2.0;
         }
         
        else
        {
           return scores[N/2];
        }
     }

  :answer_c: 

  .. code-block:: cpp
  
     double ComputeMedian(int scores[], int N)
     {
        if (N%2 == 0)  // even
        {
           double left  = scores[N/2 - 1];
           double right = scores[N/2 + 1];
           return (left + right) / 2.0;
         }
         
        else
        {
           return scores[N/2];
         }
      }

  :correct: c
  :feedback_a: Incorrect. Review a typical counting pattern and try again!
  :feedback_b: Incorrect. Review a typical counting pattern and try again!
  :feedback_c: Correct!

  Given an array of N integers in sorted order, return the median. If N is odd, the median is the middle value; if N is even, the median is the average of the 2 middle values.

