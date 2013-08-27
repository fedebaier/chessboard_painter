Chessboard Painter
==================

Walks through a NxN chessboard, clockwise, painting each cell with a color, alternating between R (red), G (green) and B (blue).

The only parameter received is N (number of columns/rows).

The logic to walk through the chessboard is:

1. Go left until the edge of the chessboard is reached, or until the next cell is already painted.
2. Go down until the edge of the chessboard is reached, or until the next cell is already painted.
3. Go left until the edge of the chessboard is reached, or until the next cell is already painted.
4. Go up until the edge of the chessboard is reached, or until the next cell is already painted.

Finishes when all cells are painted.

The resulting output is the chessboard, representing each cell with the letter of the color it has.

For example, for a 3x3 chessboard, the result should be:

```
RGB
GBR
RBG
```