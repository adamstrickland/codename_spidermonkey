class Coverage < ActiveRecord::Base
  belongs_to :plan
  belongs_to :division
  has_and_belongs_to_many :brokers
  has_one :contract
  has_many :policies
end
