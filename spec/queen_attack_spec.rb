require 'rspec'
require_relative '../lib/game_logic'

describe 'GameLogic' do

  let(:white_queen) {Queen.new(2,4)}
  let(:black_queen) {Queen.new(1,5)}

  it 'sets the default position of the white queen' do
    expect(white_queen.row).to eql 2
    expect(white_queen.column).to eql 4
  end

  it 'sets the default position of the black queen' do
    expect(black_queen.row).to eql 1
    expect(black_queen.column).to eql 5
  end

  # it 'raises an error if the queens are placed on the same space' do 
  # 	invalid_placement = Queens.new({white: [1,1], black: [1,1]})
  # 	expect(invalid_placement).to eql 'Blah'
  # end

end
