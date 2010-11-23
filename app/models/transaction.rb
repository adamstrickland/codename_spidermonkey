class Transaction < ActiveRecord::Base
  has_many :payments
end
