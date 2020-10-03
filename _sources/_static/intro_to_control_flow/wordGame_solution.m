% The game now repeats until you miss 3 times and keeps score.

% Load the words file
words = loadWords('words.txt');

lives = 3;
score = 0;
while lives > 0
  
  if playRound(words)
    disp('Correct!');    score = score + 1;
  else
    disp('Incorrect.');
    lives = lives - 1;
    disp(['You have ', num2str(lives), ' lives remaining.']);
  end
  disp(['Score: ', num2str(score)]);
end



disp(['Game over. You got ', num2str(score), ' points.']);
