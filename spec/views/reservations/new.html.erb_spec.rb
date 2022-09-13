require 'rails_helper'

RSpec.describe "reservations/new", type: :view do
  before(:each) do
    assign(:reservation, Reservation.new(
      booking_date: "MyString",
      return_date: "MyString",
      booking_status: "MyString",
      book: nil,
      user: nil
    ))
  end

  it "renders new reservation form" do
    render

    assert_select "form[action=?][method=?]", reservations_path, "post" do

      assert_select "input[name=?]", "reservation[booking_date]"

      assert_select "input[name=?]", "reservation[return_date]"

      assert_select "input[name=?]", "reservation[booking_status]"

      assert_select "input[name=?]", "reservation[book_id]"

      assert_select "input[name=?]", "reservation[user_id]"
    end
  end
end
