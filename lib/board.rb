class Board
  attr_reader :blank_board

  def initialize
    @blank_board = Array.new(8) {Array.new(8,'O')}
  end
end