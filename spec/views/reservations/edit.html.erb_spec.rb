require 'rails_helper'

RSpec.describe "reservations/edit", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      booking_date: "MyString",
      return_date: "MyString",
      booking_status: [0,1,2].sample,
      book: '1',
      user: '1'
    ))
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(@reservation), "post" do

      assert_select "input[name=?]", "reservation[booking_date]"

      assert_select "input[name=?]", "reservation[return_date]"

      assert_select "input[name=?]", "reservation[booking_status]"

      assert_select "input[name=?]", "reservation[book_id]"

      assert_select "input[name=?]", "reservation[user_id]"
    end
  end
end
