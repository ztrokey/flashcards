require 'rails_helper'

RSpec.describe 'Flashcards Index Page' do
  it 'shows the question of a flashcard', :vcr do
    visit flashcards_path

    expect(page).to have_content('Question:')
    expect(page).to have_content('The 2010 film "The Social Network" is a biographical drama film about MySpace founder Tom Anderson.')
    expect(page.status_code).to eq(200)
  end
  it 'has a button to check your answer' do
    VCR.use_cassette('shows the question of a flashcard') do
      visit flashcards_path

      expect(page).to have_button('Check Answer')
    end
  end
end
