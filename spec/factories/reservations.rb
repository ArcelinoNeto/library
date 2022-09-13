FactoryBot.define do
  factory :reservation do
    booking_date { "MyString" }
    return_date { "MyString" }
    booking_status { "MyString" }
    book { nil }
    user { nil }
  end
end
