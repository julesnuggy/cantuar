class AddNoteToFlashcards < ActiveRecord::Migration[5.1]
  def change
    add_column :flashcards, :note, :string
  end
end
