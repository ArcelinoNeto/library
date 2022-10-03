class ReservationSearch < Searchlight::Search
  def base_query
    Reservation.all.order(:id)
  end

  def search_book_id
    query.where(book_id: options[:book_id])
  end
  
  def search_book_title
    entry_title = options[:book_title]
    query.joins(:book).where('title ILIKE ?', "%#{entry_title}%" )
  end

  def search_user_id
    query.where(book_id: options[:book_id])
  end

  def search_user_name
    entry_name = options[:user_name]
    query.joins(:user).where('name ILIKE ?', "%#{entry_name}%" )
  end

  def search_booking_date_above
    entry_date = options[:booking_date_above]
    converted_date = entry_date.to_date
    query.where('booking_date >= ?', "%#{converted_date}%")
  end

  def search_booking_date_less
    entry_date = options[:booking_date_less]
    converted_date = entry_date.to_date
    query.where('booking_date <= ?', "%#{converted_date}%")
  end

  def search_return_date_above
    entry_date = options[:return_date_above]
    converted_date = entry_date.to_date
    query.where('return_date >= ?', "%#{converted_date}%")
  end

  def search_return_date_less
    entry_date = options[:return_date_above]
    converted_date = entry_date.to_date
    query.where('return_date <= ?', "%#{converted_date}%")
  end
  
  def search_created_at_above
    entry_date = options[:created_at_above]
    converted_date = entry_date.to_date
    query.where('created_at >= ?', "%#{converted_date}%")
  end

  def search_created_less
    entry_date = options[:created_less]
    converted_date = entry_date.to_date
    query.where('created_at <= ?', "%#{converted_date}%")
  end

  def search_booking_status
    entry_booking_status = options[:booking_status]
    query.where('booking_status ILIKE ?', "%#{entry_booking_status}%" )
  end
end
