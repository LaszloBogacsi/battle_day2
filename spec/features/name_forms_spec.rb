require 'spec_helper'

feature 'Entering names' do
  scenario 'User enteres their name' do
    sign_in_and_play
    expect(page).to have_text('John vs Mary')
  end

end
