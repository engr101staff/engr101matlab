.. qnum::
   :prefix: Q
   :start: 1

.. raw:: html

   <link rel="stylesheet" href="../_static/common/css/matlab.css">
   <script src="../_static/common/js/common3.js"></script>
   <script src="../_static/common/js/matcrab-exercises2.bundle.js"></script>

============================
Introduction to Control Flow
============================

.. admonition:: Chapter Files

  We'll be using several files throughout this chapter's exercises. It might be helpful to go ahead and download each of them now and move them to your current folder in MATLAB. (It's also a good idea to go ahead and create a new folder for this chapter and use that as your current folder, so that you don't clutter up whatever else you were working on.)

  .. list-table:: 
    :align: left
    :widths: auto

    * - :download:`words.txt <../_static/intro_to_control_flow/words.txt>`

      - .. reveal:: words_txt_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>words.txt</code>

          .. literalinclude:: ../_static/intro_to_control_flow/words.txt

      - A list of the 1000 most commonly occurring words in the English language

    * - :download:`loadWords.m <../_static/intro_to_control_flow/loadWords.m>`

      - .. reveal:: loadWords_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>loadWords.m</code>

          .. literalinclude:: ../_static/intro_to_control_flow/loadWords.m
            :language: matlab

      - Helper function to load words from :file:`words.txt`

    * - :download:`wordGame.m <../_static/intro_to_control_flow/wordGame.m>`

      - .. reveal:: wordGame_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>wordGame.m</code>

          .. literalinclude:: ../_static/intro_to_control_flow/wordGame.m
            :language: matlab

      - Starter script file for a word-guessing game in MATLAB

    * - :download:`scramble.m <../_static/intro_to_control_flow/scramble.m>`

      - .. reveal:: scramble_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>scramble.m</code>

          .. literalinclude:: ../_static/intro_to_control_flow/scramble.m
            :language: matlab

      - A function file for scrambling words

    * - :download:`playRound.m <../_static/intro_to_control_flow/playRound.m>`

      - .. reveal:: playRound_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>playRound.m</code>

          .. literalinclude:: ../_static/intro_to_control_flow/playRound.m
            :language: matlab

      - A function implementing a single round of the word-guessing game as an abstraction

    * - :download:`wordGame_solution.m <../_static/intro_to_control_flow/wordGame_solution.m>`

      - .. reveal:: wordGame_solution_m_preview
          :showtitle: Preview
          :modal:
          :modaltitle: <code>wordGame_solution.m</code>

          .. literalinclude:: ../_static/intro_to_control_flow/wordGame_solution.m
            :language: matlab

      - The final solution script for the word-guessing game

  .. reveal:: intro_to_control_flow_download_instructions
    :showtitle: Download Instructions
    :modal:
    :modaltitle: File Download Instructions for MATLAB
    
    .. include:: ../common/matlab_download_instructions.in.rst

^^^^^^^^^^^^
Introduction
^^^^^^^^^^^^
.. section 1

So far, we have written programs whose algorithms are pretty much a list of steps that are executed one at a time. However, there are a lot of scenarios where we want to do more complicated things with  our programs!

.. youtube:: 7w56dFTzEpg
   :divid: ch10_01_vid_control_flow_introduction
   :height: 315
   :width: 560
   :align: center

|

Before we begin programming, we engage in **program design**, which is the process of planning out the algorithm that we're going to code.

.. tip::

    Other than abstraction (functions), the concepts in this chapter will NOT be covered on the MATLAB exam.

^^^^^^^^^^^^^^^^^^^^
A Word-Guessing Game
^^^^^^^^^^^^^^^^^^^^
.. section 2

We will demonstrate program design by programming a word-guessing game. First, let's look at what the game will look like when we're finished:

.. youtube:: UeNQDXXTWzU
   :divid: ch10_02_vid_a_word_guessing_game
   :height: 315
   :width: 560
   :align: center

|

^^^^^^^^^^^^^^^^
Scrambling Words
^^^^^^^^^^^^^^^^
.. section 3

Let's start by looking at how to implement one piece of our game, scrambling the words.

