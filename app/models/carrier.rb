class Carrier < ActiveRecord::Base
  has_many :plans
  has_many :statements
end
