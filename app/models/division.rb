class Division < ActiveRecord::Base
  belongs_to :group
  has_many :coverages
  has_many :participants
  
  def full_name
    "#{self.group.name} - #{self.name}"
  end
end
