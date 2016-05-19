require_relative 'board'
require_relative 'queen'

class GameLogic

  attr_reader :white, :black, :board

  def initialize(white_queen, black_queen)
    @white = white_queen || Queen.new(3,5)
    @black = black_queen || Queen.new(1,1)
    @board = Board.new.blank_board
    same_position?
    valid_position?
  end

  def start
    place_queens
    attack?
  end

  private

  def same_position?
    raise ArgumentError, 'Queens cannot occupy same space' if ((white.row == black.row) && (white.column == black.column))
  end

  def valid_position?
    raise ArgumentError, 'Please enter values between 0 and 7' if ([white.row, white.column, black.row, black.column]).any? {|i| (i > 7) | (i < 0)}
  end

  def place_queens
    board[white.row][white.column] = 'W'
    board[black.row][black.column] = 'B'
    prettify_display
  end

  def prettify_display
    board.map do |rows|
      rows.join(" ")
      p rows
    end
  end

  def attack?
    (row_attack? || col_attack? || diagonal_attack?) ? (return puts "Yes! The Queen can attack!") : (return puts "No, The Queens can't attack!")
  end

  def row_attack?
    white.row == black.row
  end

  def col_attack?
    white.column == black.column
  end

  def diagonal_attack?
    (white.row-black.row).abs == (white.column-black.column).abs
  end

end

# white = Queen.new(1,4)
# black = Queen.new(1,2)

# game = GameLogic.new(white, black)
# game.start