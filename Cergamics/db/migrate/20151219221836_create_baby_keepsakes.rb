class CreateBabyKeepsakes < ActiveRecord::Migration
  def change
    create_table :baby_keepsakes do |t|
      t.string :name, null: false
      t.string :description
      t.string :finish
      t.decimal :price, precision: 8, scale: 2
      t.attachment :image

      t.timestamps null: false
    end
  end
end
