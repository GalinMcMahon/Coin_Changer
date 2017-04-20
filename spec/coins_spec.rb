require('rspec')
require('./lib/coins')

describe('Fixnum#coins') do
  it("returns the number of pennies equal to user input") do
    expect((99).coins()).to(eq(99))
  end

  it("returns the number of nickels equal to user input if user input is evenly divisible into nickels") do
    expect((20).coins()).to(eq(4))
  end


end
