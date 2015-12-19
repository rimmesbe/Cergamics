class CreateTiles < ActiveRecord::Migration
  def change
    create_table :tiles do |t|
      t.string :name, null: false
      t.string :style
      t.text :description
      t.string :size
      t.attachment :image
      t.references :tile_group

      t.timestamps null: false
    end
  end
end
