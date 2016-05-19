require 'rspec'
require_relative '../lib/queen'

describe 'Queen' do 

	let(:new_queen) {Queen.new(2,4)}
	let(:invalid_queen) {Queen.new("5", [2])}

	it 'initializes with a row and a column' do
		expect(new_queen.row).to eql 2
	end

	it 'only accepts integers' do 
		expect{invalid_queen}.to raise_error(ArgumentError, "Must use integers")
	end

end