json.extract! book, :id, :title, :description, :category, :author, :publication_date, :publishing_company, :created_at, :updated_at
json.url book_url(book, format: :json)
