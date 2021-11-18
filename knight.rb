class Knight
  attr_accessor :children, :position

  def initialize(position, children = [])
    @position = position
    @children = children
  end

  MOVES = [[1, 2], [2, 1], [-1, 2], [1, -2], [-2, 1], [2, -1], [-2, -1], [-1, -2]]

  def next_moves(start)
    moves = MOVES.map { |x| [x[0] + start[0], x[1] + start[1]] }
    moves.keep_if { |x| x[0] >= 1 && x[0] <= 8 && x[1] >= 1 && x[1] <= 8 }
    moves
  end
end
