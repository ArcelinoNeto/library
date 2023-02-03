# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it { is_expected.to belong_to :book }
  it { is_expected.to belong_to :user }

  it { is_expected.to validate_presence_of(:booking_date) }
  it { is_expected.to validate_presence_of(:return_date) }
  it { is_expected.to validate_presence_of(:booking_status) }
end
