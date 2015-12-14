class Tile < ActiveRecord::Base
  belongs_to :tile_group
  has_many :finishes, as: :finished_item, dependent: :destroy

  def price_validation
    errors.add(:price, "should be at least 0.01") if price.nil? || price < 0.01
  end
end
