You have thrown an item. Create a new MATLAB script to calculate the item's :math:`(x,y)` position for an initial speed of 40 m/s and angle of pi/4 radians (45 degrees) over the course of 15 seconds.

Use the same MATLAB statements we discussed above:

.. code-block:: matlab

  x = v0 .* cos(theta) .* t
  y = v0 .* sin(theta) .* t - 9.8 .* t.^2 ./ 2

Hint: Create a "starter set" of data for :code:`t` consisting of equally spaced numbers using either linspace or the range operator (:code:`:`). Then calculate :code:`x` and :code:`y`.

After you calculate :code:`x` and :code:`y`, plot the y values vs the x values using the :code:`plot()` function, but only plot the (x,y) pairs that correspond to when the item would be above the ground. (Hint: use logical indexing to select where y > 0!)