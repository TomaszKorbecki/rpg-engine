class CreateUniverses < ActiveRecord::Migration[6.0]
  def change
    create_table :universes do |t|
      t.references :game_master
      t.string :name, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
