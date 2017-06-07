class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :title
      t.string :name
      t.string :img_url
      t.references :house, foreign_key: true
    end
  end
end
