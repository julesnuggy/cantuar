class AddFlashcardIdToPractices < ActiveRecord::Migration[5.1]
  def change
    add_column :practices, :flashcard_id, :integer
  end
end
