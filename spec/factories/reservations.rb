FactoryBot.define do
  factory :reservation do
    booking_date { Faker::Date.forward(days: 0) }
    return_date { Faker::Date.forward(days: 5) }
    booking_status { [0,1,2].sample }
    association(:book)
    association(:user)
  end
end
