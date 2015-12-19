ActiveAdmin.register BabyKeepsake do
  menu priority: 4

  index do
    column :id
    column :name
    column :description
    column :finish
    column :price, :sortable => :price do |finish|
      div :class => "price" do
        number_to_currency finish.price
      end
    end
    column :image
    actions
  end

  form do |f|
    inputs 'Details' do
      input :name
      input :description
      input :finish
      input :price
      input :image
    end
    actions
  end

  permit_params :name, :description, :finish, :price, :image
end
