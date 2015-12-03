class CreateFinishes < ActiveRecord::Migration
  def change
    create_table :finishes do |t|
      t.text :description
      t.string :category
      t.string :series_no
      t.string :finish
      t.decimal :price, precision: 8, scale: 2
      t.string :image
      t.references :finished_item, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
