require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the r_p_s path', {:type => :feature}) do
  it('processes user entry, evaluates and returns a result') do
    visit('/')
    fill_in('move_one', :with => 'rock')
    fill_in('move_two', :with => 'scissors')
    click_button('Shoot')
    expect(page).to have_content('You win!')
  end
end