.. youtube:: hA-T3iGM73w
   :divid: ch10_03_vid_scrambling_words
   :height: 315
   :width: 560
   :align: center

|

The video above illustrated the difference between bottom-up design and top-down design. **Bottom-up design** starts by identifying specific features that we'll need in our program, and then writing functions that accomplish these specific features. After writing a group of functions, we combine them to achieve our final program.

**Top-down design** starts by looking at the big picture of what the end result will be, and then breaks it down into smaller steps after that. Both program design methods ultimately achieve the same goal - they just achieve this goal in different ways.
 
.. mchoice:: ch10_randperm_01
  :answer_a: [1 2 6 3 5]
  :answer_b: [1 2 5 3 0]
  :answer_c: [5 4 2 3 3]
  :answer_d: [2 1 5 3 4]
  :correct: d
  :feedback_a: Oops! This result contains 6, which is higher than the parameter 5 we passed to randperm.
  :feedback_b: Oops! This result contains 0, which will not be used in a randperm result.
  :feedback_c: Oops! This result contains a duplicate number.
  :feedback_d: Correct!

  Suppose you call :code:`randperm(5)` in MATLAB? Which result could this function call return?
 
.. mchoice:: ch10_program_design_01
  :answer_a: Begin by modeling the shape and size of the cell phone. This is necessary because the shape and size will affect the aerodynamics as the cell phone falls.
  :answer_b: Begin by inputting a wide range of positions that the cell phone could possibly fall from.
  :answer_c: Begin by sketching out all the steps that are necessary to modeling the cell phone. Think about what input your program will take (the various positions the cell phone could fall from) and what output your program will give (whether the phone is damaged from each fall). Write out everything that needs to happen to get from the program input to the program output.
  :answer_d: Begin by writing a function that simulates the affect of gravity and wind resistance on the phone. The function will take as input the current position of the phone, and return the net force of gravity and wind resistance.
  :correct: c
  :feedback_a: Oops! Review the distinctions between bottom-up and top-down program design.
  :feedback_b: Oops! Review the distinctions between bottom-up and top-down program design.
  :feedback_c: Correct! Top-down design starts by sketching out the big picture of the program, and then filling in the details.
  :feedback_d: Oops! Review the distinctions between bottom-up and top-down program design.

  Suppose that you are an engineer working for a firm that manufactures cell phones, and you are asking to produce a computer simulation of what happens when you drop a cell phone from various positions. Which of these would be an example of top-down program design?

-------------------------
Example: Bottom-Up Design
-------------------------

If we approach the design of our word-guessing game using bottom-up design, we would begin by writing functions that perform specific features that we know we'll need in the final solution. As we saw in the previous video, one feature that is required for our game is the ability to randomly scramble the letters in a word. We can use :code:`randperm` to help us with this.

.. parsonsprob:: ch10_par_scrambled_word_01

   Arrange these lines of code to correctly scramble the word 'hello'.
   -----
   word = 'hello';
   =====
   N = length(word);
   =====
   P = randperm(N);
   =====
   scrambledWord = word(P);
   disp(scrambledWord);

------------------------
Example: Top-Down Design
------------------------

If we approach the design of our word-guessing game using a top-down design, we might begin by diagramming the flow of our program (our MATLAB script):

.. figure:: img/img3.png
   :width: 500
   :align: center

The flow in the chart is from Start to End, following the arrows. The bottom tilted boxes refer to input/output operations, while the rectangular boxes in the top row may be individual MATLAB functions. A MATLAB script file controls the flow of the game.

^^^^^^^^^^^^^^^^^^^^
Coding the Word Game
^^^^^^^^^^^^^^^^^^^^
.. section 4

Open the script file :file:`wordGame.m`. From the previous sections, we have a function :code:`scramble` that takes a word as input, and returns a scrambled version of the word. We'll use this function to help us write a simplified version of our word guessing game.

.. parsonsprob:: par_ex_group1

   Arrange these lines of code to implement the first part of a simplified word guessing game.
   -----
   words = loadWords('words.txt');
   =====
   word = words{randi(length(words))};
   =====
   scrambledWord = scramble(word);
   =====
   disp('Unscramble this word:');
   disp(scrambledWord);

