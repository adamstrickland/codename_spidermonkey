class Participant < ActiveRecord::Base
  belongs_to :division
  has_many :policies
end
