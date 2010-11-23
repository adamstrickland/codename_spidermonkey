class Payable < ActiveRecord::Base
  belongs_to :statement
  belongs_to :payee
  has_many :payments
end
