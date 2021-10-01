require 'rails_helper'

RSpec.describe 'update' do
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
  it 'updates "correct" attribute' do
    click_button 'True'
    updated_card = Flashcard.find(987)
    expect(updated_card.correct).to eq(true)
  end
  it 'leaves "correct" as false if incorrect' do
    click_button 'False'
    updated_card = Flashcard.find(987)
    expect(updated_card.correct).to eq(false)
  end
end
