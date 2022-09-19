class ReservationSearch < Searchlight::Search
    def base_query
      Reservation.all
    end
end
