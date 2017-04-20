require('rspec')
require('./lib/coins')

describe('Fixnum#coins') do
  it("returns the number of pennies equal to user input") do
    expect((99).coins()).to(eq(99))
  end

  # it("capitalizes multiple word titles") do
  #   expect(("beowulf begins").title_case()).to(eq("Beowulf Begins"))
  # end


end
