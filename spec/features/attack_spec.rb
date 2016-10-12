require 'spec_helper'

feature 'Attack' do
  scenario "Player 1 attacks player 2" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content('John attacked Mary')
  end

  scenario "Player 2's hitpoints reduced" do
    sign_in_and_play
    click_link('Attack')
    click_link('Ok')
    expect(page).not_to have_content('Mary: 100HP')
    expect(page).to have_content('Mary: 90HP')
  end
end
