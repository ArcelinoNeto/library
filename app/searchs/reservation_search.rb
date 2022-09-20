class ReservationSearch < Searchlight::Search
    def base_query
      Reservation.all
    end

    def search_book_id
      query.where(book_id: options[:book_id])
    end
    
    def search_book_title
      entry_title = options[:book_title]
      query.joins(:book).where('title LIKE ?', "%#{entry_title}%" )
    end

    def search_user_id
      query.where(book_id: options[:book_id])
    end

    def search_user_name
      entry_name = options[:user_name]
      query.joins(:user).where('name LIKE ?', "%#{entry_name}%" )
    end
end
