ActiveAdmin.register HousePlaque do
  menu priority: 2

  sidebar "House Plaque Finishes", only: [:show, :edit] do
    ul do
      li link_to "Finishes", admin_house_plaque_finishes_path(house_plaque)
    end
  end

  index do
    column :id
    column :name do |plaque|
      link_to plaque.name, admin_house_plaque_path(plaque)
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
