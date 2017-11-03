class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.boolean :answered_correctly
      t.integer :round_id
      t.integer :card_id

      t.timestamps
    end
  end
end
