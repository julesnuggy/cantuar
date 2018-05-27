class CreatePractices < ActiveRecord::Migration[5.1]
  def change
    create_table :practices do |t|
      t.integer :session_id
      t.references :flashcard, foreign_key: true
      t.text :translation_input

      t.timestamps
    end
  end
end
