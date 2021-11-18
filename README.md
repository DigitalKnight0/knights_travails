# knights_travails

### A project made by hecker in ruby

This project uses graph implementation to search for the shortest path a knights takes 
from a given position to it's final position on a standard 8x8 board 

#### How it works?

A 8x8 board is created firstly in the form of an array. the program then constructs a graph.
Each cell on the board is a node with the children and positions (children are the next cells the knight can travel from there)

Then, using breadth first search, it searches for the final position (Note - The program will only search till the final cell is found. i thought it was 
useless to search through the entire board). it then constructs the path and outputs it.


This program took me 2 days since graphs were a new data structure for me and it took some time for me to figure it out but it was worth learning

### Sample usage


```knight_moves([1, 1], [6, 2])
Congrats! your knight made it in 4 moves! 
Your path is:
[1, 1]
[2, 3]
[3, 5]
[4, 3]
[6, 2]



