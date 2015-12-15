class Tile < ActiveRecord::Base
  belongs_to :tile_group
  has_many :finishes, as: :finished_item, dependent: :destroy

  validates :name, presence: true
end
