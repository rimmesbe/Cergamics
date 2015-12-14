ActiveAdmin.register TileGroup do
  belongs_to :tile_category

  sidebar "Tile Group Tiles", only: [:show, :edit] do
    ul do
      li link_to "Tiles", admin_tile_group_tiles_path(tile_group)
    end
  end

  index do
    column :id
    column :name do |group|
      link_to group.name, admin_tile_category_tile_group_path(tile_category, group)
    end
    column :description
    column :image
    actions
  end

  permit_params :name, :description, :image

end
