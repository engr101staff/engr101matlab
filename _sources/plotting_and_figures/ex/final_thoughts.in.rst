As an engineer, it's very possible that your graphs will out-live you, and that they will go on to have a life of their own. As a responsible engineer, you need to make clear graphs that can "stand on their own" (e.g., it is obvious what they are trying to convey). Here are some good practices to follow.

**1. Don't be misleading in your plots.**

.. image:: img/misleading.png
  :width: 560
  :align: center
  :alt: A misleading y-axis.
  
|

In the top graph above, it looks like there's a big different between all of the groups. But, that graph is really just showing a small segment of the y-axis. If we zoom out and look at the graph in perspective, when the y-axis starts at 0, we see that there's very little difference between the groups. It's important to make sure that your graphs are communicating the truth about your data. For more information, check out this `Wikipedia page <https://en.wikipedia.org/wiki/Misleading_graph>`_.

**2. Do maximize your "Signal-Noise Ratio".**

Consider these two graphs:

.. image:: img/signal_noise.png
  :width: 560
  :align: center
  :alt: Two different ways of plotting wave elevation comparison.
  
|

Both graphs are presenting the same information. Which graph is easier to understand? The second one is much clearer! The second one frames the data more clearly; the audience doesn't have to hunt for the data or try to puzzle out what the meaning of the graph is. If you make your audience work too hard, you've lost them.

Here are a few things we can learn from these graphs:

* Use legends vs. labels appropriately (the first graph uses a legend; the second uses labels).
* If you HAVE to have a title, it should describe what your audience should learn from the graph.
* Plot on a white background.
* Include horizontal and vertical grid lines (unless you have a REALLY good reason not to).
* Choose high contrast colors (watch out for color blindness!).

For more inspiration, check out `reddit.com/r/dataisbeautiful <https://reddit.com/r/dataisbeautiful>`_.
