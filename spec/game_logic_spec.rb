require 'rspec'
require_relative '../lib/game_logic'

describe 'GameLogic' do

  let(:white_queen) {Queen.new(2,4)}
  let(:black_queen) {Queen.new(1,5)}
  let(:new_game) {GameLogic.new(white_queen, black_queen)}

  describe '#same_position?' do 

  	it 'will raise an error if the queens are placed in the same coordinates' do 
  		white_queen.column = 1
	  	white_queen.row = 1
	  	black_queen.column = 1
	  	black_queen.row = 1
	  	expect{new_game.start}.to raise_error(ArgumentError, "Queens cannot occupy same space")
  	end

  end

  it 'sets the default position of the white queen' do
    expect(white_queen.row).to eql 2
    expect(white_queen.column).to eql 4
  end

  it 'sets the default position of the black queen' do
    expect(black_queen.row).to eql 1
    expect(black_queen.column).to eql 5
  end

  it 'will display that the queen can attack if both queens are in the same row' do
  	white_queen.row = 2
  	black_queen.row = 2
  	expect(new_game.start).to eql "Yes! The Queen can attack!"
  end

  it 'will display that the queen can attack if both queens are in the same column' do
  	white_queen.column = 5
  	black_queen.column = 5
  	expect(new_game.start).to eql "Yes! The Queen can attack!"
  end

  it 'will display that the queen can attack if both queens are in the same diagonal line' do
  	white_queen.column = 2
  	white_queen.row = 0
  	black_queen.column = 5
  	black_queen.row = 3
  	expect(new_game.start).to eql "Yes! The Queen can attack!"
  end

  it 'will display that the queen can not attack if both queens are not in the same row, column, or diagonal line' do 
  	white_queen.column = 0
  	white_queen.row = 0
  	black_queen.column = 7
  	black_queen.row = 1
  	expect(new_game.start).to eql "No, The Queens can't attack!"
  end

end
