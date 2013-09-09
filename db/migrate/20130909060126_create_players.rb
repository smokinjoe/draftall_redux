class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :email
      t.string :name
      t.integer :owns_game_id
      t.string :hash
      t.references :game, index: true

      t.timestamps
    end
    add_index :players, :owns_game_id
  end
end
