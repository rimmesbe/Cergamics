class Tile < ActiveRecord::Base
  belongs_to :tile_group
  has_many :finishes, as: :finished_item, dependent: :destroy

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


  validates :name, presence: true
end
