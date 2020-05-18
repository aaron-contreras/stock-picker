# Stock picker
## Problem solving steps

1. Does the program have a user interface?
  - Console application
2. What are the inputs?
  - Array of stock prices, one for each day
3. Desired output?
  - Pair of days representing the best day to buy and the best day to sell
4. What needs to be done to go from the inputs to the desired output?
  - Constraints
    1. You need to buy before you sell
  - The best day to buy is the the one where the price is the lowest.
  - The best day to sell is the one with the highest price after the day you bought.

  - Algorithm
    ```
      # loop through each price in the list
      # find the highest price from the current index we're in until the end
      # store the profit between the two days and their indexes.
      # return the greatest of the list of profits
      # Give the user investment advice
    ```