require('capybara/rspec') #Installs integration testing
require('./app')
# require('pry')
Capybara.app = Sinatra::Application # Allow integration testing to process
set(:show_exceptions, false)

 #Integration test below.  This simulates user input for rspec testing
describe('the title case path', {:type => :feature}) do
  it('processes the user entry and returns that number of pennies') do
    visit('/')
     # Title below is the form name, not the
    fill_in('input', :with => '4')
    click_button('Send')
    expect(page).to have_content('4 pennies')
  end
end
