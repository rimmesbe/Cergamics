ActiveAdmin.register TileCategory do
  menu priority: 1

  sidebar "Category Groups", only: [:show, :edit] do
    ul do
      li link_to "Tile Groups", admin_tile_category_tile_groups_path(tile_category)
    end
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
permit_params :title, :image

end
