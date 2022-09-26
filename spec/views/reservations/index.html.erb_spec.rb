require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    @reservations = FactoryBot.create_list(:reservation, 2)
  end

  it "renders a list of reservations" do
    render
    # assert_select "tr>td", text: "Booking Date".to_s, count: 2
    # assert_select "tr>td", text: "Return Date".to_s, count: 2
    # assert_select "tr>td", text: "Booking Status".to_s, count: 2
    # assert_select "tr>td", text: nil.to_s, count: 2
    # assert_select "tr>td", text: nil.to_s, count: 2
  end
end
