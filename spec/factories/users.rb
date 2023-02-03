# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    role { 1 }
    password { 123_456 }
    password_confirmation { 123_456 }
  end
end
