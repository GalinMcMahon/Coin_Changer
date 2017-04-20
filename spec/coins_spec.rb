require('rspec')
require('./lib/coins')

describe('Fixnum#coins') do
  it("returns the number of pennies equal to user input") do
    expect((4).coins()).to(eq([[0, 0, 0, 4],[false, false, false]]))
  end

  it("returns the number of nickels equal to user input if user input is evenly divisible into nickels") do
    expect((5).coins()).to(eq([[0, 0, 1, 0],[false, false, false]]))
                            # output = [[0, 0, 1, 0],[false, false, false]]
                            # output[0] = [0, 9, 1, 0]
                            # output[0][0] = 0
                            # output[0][1] = 9
                            # output[0][2] = 1
                            # output[0][3] = 0
                            # output[1] = [false, false, false]
                            # output[1][0] = false
                            # output[1][1] = false
                            # output[1][2] = true

  end

  it("returns the number of dimes equal to user input if user input is evenly divisible into dimes") do
    expect((20).coins()).to(eq([[0, 2, 0, 0],[false, false, false]]))
  end

  it("returns the number of quarters equal to user input if user input is evenly divisible into quarters") do
    expect((75).coins()).to(eq([[3, 0, 0, 0],[false, false, false]]))
  end

  it("returns the number of quarters and pennies equal to user input if user input is not evenly divisible into quarters") do
    expect((26).coins()).to(eq([[1, 0, 0, 1],[false, false, false]]))
  end

  it("returns the number of dimes and pennies equal to user input if user input is not evenly divisible into dimes") do
    expect((11).coins()).to(eq([[0, 1, 0, 1],[false, false, false]]))
  end

  it("returns the number of nickels and pennies equal to user input if user input is not evenly divisible into dimes") do
    expect((6).coins()).to(eq([[0, 0, 1, 1],[false, false, false]]))
  end

  it("returns the number of coins equal to user input if user input exceeds number of maximum available quarters, nickels or dimes.  The system will distribute excess cents.") do
    expect((2500).coins()).to(eq([[78, 13, 84, 0],[true, true, false]]))
  end
end
