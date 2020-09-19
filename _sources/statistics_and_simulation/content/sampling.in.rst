Many engineering processes depend on random variables. A random variable is a variable that we know exists (like speed or mass), but don't know ahead of time what the value of the variable will be. We might know a range of potential values, such as with the battery example above, or we might know some statistical measures, such as maximum, minimum, mean, mode, median, variance, and standard deviation. Not knowing the value of a variable creates uncertainty in the system, and we handle that *uncertainty* through *probabilities*.

You may have heard of the *Normal Distribution* or "bell-curve". A *normally-distributed* set of data is characterized, in part, by a histogram that is symmetrical about the mean of the data set. Here is an example of a histogram of normally-distributed data:


.. figure:: img/NarrowDistLargeN.png
  :width: 450
  :align: center
  :alt: A histogram showing a normally-distributed data set that follows a "bell curve"

  ..

A normally-distributed set of data is fully defined by its mean and standard deviation. So, another way to create a starter set of data is to create random samples from a probability distribution.

MATLAB provides functions for sampling from a variety of probability distributions. This allows us to run simulations of random variables if we know the parameters of their distributions. For example, to simulate a uniform discrete distribution, we use the :code:`randi` function:

.. youtube:: JR8ITVgFtKM
  :divid: ch07_09_vid_randi
  :height: 315
  :width: 560
  :align: center

|

To recap, the :code:`randi` function picks pseudo random numbers:

.. figure:: img/RandiExplained.png
  :width: 450
  :align: center
  :alt: A histogram showing a normally-distributed data set that follows a "bell curve"

  ..

Here are two examples of using :code:`randi` to simulate rolling a die a 6-sided die on the left and a 20-sided die on the right:

.. figure:: img/RandiExamples.png
  :width: 450
  :align: center
  :alt: A histogram showing a normally-distributed data set that follows a "bell curve"

  ..

Feel free to try out other examples here:


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
              x = randi(5,2,4);
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

Here's a few practice exercises. In each, identify the :code:`randi()` call that could have produced the given matrix.

.. mchoice:: ch07_09_sampling_01
  :answer_a: x = randi(2,1,5);
  :answer_b: x = randi(1,5,2);
  :answer_c: x = randi(1,2,5);
  :answer_d: x = randi(5,1,2);
  :correct: a
  :feedback_a: Correct! This vector has pseudo random values between 1 and 2, so imax = 2. There is 1 row and 5 columns.
  :feedback_b: Try Again! Remember that the order of the arguments to randi is: imax, number of rows, number of columns
  :feedback_c: Try Again! Remember that the order of the arguments to randi is: imax, number of rows, number of columns
  :feedback_d: Try Again! Remember that the order of the arguments to randi is: imax, number of rows, number of columns

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = [2, 1, 1, 2, 1];
      x
    </div>

.. mchoice:: ch07_09_sampling_02
  :answer_a: x = randi(6,5,3);
  :answer_b: x = randi(3,6,4);
  :answer_c: x = randi(4,3,6);
  :answer_d: x = randi(5,3,6);
  :correct: d
  :feedback_a: Try Again! Remember that the order of the arguments to randi is: imax, number of rows, number of columns
  :feedback_b: Try Again! Remember that the order of the arguments to randi is: imax, number of rows, number of columns
  :feedback_c: Almost! This statement does create a 3x6 matrix with pseudo random values. Take a look at the value of element x(2,1), though.
  :feedback_d: Correct! This vector has pseudo random values between 1 and 5, so imax = 5. There is 1 row and 6 columns.

  .. raw:: html

    <div class="matcrab-vis-exp">
      x = [2, 3, 3, 1, 1, 3;
          5, 4, 2, 2, 2, 4;
          4, 1, 3, 1, 2, 3];
      x
    </div>

Probability distributions aren't too bad if there is only one. But if you are working with a system that has multiple random variables (and most engineering systems have at least one random variable, and many systems have lots of random variables!), then trying to find a probability distribution that covers all the random variables quickly becomes impossible.

So. Probability is hard. But vectorization is easy! We can use MATLAB to pick values for each random variable individually and calculate the overall outcomes by combining them together. If we do this over and over, and we do it enough times, we can see how systems work for different ranges of input data, even if we can't figure out the math equation for the overall probabilities. Let's look at an example...