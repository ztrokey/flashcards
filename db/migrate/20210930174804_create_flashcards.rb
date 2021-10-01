class CreateFlashcards < ActiveRecord::Migration[6.1]
  def change
    create_table :flashcards do |t|
      t.string :question
      t.string :correct_answer
      t.string :category
      t.string :question_type
      t.string :difficulty
      t.boolean :correct, default: false

      t.timestamps
    end
  end
end
