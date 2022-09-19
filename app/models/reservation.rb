class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates_presence_of :booking_date, on: :create
  validates_presence_of :return_date, on: :create
  validates_presence_of :booking_status, on: :create
end
