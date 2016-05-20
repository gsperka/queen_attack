class Queen
  attr_accessor :row, :column

  def initialize(row, column)
    @row = row
    @column = column
    integer? 
    valid_position?
  end

  private

  def integer?
  	raise ArgumentError, "Must use integers" unless ( (row.is_a? Integer) && (column.is_a? Integer) )
  end

  def valid_position?
    raise ArgumentError, 'Please enter values between 0 and 7' if ([row, column]).any? {|i| (i > 7) | (i < 0)}
  end

end