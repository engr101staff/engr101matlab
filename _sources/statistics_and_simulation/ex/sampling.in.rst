If we roll a 6-sided die and a 20-sided die, what is the probability that the sum of the two dice is greater than 15? We could figure this out using math, but this isn't a math class. Let's use simulation instead!

Write a new MATLAB script that implements this algorithm:

1. Generate row vectors for 10000 rolls of each kind of die using the randi function.
2. Add the row vectors together to get the sum.
3. Use logical indexing to select sums greater than 15 and count them.
4. Divide by 10000 to get the percentage of sums that were greater than 15.
5. Display the percentage: this is the probability that the sum will be greater than 15.
