class CreatePossibleAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :possible_answers do |t|
      t.string :answer
      t.integer :card_id

      t.timestamps
    end
  end
end
