class Broker < ActiveRecord::Base
  has_and_belongs_to_many :coverages
  has_many :statements
end
