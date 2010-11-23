class Plan < ActiveRecord::Base
  belongs_to :carrier
  has_many :coverages
  
  def full_name
    "#{self.name} [#{self.carrier.name} #{self.line_of_coverage}]"
  end
end
