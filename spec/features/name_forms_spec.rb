require 'spec_helper'

feature 'Entering names' do
  scenario 'User enteres their name' do
    visit '/'

      fill_in(:player_1_name, with: 'John')
      fill_in(:player_2_name, with: 'Mary')
      click_button 'Submit name'
      expect(page).to have_text('John vs Mary')
  end

end
