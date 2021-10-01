require 'rails_helper'

RSpec.describe 'Flashcards Show Page' do
  before(:each) do
    @card = Flashcard.create!(id: 987,
                              question: '2 + 2 = 4',
                              correct_answer: 'True',
                              category: 'Math',
                              difficulty: 'Far too easy',
                              correct: false,
                              question_type: 'boolean')

    visit flashcard_path(@card.id)
  end
  it 'has buttons to answer the question' do
    expect(page).to have_button('True')
    expect(page).to have_button('False')
    expect(page).to_not have_content(@card.question)
  end
  it 'alerts if answer is correct' do
    click_button 'True'

    expect(current_path).to eq(flashcards_path)
    expect(page).to have_content('Correct, way to go!')
  end
  it 'alerts if answer is incorrect' do
    click_button 'False'

    expect(current_path).to eq(flashcards_path)
    expect(page).to have_content('Sorry, better luck next time.')
  end
end
