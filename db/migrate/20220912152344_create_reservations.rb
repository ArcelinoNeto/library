# frozen_string_literal: true

# This class creates a table called reservations with the columns booking_date, return_date,
# booking_status, book_id, and user_id
class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :booking_date
      t.string :return_date
      t.integer :booking_status
      t.references :book, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
