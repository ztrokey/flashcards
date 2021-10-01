require 'rails_helper'

RSpec.describe 'Flashcards Show Page' do
  it 'shows the answer of a card' do
    card = Flashcard.create!(id: 987,
                             question: '2 + 2 = ?',
                             correct_answer: '4',
                             category: 'Math',
                             difficulty: 'Far too easy',
                             correct: false,
                             question_type: 'boolean')

    visit flashcard_path(card.id)

    expect(page).to have_content(card.correct_answer)
    expect(page).to_not have_content(card.question)
  end
end
