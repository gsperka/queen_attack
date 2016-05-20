require 'rspec'
require_relative '../lib/queen'

describe 'Queen' do 

	let(:new_queen) {Queen.new(2,4)}
	let(:invalid_character_queen) {Queen.new("5", [2])}
	let(:invalid_coordinate_queen) {Queen.new(-2, 10)}

	it 'initializes with a row and a column' do
		expect(new_queen.row).to eql 2
	end

	it 'only accepts integers' do 
		expect{invalid_character_queen}.to raise_error(ArgumentError, "Must use integers")
	end

	it 'only accepts integers 0 through 7' do 
		expect{invalid_coordinate_queen}.to raise_error(ArgumentError, "Please enter values between 0 and 7")
	end

end