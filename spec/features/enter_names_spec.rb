require 'capybara/rspec'
require_relative '../../app'

feature "fill in a form and see your name" do 
  scenario "player enters their name and sees it on screen" do 
    sign_in_and_play
    
    save_and_open_page
   
    expect(page).to have_content "Adrienne vs. Bev"
  end
end 
