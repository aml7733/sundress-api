FactoryBot.define do
  factory :user do
    name { Faker::HeyArnold.character }
    email { Faker::Internet.email }
    password_digest { Faker::Internet.password }
  end
end
