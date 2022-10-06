require "searchlight/adapters/action_view"

class UserSearch < Searchlight::Search
  include Searchlight::Adapters::ActionView

  def base_query
    User.all
  end

  def search_order_name
    if order_name == 1
     query
    else
     query.order(name: :asc)
    end
  end

  def search_id
    query.where(id: options[:id])
  end
  
  def search_name
    entry_name = options[:name]
    query.where('name ILIKE ?', "%#{entry_name}%" )
  end

  def search_created_above
    entry_date = options[:created_above]
    converted_date = entry_date.to_date
    query.where('created_at >= ?', "%#{converted_date}%")
  end

  def search_created_less
    entry_date = options[:created_less]
    converted_date = entry_date.to_date
    query.where('created_at <= ?', "%#{converted_date}%")
  end

  def search_role
    query.where(role: options[:role])
  end
end
