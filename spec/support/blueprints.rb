require 'machinist/active_record'
require 'sham'

Sham.define{
  group_number{ "%010d" % rand(100000000) }
  policy_number{ "%010d" % rand(100000000) }
}

Carrier.blueprint do
  name{ Faker::Company.name }
end

Plan.blueprint do
  name{ Faker::Lorem.words(3).join }
  line_of_coverage{ 'Medical' }
  carrier
end

Plan.blueprint(:dental) do
  line_of_coverage{ 'Dental' }
end

Plan.blueprint(:vision) do
  line_of_coverage{ 'Vision' }
end

Group.blueprint do
  name{ Faker::Company.name }
end

Division.blueprint do
  name{ "Division #{rand(2)}"}
  group
end

Division.blueprint(:only) do
  name{ "Corporate" }
  group
end

Coverage.blueprint do
  plan
  division
  number{ Sham.group_number }
end

Broker.blueprint do
  name{ Faker::Company.name }
end

Participant.blueprint do
  name{ "#{Faker::Name.first_name} #{Faker::Name.last_name}" }
  ssn{ (1..10).map{ rand(10) }.join }
end

Policy.blueprint do
  participant
  coverage
  number{ Sham.policy_number }
end

Payment.blueprint do
  participant
  amount{ (((rand * (10 ** (5 + rand(5)))).floor) / 10) }
end
