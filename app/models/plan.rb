class Plan < ActiveRecord::Base
  belongs_to :carrier
  has_many :coverages
end
