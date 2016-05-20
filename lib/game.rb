require_relative 'board'
require_relative 'queen'

class Game

  attr_accessor :white, :black, :board

  def initialize(white_queen, black_queen)
    @white = white_queen
    @black = black_queen 
    @board = Board.new.blank_board
    same_position?
  end

  def start
    place_queens
    attack?
  end

  private

  def same_position?
    raise ArgumentError, 'Queens cannot occupy same space' if ((white.row == black.row) && (white.column == black.column))
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
    (row_attack? || col_attack? || diagonal_attack?) ? (p "Yes! The Queen can attack!") : (p "No, The Queen can't attack!")
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