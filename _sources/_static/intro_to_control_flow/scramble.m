function [ scrambledWord ] = scramble( word )
%scramble Puts the characters of a word in random order
    scrambledWord = word(randperm(length(word)));

end

