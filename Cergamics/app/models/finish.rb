class Finish < ActiveRecord::Base
  belongs_to :finished_item, polymorphic: true
end
