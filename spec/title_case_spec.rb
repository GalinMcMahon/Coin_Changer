require('rspec')
require('./lib/title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("beowulf").title_case()).to(eq("Beowulf"))
  end

  it("capitalizes multiple word titles") do
    expect(("beowulf begins").title_case()).to(eq("Beowulf Begins"))
  end


end
