require 'rspec'
require_relative '../lib/board'

describe 'Board' do 

	let(:new_board) {Board.new}

	it 'creates a board consisting of a nested array of eight rows by eight columns' do
		expect(new_board.blank_board).to eql [["O", "O", "O", "O", "O", "O", "O", "O"], ["O", "O", "O", "O", "O", "O", "O", "O"], ["O", "O", "O", "O", "O", "O", "O", "O"], ["O", "O", "O", "O", "O", "O", "O", "O"], ["O", "O", "O", "O", "O", "O", "O", "O"], ["O", "O", "O", "O", "O", "O", "O", "O"], ["O", "O", "O", "O", "O", "O", "O", "O"], ["O", "O", "O", "O", "O", "O", "O", "O"]]
	end

end