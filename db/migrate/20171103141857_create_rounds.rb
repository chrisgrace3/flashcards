class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.integer :player_id
      t.integer :deck_id

      t.timestamps
    end
  end
end
