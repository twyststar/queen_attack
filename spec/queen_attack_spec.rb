require('rspec')
require('queen_attack')

describe('Array#queen_attack') do
  it('return safe message if the coordinates are not horizontally, vertically, or diagonally aligned with each other') do
    expect(([1, 1]).queen_attack([2,3])).to(eq("You're safe, the Queen can't reach you there."))
  end
  it('return queen attack message if queen is aligned vertically or horizontally') do
    expect(([1, 1]).queen_attack([1,3])).to(eq("Queen attacks! Direct horizontal or vertical lines are not safe!"))
  end
  it('return queen attack message if queen is aligned on SW-NE diagonal line') do
    expect(([8, 1]).queen_attack([5,4])).to(eq("Queen attacks on SW-NE diagonal!"))
  end
  it('return queen attack message if queen is aligned on NW-SE diagonal line') do
    expect(([1, 1]).queen_attack([4,4])).to(eq("Queen attacks on NW-SE diagonal!"))
  end
end
