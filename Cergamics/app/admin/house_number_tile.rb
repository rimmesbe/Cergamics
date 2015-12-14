ActiveAdmin.register HouseNumberTile do
  menu priority: 3

  sidebar "House Number Finishes", only: [:show, :edit] do
    ul do
      li link_to "Finishes", admin_house_number_tile_finishes_path(house_number_tile)
    end
  end

  permit_params :name, :size, :image
end
