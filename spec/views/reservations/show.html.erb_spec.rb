# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'reservations/show', type: :view do
  before(:each) do
    @reservation = FactoryBot.create(:reservation)
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Booking date/)
    expect(rendered).to match(/Return date/)
    expect(rendered).to match(/Booking status/)
    expect(rendered).to match(/Book/)
    expect(rendered).to match(/User/)
  end
end
