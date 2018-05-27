class RemoveFlashcardIdFromPractices < ActiveRecord::Migration[5.1]
  def change
    remove_reference :practices, :flashcard, foreign_key: true
  end
end
