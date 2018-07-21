FactoryBot.define do
  factory :runway_model do
    name { Faker::HeyArnold.character }
    mantra { Faker::HeyArnold.quote }
    photo_url { Faker::Internet.url }
  end
end
