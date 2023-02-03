# frozen_string_literal: true

# A Reservation belongs to a Book and a User, and has a booking_date, return_date, and booking_status
class Reservation < ApplicationRecord
  enum booking_status: %i[available borrowed late]
  paginates_per 20
  belongs_to :book
  belongs_to :user

  validates_presence_of :booking_date, on: :create
  validates_presence_of :return_date, on: :create
  validates_presence_of :booking_status, on: :create
end
