def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Adrienne'
  fill_in :player_2_name, with: 'Bev'
  click_button 'Submit'
end