class CreateAdventures < ActiveRecord::Migration[6.0]
  def change
    create_table :adventures do |t|
      t.references :universe
      t.string :name, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
