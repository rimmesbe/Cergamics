ActiveAdmin.register Tile do
  belongs_to :tile_group

  sidebar "Tile Finishes", only: [:show, :edit] do
    ul do
      li link_to "Finishes", admin_tile_finishes_path(tile)
    end
  end

  permit_params :name, :style, :description, :size, :price, :image
end
