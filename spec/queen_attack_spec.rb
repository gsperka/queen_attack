require 'rspec'
require_relative '../lib/queens'

describe 'Queens' do

  let(:queen) {Queens.new({white: [2,3], black: [1,4]})}

  it 'sets the default position of the white queen' do
    expect(queen.white).to eql [2,3]
  end

  it 'sets the default position of the black queen' do
    expect(queen.black).to eql [1,4]
  end

  it 'raises an error if the queens are placed on the same space' do 
  	invalid_placement = Queens.new({white: [1,1], black: [1,1]})
  	expect(invalid_placement).to eql 'Blah'
  end

end
