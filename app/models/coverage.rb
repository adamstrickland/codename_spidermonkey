class Coverage < ActiveRecord::Base
  belongs_to :plan
  belongs_to :division
  has_and_belongs_to_many :brokers
  has_one :contract
  has_many :policies
  
  def name
    "#{self.plan.full_name} for #{self.division.full_name}"
  end
  
  def line_of_coverage
    self.plan.line_of_coverage
  end
  
  def configured?
    self.contract.present?
  end
  
  def unconfigured?
    !self.configured?
  end
  
  def self.configured
    self.all.select{|c| c.configured? }
  end
  
  def self.unconfigured
    self.all.select{|c| c.unconfigured? }
  end
end
