class Payee < ActiveRecord::Base
  belongs_to :broker
  belongs_to :carrier
  has_many :splits
  has_many :payments
  has_many :payables
end
