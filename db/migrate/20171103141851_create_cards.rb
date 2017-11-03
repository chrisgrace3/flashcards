class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :question
      t.integer :correct_answer_id
      t.integer :deck_id

      t.timestamps
    end
  end
end
