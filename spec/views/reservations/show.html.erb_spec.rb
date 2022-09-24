require 'rails_helper'

RSpec.describe "reservations/show", type: :view do
  before(:each) do
    # @reservation = FactoryBot.create(:reservation)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Booking Date/)
    expect(rendered).to match(/Return Date/)
    expect(rendered).to match(/Booking Status/)
    expect(rendered).to match(/book/)
    expect(rendered).to match(//)
    
    binding.pry
    
  end
end
