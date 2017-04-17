require('rspec')
require('leet')

describe('String#leet') do
  it('replace e with 3') do
    expect(('bee').leet).to(eq('b33'))
  end
end