Finally, let's add two more lines of code, one to request an input guess from the user, and the other to display if the guess and the word are the same. These use two new MATLAB functions, :code:`input()` and :code:`isequal()`

.. shortanswer:: ch10_input_01

   Look up the :code:`input` function in the MATLAB help documentation (remember, we're looking for *string* input). Now, write code prompting the user for a guess. Save the user's input in the variable :code:`guess`.
   
.. shortanswer:: ch10_isequal_01

   Look up the :code:`isequal` function in the MATLAB help documentation. Now, write code checking if the user's guess and the word are the same. Display the result.

^^^^^^^^^
Iteration
^^^^^^^^^
.. section 4

.. youtube:: er-mcv0eFC4
   :divid: ch10_04_vid_iteration
   :height: 315
   :width: 560
   :align: center

|
    
As we saw in the previous video, **iteration** allows us to repeat a chunk of code multiple times. One way to do iteration is using a **for loop**.

.. tip::

    It is good programming style to indent the contents of a for loop a few spaces to make code-reading easier. (This also applies for other kinds of loops, as well as for branching, which we'll see later in this chapter.)

.. shortanswer:: ch10_04_ex_for_loops

   Consider the vector below:

   .. raw:: html

      <div class="matcrab-vis-exp">
         [10,8,6,4,2,0]
      </div>

   Let's review how to make a vector using colon operators. Adjust the range notation in the MatCrab example here to create the vector above.

   .. raw:: html

      <div class="container-fluid">
         <div class="matcrab-example">
            <table><tbody>
            <tr>
               <td style="text-align: center">
                  <img src="../_static/common/img/crabster.jpg" style="height: 35px" />
                  <br />
                  <a role="button" class="btn btn-success matcrab-run">Run</a>
                  <br />
                  <a role="button" class="btn btn-warning matcrab-reset">Reset</a>
               </td>
               <td>
                  <textarea class="form-control matcrab-entry" style="resize: none">
                  1:3:10
                  </textarea>
               </td>
               <td>
                  <div class="matcrab-vis" style="height: auto; overflow: initial">
                  </div>
               </td>
            </tr>
            </tbody></table>
         </div>
      </div>

   |

   Next, we want to use that vector to iterate through a for loop. Write a loop to count down from 10 by increments of 2, displaying the index value each time through.

In addition to iteration, we saw that **abstraction** can be used to make our program simpler and easier to read.

Abstraction is a high-level concept that refers to hiding the complexity of something. In MATLAB, abstraction is usually implemented by a function. Remember, if you are using a function that someone else wrote and you know the inputs and outputs of a function, you don't need to understand how the function works - you simply give the function the proper inputs, and it returns the proper outputs. When you do this, the details of the function have been *abstracted away*. The complexity of the function has been hidden from you. This is helpful because it allows you to focus more on other parts of the program, rather than spending time understanding the implementation of this function. Likewise, when you write a function, other programmers can use your function as an abstraction. Even if you don't expect other programmers to use your code, functions are a great way to organize your code. Better organized code is easier to think about and easier to debug!

^^^^^^^^^
Branching
^^^^^^^^^
.. section 5

.. youtube:: EqmGgYU-TRE
   :divid: ch10_05_vid_branching
   :height: 315
   :width: 560
   :align: center

|

**Branching** lets us decide which statements in our code will be executed. We implement this using :code:`if` and :code:`elseif/else` statements. If we use a branching statement, only one of the branches is evaluated. After that branch is evaluated, the program jumps to the end of the branching statement *without executing the other branches*.

In addition to **for loops**, we can use **while loops** to do iteration in our code. While loops repeat as long as some condition (the **loop condition**) is true.

Branching and iteration are both part of control flow.
**Control flow** is the order that the statements in our program execute (the line of code that is currently executing has "control"). Flowcharts are useful for mapping out the control flow of our programs!

.. mchoice:: ch10_branching_01
  :answer_a: The first statement ("This is a tundra ecosystem!") would be displayed.
  :answer_b: The second statement ("This is either a tropical or temperate rainforest ecosystem!") would be displayed.
  :answer_c: Both the first and the second statement would be displayed.
  :answer_d: Nothing would be displayed.
  :correct: d
  :feedback_a: Oops! Try running this code in MATLAB.
  :feedback_b: Oops! Try running this code in MATLAB.
  :feedback_c: Oops! Try running this code in MATLAB.
  :feedback_d: Correct!

  What would be the output of the following MATLAB code?
  
  .. literalinclude:: ../_static/intro_to_control_flow/branching1.m
    :language: matlab
      
.. mchoice:: ch10_branching_02
  :answer_a:
  :answer_b:
  :answer_c:
  :answer_d:
  :correct: b
  :feedback_a: Oops! Try running this code in MATLAB.
  :feedback_b: Correct!
  :feedback_c: Oops! Try running this code in MATLAB.
  :feedback_d: Oops! Try running this code in MATLAB.

  Which branching statement is correctly implemented?
  
  A.
  
  .. literalinclude:: ../_static/intro_to_control_flow/branching2.m
    :language: matlab
    
  B.
  
  .. literalinclude:: ../_static/intro_to_control_flow/branching3.m
    :language: matlab
    
  C.
  
  .. literalinclude:: ../_static/intro_to_control_flow/branching4.m
    :language: matlab
    
  D.
  
  .. literalinclude:: ../_static/intro_to_control_flow/branching5.m
    :language: matlab
    
.. shortanswer:: ch10_while_loops_01

  Briefly describe the difference between for loops and while loops.

The use of program control constructs has permitted exciting and thoughtful possibilities to our simple word-guessing game. The complexity of our word-guessing game has evolved to the point that we may imagine adding new features. For example, rather than running through the game 5 times (using the for loop), we want to run through the game until we make 3 incorrect guesses. This may mean running through ONLY 3 times, or it could mean 10's or 100's of correct guesses. Let the program decide!

However, in MATLAB we *rarely* use control flow. MATLAB has powerful vectorization and logical indexing capabilities, which are almost always better and faster!

As often as possible:

* Use vectorized array operations rather than loops
* Use logical indexing rather than loops
* Use ranges rather than loops

We have now completed the controlling script for :code:`wordGame.m`. You have seen how bottom-up design and top-down design are useful tools for designing and then programming code for a specific task.

--------------------
Flowchart Components
--------------------

Here is the final table of flowchart components which includes branching and iteration.

.. figure:: img/img21.png
   :width: 500
   :align: center

   ..

In the second half of ENGR 101, you will design your own control flow code with C++ and will use flowcharts to construct your code.

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Summary
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. tip::

    Other than abstraction (functions), the concepts in this chapter will NOT be covered on the MATLAB exam.

This is the end of the chapter! Here is a summary of what we covered in this chapter: 

* **Program design** is the process of planning out the algorithm that we're going to code. There are two basic approaches: **bottom-up design** and **top-down design**. Bottom-up design starts by designing smaller features, and combines them to get the final program. Top-down design starts by sketching out the final program, and breaking this down into smaller steps.
* :code:`randperm` can be used to generate a random permutation of numbers of a specific size.
* :code:`input` gets user input.
* :code:`isequal` checks if two strings are equal.
* **Iteration** allows us to repeat some statements of code multiple times. Both for loops and while loops can be used for iteration.
* **Abstraction** allows us to hide the complexity of certain operations in functions.
* **Branching**, implemented with :code:`if` and :code:`elseif/else` statements allows us to decide which statements in our code will be executed.
* **Control flow** is the order that the statements in our program execute.
* Flowcharts are a useful tool for mapping out the control flow of your program.
* In MATLAB, it's better to use vectorized array operations, logical indexing, and ranges rather than iteration and branching.

You can double check that you have completed everything on the "Assignments" page. Click the icon that looks like a person, go to "Assignments", select the chapter, and make sure to scroll all the way to the bottom and click the "Score Me" button.
