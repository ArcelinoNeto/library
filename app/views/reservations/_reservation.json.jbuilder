# frozen_string_literal: true

json.extract! reservation, :id, :booking_date, :return_date, :booking_status, :book_id, :user_id, :created_at,
              :updated_at
json.url reservation_url(reservation, format: :json)
