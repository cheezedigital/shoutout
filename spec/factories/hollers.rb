# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :holler do
    message { Faker::BaconIpsum.words.join(', ')}
    user_id { Faker::Internet.user_id }
  end
end
