require 'rails_helper'

RSpec.describe 'dashboard index page' do
  it 'says hello' do
    visit root_path

    expect(page).to have_content("Welcome to Zach's Flashcards")
  end
  it 'has a button for a new game' do
    visit root_path

    expect(page).to have_button('Start a New Game')
  end
  it 'starts a new game' do
    visit root_path

    click_button 'Start a New Game'

    expect(current_path).to eq(flashcards_path)
  end
end
