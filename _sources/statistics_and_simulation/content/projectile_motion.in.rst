Let's practice simulating a process in MATLAB. Projectile motion is a well-known process: you see projectile motion anytime you throw something through the air. In the real world, there are a lot of things going on when you throw an item through the air: the initial speed you give to the item, the angle that you throw it at relative to the ground, drag, lift, gravity, cross winds... there's a lot. Too much for what we want to practice with today, so we'll make some assumptions:

1. We assume that only gravity is acting on this item; we will neglect drag, lift, cross-winds, ill-timed flying insects, etc.

2. We assume that we are all excellent throwers, and we can throw an item with exactly the stated initial speed, :math:`v_0`, and initial angle to the ground, :math:`θ`.

Given these assumptions, our thrown item's position over time is given by these equations:

.. math::

  \begin{aligned}
  x & = v_0 \cos(\theta) t \\
  y & = v_0 \sin(\theta) t - \frac{1}{2} g t^2
  \end{aligned}

where :math:`t` is time, :math:`x` is the horizontal distance at time :math:`t`, :math:`y` is the vertical distance at time :math:`t`, :math:`v_0` is the initial speed of the item at time :math:`t = 0`, :math:`\theta` is the initial angle of the item at time :math:`t = 0`, and :math:`g` is the gravitational acceleration (we will assume :math:`g = 9.8` m/s\ :sup:`2`).

These are well-established equations governing this simplified projectile motion, but MATLAB can't understand these equations -- these are math equations! Before we can simulate our item's projectile motion, we need to translate these math equations into statements that MATLAB can execute: 

.. code-block:: matlab

  x = v0 .* cos(theta) .* t
  y = v0 .* sin(theta) .* t - 9.8 .* t.^2 ./ 2

In these statements, :code:`t` is a vector representing time values (with units of seconds), :code:`x` is a vector representing horizontal distance (in meters) based on the values in the vector :code:`t`, :code:`y` is a vector representing vertical distance (in meters) based on the values in the vector :code:`t`, :code:`v0` is the initial speed (in m/s) of the item at time :math:`t = 0`, :code:`theta` is the initial angle (in radians) of the item at time :math:`t = 0`, and the :math:`g` was replaced with :code:`9.8` since we assume that the gravitational acceleration is constant and is in m/s\ :sup:`2`.