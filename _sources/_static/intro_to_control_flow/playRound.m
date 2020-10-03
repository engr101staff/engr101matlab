function [ wonRound ] = playRound( words )
% playRound Plays one round of the word-guessing game
%           using the provided words and returns a
%           logical representing whether the user won.

    % Pick a single word randomly
    % Use content indexing to get the word itself (and not the cell)
    word = words{randi(length(words))};

    % get the scrambled version
    scrambledWord = scramble(word);

    % display the scrambled word to the user
    disp('Unscramble this word:');
    disp(scrambledWord);

    % prompt the user for a guess
    guess = input('Enter your guess: ', 's');

    % check if the guess and the word are the same
    wonRound = isequal(guess, word);
   

end
