class Payment < ActiveRecord::Base
  belongs_to :transaction
  belongs_to :payable
  belongs_to :payee
  belongs_to :split
end
