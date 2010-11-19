class Statement < ActiveRecord::Base
  has_many :payables
  belongs_to :broker
  belongs_to :carrier
end
