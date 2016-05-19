class Queen
  attr_reader :row, :column

  def initialize(row, column)
  	raise ArgumentError.new("Must use integers") unless ( (row.is_a? Integer) && (column.is_a? Integer) )
    @row = row
    @column = column 
  end
end