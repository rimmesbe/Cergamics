class TileGroup < ActiveRecord::Base
  has_many :tiles
  belongs_to :tile_category
end
