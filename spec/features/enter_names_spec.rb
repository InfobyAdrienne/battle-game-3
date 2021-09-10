require 'capybara/rspec'
require_relative '../../app'

feature "fill in a form and see your name" do 
  scenario "player enters their name and sees it on screen" do 
    visit ('/')
    fill_in :player_1_name, with: "Adrienne"
    fill_in :player_2_name, with: "Bev"
    click_button "Submit"
    
    save_and_open_page

    expect(page).to have_content "Adrienne vs. Bev"
  end
end 
