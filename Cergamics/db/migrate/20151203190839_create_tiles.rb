class CreateTiles < ActiveRecord::Migration
  def change
    create_table :tiles do |t|
      t.string :name, null: false
      t.string :group
      t.string :style
      t.text :description
      t.string :size
      t.decimal :price, precision: 8, scale: 2
      t.string :image
      t.references :tile_category

      t.timestamps null: false
    end
  end
end
