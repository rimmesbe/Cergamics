ActiveAdmin.register HousePlaque do
  menu priority: 2

  sidebar "House Plaque Finishes", only: [:show, :edit] do
    ul do
      li link_to "Finishes", admin_house_plaque_finishes_path(house_plaque)
    end
  end

  permit_params :name, :size, :image

end
