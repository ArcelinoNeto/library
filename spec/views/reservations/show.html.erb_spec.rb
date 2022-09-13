require 'rails_helper'

RSpec.describe "reservations/show", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      booking_date: "Booking Date",
      return_date: "Return Date",
      booking_status: "Booking Status",
      book: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Booking Date/)
    expect(rendered).to match(/Return Date/)
    expect(rendered).to match(/Booking Status/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
