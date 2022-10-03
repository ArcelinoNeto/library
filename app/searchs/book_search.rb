require "searchlight/adapters/action_view"

class BookSearch < Searchlight::Search
  include Searchlight::Adapters::ActionView

  def base_query
    Book.all.order(:id)
  end

  def search_id
    query.where(id: options[:id])
  end
  
  def search_title
    entry_title = options[:title]
    query.where('title ILIKE ?', "%#{entry_title}%" )
  end

  def search_category
    entry_category = options[:category]
    query.where('category ILIKE ?', "%#{entry_category}%" )
  end

  def search_author
    entry_author = options[:author]
    query.where('author ILIKE ?', "%#{entry_author}%" )
  end

  def search_puclication_date_above
    entry_date = options[:puclication_date_above]
    converted_date = entry_date.to_date
    query.where('puclication_date >= ?', "%#{converted_date}%")
  end

  def search_puclication_date_less
    entry_date = options[:puclication_date_less]
    converted_date = entry_date.to_date
    query.where('puclication_date <= ?', "%#{converted_date}%")
  end

  def search_publishing_company
    entry_publishing_company = options[:publishing_company]
    query.where('publishing_company ILIKE ?', "%#{entry_publishing_company}%" )
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
end
