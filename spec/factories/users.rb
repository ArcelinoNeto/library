FactoryBot.define do
  factory :user do
    password = Faker::Internet.password(min_length: 8)
    name { Faker::Name.name }
    email { Faker::Internet.email }
    role { 1 }
    password { password }
    password_confirmation { password }
  end
end
