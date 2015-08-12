require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('shows the homepage where dealerships are listed', {:type => :feature}) do
  it('allows user to input car dealerships') do
    visit('/')
    fill_in('dealership_name', :with => "Bob's Autos")
    click_button('Submit')
    expect(page).to have_content("You've successfully submitted a dealership")
  end
end
