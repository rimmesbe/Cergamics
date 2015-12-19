class Finish < ActiveRecord::Base
  belongs_to :finished_item, polymorphic: true

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def label
    "#{self.category}-#{self.series_no}-#{self.finish}"
  end
end
