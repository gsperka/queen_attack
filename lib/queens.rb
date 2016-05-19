require_relative 'board'

class Queens

  attr_reader :white, :black, :board

  def initialize(args={})
    @white = args[:white] || [0,3]
    @black = args[:black] || [7,3]
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
    raise ArgumentError, 'Queens cannot occupy same space' if white == black
  end

  def valid_position?
    raise ArgumentError, 'Please enter values between 0 and 7' unless white.concat(black).all? { |n| (0..7).include?(n) }
  end

  def place_queens
    board[white[0]][white[1]] = 'W'
    board[black[0]][black[1]] = 'B'
    prettify_display
  end

  def prettify_display
    @board.map do |rows|
      rows.join(" ")
      p rows
    end
  end

  def attack?
    (row_attack? || col_attack? || diagonal_attack?) ? (return puts "Yes! The Queen can attack!") : (return puts "No, The Queens can't attack!")
  end

  def row_attack?
    white[0] == black[0]
  end

  def col_attack?
    white[1] == black[1]
  end

  def diagonal_attack?
    (white[0]-black[0]).abs == (white[1]-black[1]).abs
  end

end