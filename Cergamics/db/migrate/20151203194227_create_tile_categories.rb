class CreateTileCategories < ActiveRecord::Migration
  def change
    create_table :tile_categories do |t|
      t.string :title, null: false
      t.attachment :image

      t.timestamps null: false
    end
  end
end
