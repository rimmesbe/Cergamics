class HousePlaque < ActiveRecord::Base
  has_many :finishes, as: :finished_item, dependent: :destroy
end
