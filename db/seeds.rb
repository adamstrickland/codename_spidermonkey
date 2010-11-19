# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

require File.join(Rails.root, 'spec', 'support', 'blueprints')

# 10.times{ 
#   Participant.make
# }

locs = %w(Medical Dental Vision)

groups = (0..rand(10)).map{ 
  group = Group.make
  divisions = (0..rand(3)).map{ 
    division = Division.make(:group => group) 
    (0..rand(100)).map{ Participant.make(:division => division) }
    division
  }
  group
}

carriers = (0..4).map{
  carrier = Carrier.make
  plans = locs.map{|loc| (0..rand(5)).map{ Plan.make(:line_of_coverage => loc, :carrier => carrier) }}.flatten
  carrier
}

brokers = (1..10).map{ Broker.make }

coverages = groups.map{ |group|
  group.divisions.map{ |div|
    carriers.rand.plans.map{ |plan|
      Coverage.make({
        :division => div,
        :brokers => [brokers.rand],
        :plan => plan
      })
    }
  }.flatten
}.flatten

participants = groups.map{ |g| g.divisions.map{ |d| d.participants }.flatten }.flatten

policies = participants.map{ |participant|
  participant.division.coverages.map{ |coverage|
    Policy.make({
      :coverage => coverage,
      :participant => participant
    })
  }
}

puts "Results:"
%w(Group Division Carrier Plan Participant Policy Coverage Broker).each do |w|
  puts "  #{w.constantize.send(:count)} #{w.pluralize}"
end