ActiveAdmin.register Finish do
  menu false
  controller do
    belongs_to :tile, :house_plaque, :house_number_tile, polymorphic: true
  end

  index do
    column :id
    column :description
    column :category
    column :series_no
    column :finish
    column :price, :sortable => :price do |finish|
      div :class => "price" do
        number_to_currency finish.price
      end
    end
    column :image
    actions
  end

  permit_params :description, :category, :series_no, :finish, :price, :image
end
