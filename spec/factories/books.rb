FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    description { Faker::Marketing.buzzwords }
    category { Faker::Book.genre }
    author { Faker::Book.author }
    puclication_date { Faker::Date.birthday(min_age: 1, max_age: 65) }
    publishing_company { Faker::Book.publisher }
  end
end
