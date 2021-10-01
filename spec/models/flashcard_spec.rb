require 'rails_helper'

RSpec.describe Flashcard, type: :model do
  describe 'relationships' do
    # add tests once relationships defined
  end
  describe 'validations' do
    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:correct_answer) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:question_type) }
    it { should validate_presence_of(:difficulty) }
  end
end
