require 'rails_helper'

RSpec.describe "users/index.html.erb", type: :view do
  before(:each) do
    assign(:users, [
      Reservation.create!(
        email: "Booking Date",
        return_date: "Return Date",
        booking_status: "Booking Status",
        book: nil,
        user: nil
      ),
      Reservation.create!(
        booking_date: "Booking Date",
        return_date: "Return Date",
        booking_status: "Booking Status",
        book: nil,
        user: nil
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", text: "Booking Date".to_s, count: 2
    assert_select "tr>td", text: "Return Date".to_s, count: 2
    assert_select "tr>td", text: "Booking Status".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
