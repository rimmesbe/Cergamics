class TileCategory < ActiveRecord::Base
  has_many :tile_groups
end
