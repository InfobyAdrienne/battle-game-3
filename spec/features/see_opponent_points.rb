require 'capybara/rspec'
require_relative '../../app'

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Adrienne'
    fill_in :player_2_name, with: 'Bev'
    click_button 'Submit'
    expect(page).to have_content 'Adrienne: 60HP'
  end
end
