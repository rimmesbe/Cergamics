ActiveAdmin.register Finish do
  menu false
  controller do
    belongs_to :tile, :house_plaque, :house_number_tile, polymorphic: true
  end

  permit_params :description, :category, :series_no, :finish, :price, :image
end
