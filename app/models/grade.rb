class Grade < ActiveRecord::Base
  belongs_to :contract
  has_many :splits
end
