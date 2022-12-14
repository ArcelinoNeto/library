FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    role { 1 }
    password { 123456 }
    password_confirmation { 123456 }
  end
end
