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

.. mchoice:: jh-stringsandcells_15_arrays_06
  :author: Joe Hummel
  :answer_a: 

  .. code-block:: cpp
  
     N = N + 1;
     scores[N] = score;

  :answer_b: 

  .. code-block:: cpp
  
     scores[N] = score;
     N = N + 1;

  :answer_c: 

  .. code-block:: cpp
  
     scores[i] = score;
     i = i + 1;

  :answer_d: 

  .. code-block:: cpp
  
     score = scores[i];
     i = i + 1;

  :correct: d
  :feedback_a: Incorrect. Review a typical file input array pattern and try again!
  :feedback_b: Incorrect. Review a typical file input array pattern and try again!
  :feedback_c: Incorrect. Review a typical file input array pattern and try again!
  :feedback_d: Correct!

  Complete the input function, which reads the data and stores the scores into the array.

  .. code-block:: cpp

  int InputData(string filename, int scores[])
  {
     ifstream  file;
     int       uin, score, i, N;
     
     file.open(filename.c_str());
     if (!file.is_open())
     {
        cout << … << endl;
        exit(-1);
      }
      
     file >> uin;
     file >> score;
     
     N = 0;
     
     while (uin != -1)
     {
        ____________________ ;
        ____________________ ;
        
        file >> uin;
        file >> score;
      }

.. mchoice:: jh-stringsandcells_15_arrays_07
  :author: Joe Hummel
  :answer_a: Loop should be i<=N
  :answer_b: Sum should be int
  :answer_c: Failed to initialize sum to 0
  :answer_d: zybooks is broken
  :correct: c
  :feedback_a: Incorrect. Review a typical sum array pattern and try again!
  :feedback_b: Incorrect. Review a typical sum array pattern and try again!
  :feedback_c: Correct!
  :feedback_d: Incorrect. Review a typical sum array pattern and try again!

  Given an array of N integers, this function computes the average.  It works on Visual Studio, but not on zybooks.  Why not?
  
  .. code-block:: cpp

  double ComputeAvg(int scores[], int N)
  {
     double sum, avg = 0.0;
     
     for (int i=0; i<N; i=i+1)
     {
        sum = sum + scores[i];
      }
      
     avg = sum / N;
     
     return avg;
   }

.. mchoice:: jh-stringsandcells_16_arrays_03
  :author: Joe Hummel
  :answer_a: The loops are missing { }
  :answer_b: The average is wrong due to integer division
  :answer_c: Both the average & variance are wrong due to integer division
  :answer_d: The temp array should be int, not double
  :answer_e: The 3rd loop needs to reset sum back to 0.0
  :correct: c
  :feedback_a: Incorrect. Review a typical sum array pattern and try again!
  :feedback_b: Incorrect. Review a typical sum array pattern and try again!
  :feedback_c: Correct!
  :feedback_d: Incorrect. Review a typical sum array pattern and try again!
  :feedback_e: Incorrect. Review a typical sum array pattern and try again!

  What's wrong with this version of StandardDev?  It’s off by just a little… Your output is 3.21131, whereas the expected output is 2.18232.
  
  .. code-block:: cpp

  double StandardDev(int A[], int N)
  {
     double  result = -1.0;
     ouble  avg, variance, sum = 0.0;
     double  temp[1000];
     
     for (int i=0; i<N; i=i+1)
     sum = sum + A[i];
     
     avg = sum / N;
     
     for (int i=0; i<N; i=i+1)
     temp[i] = pow(A[i]-avg, 2.0);
     
     for (int i=0; i<N; i=i+1)
     sum = sum + temp[i];
     
     variance = sum / N;
     result = sqrt(variance);
     
     return result;
   }

.. mchoice:: jh-stringsandcells_16_arrays_05
  :author: Joe Hummel
  :answer_a: Because C++ doesn’t allow functions to return an array
  :answer_b: Because the array is only of size 5, which is too small to bother
  :answer_c: Since A is an array parameter, it makes more sense for hist to be an array parameter
  :answer_d: Because there are 3 exam arrays, there must be 3 hist arrays
  :correct: a
  :feedback_a: Correct!
  :feedback_b: Incorrect. Review arrays as function parameters and try again!
  :feedback_c: Incorrect. Review arrays as function parameters and try again!
  :feedback_d: Incorrect. Review arrays as function parameters and try again!

  Why does Histogram have “hist” parameter? Why doesn’t function return array?
  
  .. code-block:: cpp
  void  Histogram(int A[], int N, int hist[])
  {
     int main()
     {
        int  exam1[1000];
        int  exam2[1000];
        int  exam3[1000];
        int  N;
        .
        .
        .

        int  hist[5];
        Histogram(exam1, N, hist);
     }
  }

.. mchoice:: jh-stringsandcells_17_arrays_04
  :author: Joe Hummel
  :answer_a: The loops are missing { }
  :answer_b: The average is wrong due to integer division
  :answer_c: Both the average & variance are wrong due to integer division
  :answer_d: The temp array should be int, not double
  :answer_e: The 3rd loop needs to reset sum back to 0.0
  :correct: c
  :feedback_a: Incorrect. Review a typical sum array pattern and try again!
  :feedback_b: Incorrect. Review a typical sum array pattern and try again!
  :feedback_c: Correct!
  :feedback_d: Incorrect. Review a typical sum array pattern and try again!
  :feedback_e: Incorrect. Review a typical sum array pattern and try again!

  What's wrong with this version of StandardDev?  It’s off by just a little… Your output is 3.21131, whereas the expected output is 2.18232.
  
  .. code-block:: cpp