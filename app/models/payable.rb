class Payable < ActiveRecord::Base
  belongs_to :statement
  belongs_to :payment
end
