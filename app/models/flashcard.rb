class Flashcard < ApplicationRecord
  validates :question, presence: true
  validates :correct_answer, presence: true
  validates :category, presence: true
  validates :question_type, presence: true
  validates :difficulty, presence: true
end
