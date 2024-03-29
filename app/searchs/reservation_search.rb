# frozen_string_literal: true

require 'searchlight/adapters/action_view'

# It's a class that inherits from Searchlight::Search and includes Searchlight::Adapters::ActionView
class ReservationSearch < Searchlight::Search
  include Searchlight::Adapters::ActionView

  def base_query
    Reservation.all
  end

  def search_order_by
    case order_by
    when 'Book Title'
      query.joins(:book).order(title: :asc)
    when 'Created_at'
      query.order(:created_at)
    when 'User Name'
      query.joins(:user).order(name: :asc)
    end
  end

  def search_id
    query.where(id: options[:id])
  end

  def search_book_title
    entry_title = options[:book_title]
    query.joins(:book).where('title ILIKE ?', "%#{entry_title}%")
  end

  def search_user_name
    entry_name = options[:user_name]
    query.joins(:user).where('name ILIKE ?', "%#{entry_name}%")
  end

  def search_booking_date_above
    entry_date = options[:booking_date_above]
    converted_date = entry_date.to_date
    query.where('booking_date >= ?', converted_date.to_s)
  end

  def search_booking_date_less
    entry_date = options[:booking_date_less]
    converted_date = entry_date.to_date
    query.where('booking_date <= ?', converted_date.to_s)
  end

  def search_return_date_above
    entry_date = options[:return_date_above]
    converted_date = entry_date.to_date
    query.where('return_date >= ?', converted_date.to_s)
  end

  def search_return_date_less
    entry_date = options[:return_date_less]
    converted_date = entry_date.to_date
    query.where('return_date <= ?', converted_date.to_s)
  end

  def search_created_above
    entry_date = options[:created_above]
    converted_date = entry_date.to_date
    query.where('created_at >= ?', converted_date.to_s)
  end

  def search_created_less
    entry_date = options[:created_less]
    converted_date = entry_date.to_date
    query.where('created_at <= ?', converted_date.to_s)
  end

  def search_booking_status
    query.where(booking_status: options[:booking_status])
  end
end
