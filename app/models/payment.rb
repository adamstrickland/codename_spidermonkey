class Payment < ActiveRecord::Base
  has_many :payables
end
