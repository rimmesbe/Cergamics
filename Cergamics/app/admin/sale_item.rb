ActiveAdmin.register SaleItem do
  menu priority: 5

  index do
    column :id
    column :name
    column :description
    column :size
    column :original_price
    column :sale_price
    column :image
    actions
  end

  form do |f|
    inputs 'Details' do
      input :name
      input :description
      input :size
      input :original_price
      input :sale_price
      input :image
    end
    actions
  end

  permit_params :name, :description, :size, :original_price, :sale_price, :image
end
