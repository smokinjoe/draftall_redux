class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :body
      t.integer :votes
      t.references :player, index: true

      t.timestamps
    end
  end
end
