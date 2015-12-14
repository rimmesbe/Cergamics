ActiveAdmin.register TileGroup do
  belongs_to :tile_category

  sidebar "Tile Group Tiles", only: [:show, :edit] do
    ul do
      li link_to "Tiles", admin_tile_group_tiles_path(tile_group)
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
  permit_params :name, :description, :image

end
