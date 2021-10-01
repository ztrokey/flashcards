require 'rails_helper'

RSpec.describe FlashcardsService do
  it 'returns flashcard data', :vcr do
    data = FlashcardsService.get_cards

    expect(data).to be_a(Hash)
    expect(data).to have_key(:response_code)
    expect(data[:response_code]).to eq(0)
    expect(data).to have_key(:results)
    expect(data[:results]).to be_an(Array)
    expect(data[:results].first).to be_a(Hash)
    expect(data[:results].first).to have_key(:category)
    expect(data[:results].first[:category]).to be_a(String)
    expect(data[:results].first).to have_key(:type)
    expect(data[:results].first[:type]).to be_a(String)
    expect(data[:results].first).to have_key(:difficulty)
    expect(data[:results].first[:difficulty]).to be_a(String)
    expect(data[:results].first).to have_key(:question)
    expect(data[:results].first[:question]).to be_a(String)
    expect(data[:results].first).to have_key(:correct_answer)
    expect(data[:results].first[:correct_answer]).to be_a(String)
    expect(data[:results].first).to have_key(:incorrect_answers)
    expect(data[:results].first[:incorrect_answers]).to be_an(Array)
    expect(data[:results].first[:incorrect_answers].first).to be_a(String)
  end
end
