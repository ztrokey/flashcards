require 'rails_helper'

RSpec.describe 'FlashcardsFacade' do
  it 'returns an array of Flashcard objects', :vcr do
    data = FlashcardsFacade.card_info

    expect(data).to be_an(Array)
    expect(data[0]).to be_a(Flashcard)
    expect(data[0].id).to be_a(Integer)
    expect(data[0].question).to be_a(String)
    expect(data[0].correct_answer).to be_a(String)
    expect(data[0].category).to be_a(String)
    expect(data[0].question_type).to be_a(String)
    expect(data[0].difficulty).to be_a(String)
    expect(data[0].correct).to eq(false)
  end
end
