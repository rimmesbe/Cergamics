class CreateHousePlaques < ActiveRecord::Migration
  def change
    create_table :house_plaques do |t|
      t.string :name, null: false
      t.string :size
      t.string :image

      t.timestamps null: false
    end
  end
end
