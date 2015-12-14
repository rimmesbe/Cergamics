ActiveAdmin.register Tile do
  belongs_to :tile_group

  sidebar "Tile Finishes", only: [:show, :edit] do
    ul do
      li link_to "Finishes", admin_tile_finishes_path(tile)
    end
  end

  index do
    column :id
    column :name do |tile|
      link_to tile.name, admin_tile_group_tile_path(tile_group, tile)
    end
    column :style
    column :description
    column :size
    column :price, :sortable => :price do |tile|
      div :class => "price" do
        number_to_currency tile.price
      end
    end
    column :image
    actions
  end

  permit_params :name, :style, :description, :size, :price, :image
end
