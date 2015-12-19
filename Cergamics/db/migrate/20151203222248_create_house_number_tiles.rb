class CreateHouseNumberTiles < ActiveRecord::Migration
  def change
    create_table :house_number_tiles do |t|
      t.string :name, null: false
      t.string :size
      t.attachment :image

      t.timestamps null: false
    end
  end
end
