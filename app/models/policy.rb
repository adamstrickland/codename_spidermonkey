class Policy < ActiveRecord::Base
  belongs_to :coverage
  belongs_to :participant
end
