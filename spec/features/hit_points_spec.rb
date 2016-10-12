require 'spec_helper'

feature 'Display hitpoints' do
  scenario "Show player 2's hitpoints" do
    sign_in_and_play
      expect(page).to have_content('Mary: 100HP')
  end

end
