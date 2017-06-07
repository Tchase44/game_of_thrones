class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :words
      t.string :castle
      t.string :sigil_url
      t.timestamps
    end
  end
end
