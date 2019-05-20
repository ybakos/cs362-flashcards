class CreateFlashcards < ActiveRecord::Migration[5.2]
  def change
    create_table :flashcards do |t|
      t.string :word, null: false
      t.string :definition, null: false
      t.timestamps
    end
  end
end
