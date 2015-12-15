class Finish < ActiveRecord::Base
  belongs_to :finished_item, polymorphic: true

  def label
    "#{self.category}-#{self.series_no}-#{self.finish}"
  end
end
