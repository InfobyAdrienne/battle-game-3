require 'capybara/rspec'
require_relative '../../app'

feature "Attack player 2" do 
  scenario "attack player 2 and get a confirmation" do 
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Adrienne attacked Bev"
  end
end 
