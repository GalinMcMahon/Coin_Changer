require('rspec')
require('./lib/coins')

describe('Fixnum#coins') do
  it("returns the number of pennies equal to user input") do
    expect((99).coins()).to(eq(99))
  end

  it("returns the number of nickels equal to user input if user input is evenly divisible into nickels") do
    expect((15).coins()).to(eq(3))
  end

  it("returns the number of dimes equal to user input if user input is evenly divisible into dimes") do
    expect((20).coins()).to(eq(2))
  end

  it("returns the number of quarters equal to user input if user input is evenly divisible into quarters") do
    expect((75).coins()).to(eq(3))
  end


end
