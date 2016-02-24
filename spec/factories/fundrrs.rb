FactoryGirl.define do
  factory :fundrr do
    title       { 'the ' + Faker::Hacker.adjective + ' school of software & design' }
    description { Faker::Lorem.paragraph }
    start_date  { Faker::Date.between(Date.today, 7.days.from_now) }
    duration    { '90 days' }
    fundrr_goal { '20000' }
  end
end