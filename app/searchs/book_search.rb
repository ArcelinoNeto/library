class BookSearch < Searchlight::Search
    def base_query
      Book.all
    end
end
