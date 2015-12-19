ActiveAdmin.register HouseNumberTile do
  menu priority: 3

  sidebar "House Number Finishes", only: [:show, :edit] do
    ul do
      li link_to "Finishes", admin_house_number_tile_finishes_path(house_number_tile)
    end
  end

  index do
    column :id
    column :name do |number|
      link_to number.name, admin_house_number_tile_path(number)
    end
    column :size
    column :image
    actions
  end

  form do |f|
    inputs 'Details' do
      input :name
      input :size
      input :image
    end
    actions
  end

  permit_params :name, :size, :image
end
