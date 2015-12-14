class TileCategory < ActiveRecord::Base
  has_many :tile_groups

  validates :title, presence: true
end
