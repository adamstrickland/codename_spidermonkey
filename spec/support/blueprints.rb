require 'machinist/active_record'
require 'sham'

Carrier.blueprint do
  name{ Faker::Company.name }
end

Plan.blueprint do
  name{ Faker::Lorem.words(3).join }
  line_of_coverage{ 'Medical' }
  carrier
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
end

Payment.blueprint do
  participant
  amount{ (((rand * (10 ** (5 + rand(5)))).floor) / 10) }
end
