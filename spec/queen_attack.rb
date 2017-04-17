require('rspec')
require('leet')

describe('Array#queen_attack') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally with each other') do
    expect(('[1,1]]').queen_attack?).to(eq('false'))
  end
end
