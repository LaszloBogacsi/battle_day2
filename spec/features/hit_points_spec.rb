require 'spec_helper'

feature 'Display hitpoints' do
  scenario "Show player 2's hitpoints" do
    visit '/'
    fill_in(:player_1_name, with: 'John')
    fill_in(:player_2_name, with: 'Mary')
    click_button 'Submit name'
      expect(page).to have_content('Mary: 60HP')
  end

end
