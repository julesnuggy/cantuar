class CreateFlashcards < ActiveRecord::Migration[5.1]
  def change
    create_table :flashcards do |t|
      t.string :original
      t.string :translation
      t.string :question
      t.string :response

      t.timestamps
    end
  end
end
