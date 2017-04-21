require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_execptions, false)

describe('queen attack path', {:type => :feature}) do
  it ('will take input for queen and player positions') do
  visit('/')
  fill_in('queen', :with => '1,1')
  fill_in('player', :with => '1,2')
  click_button('Queen Attacks!')
  expect(page).to have_content("Queen attacks! Direct horizontal or vertical lines are not safe!")
  end
end
