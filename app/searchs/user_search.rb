# frozen_string_literal: true

require 'searchlight/adapters/action_view'

# The UserSearch class inherits from Searchlight::Search and includes
# Searchlight::Adapters::ActionView. It has a base_query method that returns all users, and a bunch of
# search methods that return a subset of users based on the options passed in.
class UserSearch < Searchlight::Search
  include Searchlight::Adapters::ActionView

  def base_query
    User.all
  end

  def search_order_by
    case order_by
    when 'Name'
      query.order(name: :asc)
    when 'Created_at'
      query.order(:created_at)
    end
  end

  def search_id
    query.where(id: options[:id])
  end

  def search_name
    entry_name = options[:name]
    query.where('name ILIKE ?', "%#{entry_name}%")
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

  def search_role
    query.where(role: options[:role])
  end
end
