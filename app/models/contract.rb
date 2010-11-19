class Contract < ActiveRecord::Base
  belongs_to :coverage
  has_many :grades
end
