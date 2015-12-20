class CreateSaleItems < ActiveRecord::Migration
  def change
    create_table :sale_items do |t|
      t.string :name, null: false
      t.string :description
      t.string :size
      t.decimal :original_price, precision: 8, scale: 2
      t.decimal :sale_price, precision: 8, scale: 2
      t.attachment :image

      t.timestamps null: false
    end
  end
end
