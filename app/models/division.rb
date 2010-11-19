class Division < ActiveRecord::Base
  belongs_to :group
  has_many :coverages
end
