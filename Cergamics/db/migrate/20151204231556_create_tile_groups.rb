class CreateTileGroups < ActiveRecord::Migration
  def change
    create_table :tile_groups do |t|
      t.string :name, null: false
      t.text :description
      t.attachment :image
      t.references :tile_category

      t.timestamps null: false
    end
  end
end
