ActiveAdmin.register TileCategory do
  menu priority: 1

  sidebar "Category Groups", only: [:show, :edit] do
    ul do
      li link_to "Tile Groups", admin_tile_category_tile_groups_path(tile_category)
    end
  end

  index do
    column :id
    column :title do |category|
      link_to category.title, admin_tile_category_path(category)
    end
    column :image
    actions
  end

  permit_params :title, :image
end
